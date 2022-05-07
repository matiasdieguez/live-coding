# Build
# by Mat

use_random_seed 5187441
live_loop :rand_surfer do
  use_synth :dsaw
  notes_surf = (scale :a1, :minor_pentatonic, num_octaves: 2)
  16.times do
    play notes_surf.choose, release: 0.1, cutoff: rrand(70, 120)
    sleep 0.250
  end
end

live_loop :rand_high_surfer do
  with_fx :echo, phase: 0.125, decay: 8 do
    use_synth :prophet
    notes = (scale :a1, :minor_pentatonic, num_octaves: 5)
    16.times do
      play notes.choose, release: 0.1, cutoff: rrand(70, 120)
      sleep 0.5
    end
  end
end

live_loop :drum do
  sample :bd_haus
  sleep 0.5
end

live_loop :drum_four do
  sync :drum
  4.times do
    sample :bd_haus
    sleep 0.15
  end
  sleep 4
end

live_loop :drum_cymbal do
  sync :drum
  sample :drum_cymbal_soft, amp: 0.5 #:drum_cymbal_pedal
  sleep 0.15
end
