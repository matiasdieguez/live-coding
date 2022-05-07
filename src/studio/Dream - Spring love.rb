# Dream / Amor de primavera
# by Mat / Tanguito

live_loop :beats do
  sample :bd_tek
  sleep 0.5
end

live_loop :cymbals do
  with_fx :echo, phase: 0.125, mix: 0.4 do
    sample  :drum_cymbal_soft, sustain: 0, release: 0.1
    sleep 1 #0.75 #0.5
  end
end

live_loop :pad do
  use_synth :hollow
  #play chord(:c3, :major7), amp: 6, release: 4 #8
  sleep 4
  #play chord(:f3, :major7), amp: 6, release: 4 #8
  sleep 4
end

live_loop :notes do
  with_fx :echo do
    use_synth :sine
    notes = (scale :e3, :minor_pentatonic, num_octaves: 3)
    16.times do
      #play notes.choose, release: 0.1, cutoff: rrand(70, 120), amp: 0.7
      sleep 0.125 
    end
  end
end