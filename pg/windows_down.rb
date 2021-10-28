use_bpm 120

in_thread do
  4.times do
        sample :drum_bass_soft
        sleep 1
        sample :drum_bass_soft
        sleep 1
        sample :drum_bass_soft
        sleep 1
        sample :drum_bass_soft
        sleep 1
    end
end

# play 
live_loop :chords do
    sync :tick
    play chord(:E, :M7), sustain: 0.25, release: 1.5 # 63
    sleep 3.5
    play chord(:Fs, :M),  sustain: 0.25, release: 1.5 # 61
    sleep 4
    play chord(:B3, :M7),  sustain: 0.5, relase: 1.5 # 58
    sleep 3.5
    play chord(:Ds4, :m)  #56
    sleep 0.5
    play chord(:E4, :M) # 59
    sleep 2.49
end

live_loop :metronome do
  cue :tick
  sleep 4
end

sleep 16

live_loop :beats do
  sample :drum_bass_soft
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.5
  sample :drum_bass_soft
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.5
end

sleep 1

live_loop :melody do
    play_pattern_timed  [:Ds, :Fs, :Ds, :Cs, :Ds, :Cs, :B3, :B3], [1, 1, 1, 1, 0.5, 1, 1, 1.5], amp: 0.5, sustain: 0
end

sleep 11
live_loop :over_melody do
  sync :tick
  play_pattern_timed [:B5, :As5, :Fs5], [3.5, 4.5, 3], sustain: 2, release: 1, amp: 0.25
  play :Fs5, sustain: 0.5, release: 0, amp: 0.25
  sleep 0.5
  play :Gs5, sustain: 1, release: 1, amp: 0.25
  sleep 3
end
