# John the Revelator
# Traditional - by Mat

# Drums with dot-net-beats

# GuitarFX: Coronado Blues

use_bpm 54

live_loop :drums do
  #sample :bd_haus
  sleep 1
  #sample :perc_snap
  sleep 1
end

live_loop :bass do
  use_synth :fm
  play :c2
  sleep 1
  play :c2
  sleep 1
  play :c2
  sleep 1
  play :as2
  sleep 1
end

live_loop :chords do
  with_fx :reverb do
    use_synth :prophet
    #play chord(:c2, 'minor'), release: 1.1
    sleep 1
    #play chord(:c2, 'minor'), release: 1.1
    sleep 1
    #play chord(:c2, 'minor'), release: 1.1
    sleep 1
    #play chord(:as2, 'major'), release: 2, attack: 0.4
    sleep 1
  end
end

# Lyrics:

# Tell me Who's that writing, John the Revelator
# Tell me Who's that writing, John the Revelator
# Tell me Who's that writing, John the Revelator
# Wrote the book of the seven seals

# Tell me who is that coder, Carlo the Beatus
# Tell me who is that coder, Carlo the Beatus
# Tell me who is that coder, Carlo the Beatus
# Wrote the site of the miracles
