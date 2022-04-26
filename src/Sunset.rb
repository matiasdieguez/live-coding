live_loop :chords do
  use_synth :blade #:hoover
  play chord(:e2, :major), attack: 0.2, release: 4
  sleep 4
  #play chord(:a2, :major), attack: 0.2, release: 4
  #sleep 4
  #play chord(:b2, :major), attack: 0.2, release: 4
  #sleep 4
  #play chord(:fs2, :minor7), attack: 0.2, release: 4
  #sleep 4
end

live_loop :bd do
  #sample :bd_haus
  sleep 0.5
  #sample :sn_dub, amp: 0.5
  #sleep 0.5
end

live_loop :tek_2 do
  #sample :bd_haus
  sleep 1.75
end

live_loop :bass_echo do
  with_fx :echo do
    use_synth :dtri
    #play :e2
    sleep 2
    #play :a2
    sleep 2.25
    #play :a2
    sleep 0.25
    #play :b2, amp: 0.2
  end
end

live_loop :arp do
  with_fx :echo do
    with_fx :whammy do
      use_synth :hollow
      sleep 16
      #play_pattern_timed chord(:E4, :major), 1, attack: 0.3
    end
  end
end