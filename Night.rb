with_fx :reverb, room: 1 do
  live_loop :time do
    #synth :dtri, release: 8, note: :d1, cutoff: 90, amp: 5
    sleep 8
  end
end
live_loop :machine do
  #sample :loop_amen, rate: 0.5, finish: 0.25, amp: 5
  sample :loop_weirdo, beat_stretch: 4, amp: 3
  sleep 4
end
live_loop :kik do
  #sample :bd_sone, amp: 2
  sleep 0.5
end
with_fx :echo do
  live_loop :vortex do
    use_random_seed 365
    notes = (scale :d3, :minor_pentatonic, num_octaves: 3)
    16.times do
      #play notes.choose, release: 0.1, amp: 1.5
      sleep 0.125
    end
  end
end