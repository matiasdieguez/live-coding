# Micro Sound Rising
# by Matías Dieguez

# guitar_fx = "Coronado Blues"

# beats 2x(1), 2x(2), 2x(1,2)
# bass 1x(1), 8x(2)
# pad sleep 3.4 after & 48 before

loop_sleep = 6.86

live_loop :beats do
  2.times do
    sample :msr_beats_1
    sleep loop_sleep
  end
  2.times do
    sample :msr_beats_2
    sleep loop_sleep
  end
  2.times do
    sample :msr_beats_1
    sample :msr_beats_2
    sleep 6.86
  end
end

live_loop :pad do
  sleep 3.4
  sample :msr_pad
  sleep 48
end

live_loop :bass do
  1.times do
    sample :msr_bass_1
    sleep loop_sleep
  end
  8.times do
    sample :msr_bass_2
    sleep loop_sleep
  end
end