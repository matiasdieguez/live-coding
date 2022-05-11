# Aves en streaming
# by Mat

# Guitar  FX: Coronado Clean Delay

use_bpm 54 #64

live_loop :drums do
  with_fx :reverb do
      sample :bd_haus
      sleep 0.5
      sample :sn_generic, amp: 0.5
      sleep 0.5
  end
end

live_loop :cymbal do
  #sample :drum_cymbal_closed
  sleep 0.5 #0.25
end

live_loop :chords do
  use_synth :blade #:hoover
  #play chord(:e2, :major), attack: 0.2, release: 2
  sleep 4
  #play chord(:d2, :major), attack: 0.2, release: 2
  sleep 4
end

live_loop :bass do
    use_synth :dtri
    play :e2, release: 2
    sleep 4
    play :d2, release: 2
    sleep 4
end

# Lyrics:

# Con tantas aves que hay en streaming,
# muchas historias tejen sus redes
# Con tantas aves que hay en streaming,
# muchas historias tejen sus redes

# Nos refugiamos en nido virtual
# en esta epidemia de virus mundial
# En nido virtual...
# En nido virtual...
