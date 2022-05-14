# Dream
# by Mat

# GuitarFx: Coronado Clean Delay

live_loop :beats do
    sample :bd_tek
    with_fx :echo, phase: 0.125, mix: 0.4 do
      sample  :drum_cymbal_soft, sustain: 0, release: 0.1
      sleep 1 #0.5
    end
  end
  
  live_loop :pad do
    use_synth :hollow
    play chord(:a3, :major), amp: 6, release: 4 #8
    sleep 4
    play chord(:d3, :major), amp: 6, release: 4 #8
    sleep 4
  end
  
  live_loop :notes do
    with_fx :echo do
      use_synth :fm
      notes = (scale :a1, :major_pentatonic, num_octaves: 4)
      4.times do
        #play notes.choose, release: 0.1, cutoff: rrand(70, 120), amp: 3
        sleep 1
      end
      
      notesD = (scale :d1, :major_pentatonic, num_octaves: 4)
      4.times do
        #play notesD.choose, release: 0.1, cutoff: rrand(70, 120), amp: 3
        sleep 1
      end
    end
  end