# The Audio Manifest
# By Mat

# bass
# tam_bass_1
# tam_bass_2

# beats
# tam_beats_1
# tam_beats_2

# pad
# tam_pad

live_loop :bass do
    16.times do
      sample :tam_bass_1
      sleep 4
    end
    16.times do
      sample :tam_bass_2
      sleep 4
    end
  end
  
  live_loop :beats do
    8.times do
      sample :tam_beats_1
      sleep 4
    end
    
    8.times do
      sample :tam_beats_2
      sleep 4
    end
  end
  
  live_loop :pad do
    sample :tam_pad
    sleep 16
  end