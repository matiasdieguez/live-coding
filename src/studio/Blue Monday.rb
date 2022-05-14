## Blue Monday

## (c) 2019 rafamiga@gmail.com

use_bpm 130

live_loop :stopa do
  d = (knit 1,2,4,2,1,4).tick
  density d do
    sample :bd_haus, cutoff: 110, amp: 3
    sleep 1
  end
end

live_loop :bip do
  l = (knit 3,3,5,1,-2,3,0,1,0,8,).tick
  a = (ring 1.5,0.75)
  use_synth :saw
  with_fx :hpf, cutoff: rrand(70,90) do
    with_fx :echo, mix: 0.1, phase: 0.27 do
      #play :d4+l, decay: 0.1, release: 0.2, cutoff: rrand(120,131), amp: a.tick(:amp)
      sleep 0.5
    end
  end
end

live_loop :bas do
  use_synth :dsaw
  r = 0.24
  co = 111
  b = (ring :f1,:c1,:d1,:d1,:g1,:c1,:d1,:d1)
  tick
  2.times do
    play b.look, release: r*2, amp: 2, cutoff: co
    sleep 0.5
    play b.look+12, release: r, amp: 2, cutoff: co
    sleep 0.25
    play b.look+12, release: r, amp: 2, cutoff: co
    sleep 0.25
  end
end
