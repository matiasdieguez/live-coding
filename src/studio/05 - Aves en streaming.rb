# Aves en streaming
# by Matías Dieguez

# guitar_fx = "Coronado Blues Delay"

use_bpm 84
sample_amp = 4

live_loop :drums do
  with_fx :reverb do
      sample :bd_haus, amp: (sample_amp - 2)
      sleep 0.5
      sample :sn_generic, amp: 0.5
      sleep 0.5
  end
end

live_loop :cymbal do
  #sample :drum_cymbal_closed
  sleep 0.5 #0.25
end

live_loop :chords do
  use_synth :blade #:hoover
  #play chord(:e2, :major), attack: 0.2, release: 2, amp: sample
  sleep 4
  #play chord(:d2, :major), attack: 0.2, release: 2, amp: sample
  sleep 4
end

live_loop :bass do
    use_synth :dtri
    play :e2, release: 2, amp: sample
    sleep 4
    play :d2, release: 2, amp: sample
    sleep 4
end
