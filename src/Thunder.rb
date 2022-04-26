# Thunder, by Imagine Dragons. Coded by Kevin Olson
# From https://github.com/olsonk/sonic-pi-projects/blob/master/Thunder%20by%20Imagine%20Dragons
# Forked by Mat

use_bpm 90

with_fx :reverb, room: 1 do
  live_loop :beat do
    #1
    sample :drum_bass_hard
    sleep 0.75
    sample :drum_bass_hard
    sleep 0.25
    
    #2
    sample :perc_snap
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.5
    
    #3
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.5
    
    #4
    sample :perc_snap
    sleep 1
  end
end

with_fx :reverb, room: 0.99 do
  with_fx :distortion, distort: 0.8 do
    live_loop :stomp, delay: 24 do
      sleep 7
      3.times do
        sample :bd_haus, amp: 1
        sleep 0.5
      end
      sleep 3.5
    end
  end
end

live_loop :bass do
  use_synth :fm
  bass = ring(48, 48, 41, 41).tick
  #1
  play bass
  sleep 0.75
  play bass
  sleep 0.25
  
  #2
  play bass
  sleep 0.5
  play bass
  sleep 0.5
  
  #3
  sleep 0.25
  play bass
  sleep 0.25
  play bass
  sleep 0.5
  
  #4
  play bass
  sleep 1
end