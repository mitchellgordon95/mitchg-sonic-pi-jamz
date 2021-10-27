live_loop :arppeg do
  use_synth :subpulse
  play (chord :E4, :M7).tick, amp: 0.5
  sleep 1
end

sleep 8

live_loop :beats do
  sample :bd_haus
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
end

live_loop :melody do
  use_synth :pretty_bell
  play_pattern_timed [:E4, :Fs4, :Ds4, :D4, :Ds4], [1.5, 0.5, 1, 0.5, 0.5, 0.5], sustain: 0.3, release: 0.1, amp: 1
end
