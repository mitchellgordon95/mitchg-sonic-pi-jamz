
live_loop :beats do
    use_bpm 100
    sample :drum_bass_soft
    sleep 1
end


live_loop :theme do
    use_synth :saw
    use_bpm 100
    play chord(:Cs, :M7)
    sleep 1.5
    play chord(:C, :M7)
    sleep 1.5
    play chord(:C, :m7)
    sleep 1.5
    play chord(:A3, :m7)
    sleep 3.5
end


in_thread do
    use_bpm 100
    use_synth :saw
    sync :theme
    sleep 6
    play_pattern_timed [:Ds, :F], [1,1], sustain: 0
    play :G, sustain: 3.5
    sleep 3.5
    use_bpm 100
    play_pattern_timed [:F, :Ds, :D, :C], [0.25, 0.25, 0.5, 1]
end
