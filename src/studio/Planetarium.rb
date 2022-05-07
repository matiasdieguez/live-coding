# Planetarium
# Drums by Davids Fiddle
# Base by Mat

use_bpm 90

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
  with_fx :echo, decay: 6, phase: 0.25 do
    use_synth :dtri
    play chord(:d2, :minor)
    sleep 4
    play chord(:g2, :major)
    sleep 4
  end
end


live_loop :base2 do
  sync :base
  with_fx :echo, decay: 6, phase: 0.25 do
    use_synth :dtri
    play chord(:d3, :minor)
    sleep 4
    play chord(:g3, :major)
    sleep 4
  end
end


live_loop :base3 do
  sync :base
  with_fx :echo, decay: 6, phase: 0.25 do
    use_synth :dtri
    play chord(:d5, :minor)
    sleep 4
    play chord(:g5, :major)
    sleep 4
  end
end
