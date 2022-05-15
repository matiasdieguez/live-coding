# The Audio Manifest
# by Matías Dieguez

# guitar_fx = "Coronado Blues"

# bass 8x(1), 8x(2)
# beats 8x(1), 8x(2)
# pad

loop_amp = 3
loop_sleep = 4
pad_sleep = 16

live_loop :bass do
  8.times do
    sample :tam_bass_1, amp: loop_amp
    sleep loop_sleep
  end
  8.times do
    sample :tam_bass_2, amp: loop_amp
    sleep loop_sleep
  end
end

live_loop :beats do
  8.times do
    sample :tam_beats_1, amp: loop_amp
    sleep loop_sleep
  end
  8.times do
    sample :tam_beats_2, amp: loop_amp
    sleep loop_sleep
  end
end

live_loop :pad do
  sample :tam_pad, amp: loop_amp
  sleep pad_sleep
end