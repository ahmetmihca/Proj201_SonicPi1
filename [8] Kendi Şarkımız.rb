use_bpm 130
use_debug false


live_loop :kick do
  sample :bd_haus , cutoff: rrand(60,120)
  sleep 0.5
  sample :bd_haus , cutoff: rrand(60,120)
  sleep 0.25
  sample :bd_haus , cutoff: rrand(60,120)
  sleep 0.75
  sample :bd_haus , cutoff: rrand(60,120)
  sleep 0.5
  sample :bd_haus , cutoff: rrand(60,120)
  sleep 2
end

live_loop :snare do
  sleep 0.75
  sample :perc_snap , pan: 0.4
  sample :perc_snap2, pan: -0.4
  sleep 3.25
end

with_fx :reverb, mix: 0.6 do
  with_fx :echo, mix: 0.3 do
    live_loop :kord do
      use_synth :fm
      play chord(:a3,:minor), release: 3
      sleep 4
      play chord(:g3,:major), release: 3
      sleep 4
      play chord(:f3,:major), release: 3
      sleep 6
      play chord(:f3,:major), attack: 0.1, attack_level: 1 ,decay: 0 ,decay_level: 0
      sleep 1
      play chord(:g3,:major), attack: 0.1, attack_level: 1 ,decay: 0 ,decay_level: 0
      sleep 1
    end
    live_loop :lead do
      2.times do
        use_synth :dtri
        play_pattern_timed scale(:a3, :harmonic_minor), 1, amp: 0.2
      end
      use_bpm 130
      play :c4
      sleep 0.5
      play :b3
      sleep 0.5
      play :a3, release: 2.5
      sleep 3
      #
      play :c
      sleep 0.5
      play :b3
      sleep 0.5
      play :c
      sleep 0.5
      play :d
      sleep 0.5
      play :b3 ,release: 1.5
      sleep 2
      #
      play :g3
      sleep 0.25
      play :a3
      sleep 0.25
      play :b3
      sleep 1
      play :c , release: 3
      sleep 2.50
      #
      play :c
      sleep 1
      play :e
      sleep 0.5
      play :c
      sleep 0.5
      play :a3 , release: 1.5
      sleep 2
      #
      play :a4 ,release: 2
      sleep 2.5
      play :g4
      sleep 0.5
      play :f4
      sleep 0.5
      play :e4
      sleep 0.5
      #
      play :c3
      sleep 0.5
      play :b3
      sleep 0.5
      play :c3
      sleep 0.5
      play :d3
      sleep 0.5
      play :b3
      sleep 2
      #
      play :g3
      sleep 0.5
      play :a3
      sleep 0.5
      play :b3
      sleep 1
      play :c
      sleep 1
      play :e
      sleep 0.5
      play :c
      sleep 0.5
      #
      play :a3
      sleep 4
      2.times do
        play_pattern_timed scale(:a4, :harmonic_minor), 1, amp: 0.2
      end
    end
  end
end
