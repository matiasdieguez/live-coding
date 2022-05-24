# Liven up reggae
# by Matías Dieguez

# guitar_fx = "Coronado Dub"

use_bpm 70 
sample_amp = 0.5

live_loop :hihats do
  sample :drum_cymbal_closed, amp: 1, rate: 2 if one_in(2)
  sample :drum_cymbal_closed, amp: 1, rate: 1.5 if one_in(3)
  sleep 0.25
end

live_loop :snare do
  sleep 1
  sample :sn_dolf
  sleep 1
end

with_fx :compressor do
  live_loop :kick do
    sample :bd_haus, amp: 2
    sleep 0.5
    sample :bd_haus, amp: 2 if one_in(10)
    sleep 0.25
    sample :bd_haus, amp: 2 if one_in(4)
    sleep 0.25
  end
end

live_loop :base do
  with_fx :echo do
    use_synth :dtri
    #play chord(:g3, :minor), amp: sample_amp
    #play chord(:g2, :minor), amp: sample_amp
    sleep 4
    #play chord(:g3, :minor), amp: sample_amp
    #play chord(:g2, :minor), amp: sample_amp
    sleep 4
    #play chord(:c3, :minor), amp: sample_amp
    #play chord(:c2, :minor), amp: sample_amp
    sleep 4
    #play chord(:d3, :minor), amp: sample_amp
    #play chord(:d2, :minor), amp: sample_amp
    sleep 4
  end
end