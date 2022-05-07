# Midnight Blues
# by Mat

live_loop :chords do
  use_synth :blade
  play chord(:a2, :minor7), attack: 0, release: 8, amp: 3
  sleep 8
  play chord(:d2, :minor7), attack: 0, release: 8, amp: 3
  sleep 4
  play chord(:a2, :minor7), attack: 0, release: 8, amp: 3
  sleep 4
  play chord(:e2, :minor), attack: 0, release: 8, amp: 3
  sleep 2
  play chord(:d2, :minor), attack: 0, release: 8, amp: 3
  sleep 2
  play chord(:a2, :minor), attack: 0, release: 8, amp: 3
  sleep 4
end

live_loop :notes do
  with_fx :echo do
    use_synth :prophet
    notes = (scale :a3, :minor_pentatonic, num_octaves: 4)
    16.times do
      play notes.choose, release: 0.1, cutoff: rrand(70, 120)
      sleep 0.250
    end
  end
end

live_loop :drums do
  4.times do
    sample :drum_bass_soft
    2.times do
      sample :drum_cymbal_closed, rate: 2
      sleep 0.50
    end
    sample :elec_snare
    4.times do
      #sample :drum_tom_mid_soft
      sleep 0.250
    end
  end
end

