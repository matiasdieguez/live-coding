# Don't wanna fight no more
# by Alabama Shakes
# remixed by Mat

# db_haus; 0.75; sn_generic; 0.75
live_loop :drums do
  sample :bd_haus
  sleep 0.75
  sample :sn_generic
  sleep 0.75
end

# d2; 6; a2; ,release 4
live_loop :bass do
  use_synth :fm
  play :d2, release: 4
  sleep 6
  play :a2, release: 4
  sleep 6
end

# chord d3, minor; 6; chord a3 minor; 6; release: 4
live_loop :chords do
  
  #play chord(:d3, :minor), amp: 2, release: 4, attack: 0
  sleep 6
  #play chord(:a3, :minor), amp: 2, release: 4, attack: 0
  sleep 6
end

# fm/prophet 12(:d1; 0.25; d2;0.25); 12(:a1; 0.25; a2;0.25)
live_loop :octaved_bass do
  use_synth :fm
  12.times do
    #play :d1
    sleep 0.25
    #play :d2
    sleep 0.25
  end
  
  12.times do
    #play :a1
    sleep 0.25
    #play :a2
    sleep 0.25
  end
end

