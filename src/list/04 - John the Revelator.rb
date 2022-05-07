# John the Revelator
# Traditional - by Mat

# Drums with dot-net-beats
# Guitar with Coronado Blues

# Or....

comment do
    live_loop :drums do
        sample :bd_haus
        sleep 1
        sample :sn_generic
        sleep 1
    end
end
  
live_loop :bass do
    use_synth :fm
    play :c2
    sleep 1
    play :c2
    sleep 1
    play :c2
    sleep 1
    play :c2
    sleep 1
    play :as1
    sleep 1
end

