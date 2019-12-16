## Variables ##
bpm = 120
beat = 0.5

## Functions ##
define :saz do |note, time|
  
  use_synth :saw
  play note
  sleep time
end

define :akor do |root, mode, lenght|
  with_fx :reverb, mix: 0.3 do
    use_synth :square
    play chord(root, mode) ,release: lenght
    sleep lenght
  end
end

## Chord Progresion ##
in_thread do
  loop do
    2.times do
      akor :a3, :min , 4*beat
      akor :g3, :maj , 2*beat
      akor :a3, :min , 2*beat
      akor :c3, :maj , 2*beat
      akor :g3, :maj , 2*beat
      akor :a3, :min , 4*beat
    end
    akor :g3, :maj , 4*beat
    akor :d3, :maj , 4*beat
    akor :a3, :min , 4*beat
    akor :d3, :maj , 4*beat
    akor :a3, :min , 4*beat
    akor :g3, :maj , 4*beat
    akor :f3, :maj , 2*beat
    akor :g3, :maj , 2*beat
    akor :a3, :min , 4*beat
  end
end

## Melody ##
loop do
  2.times do
    #bar1#
    sleep beat
    saz :c5, beat/2
    saz :d5, beat/2
    saz :d5, beat
    saz :c5, beat/4
    saz :b4, beat/4
    saz :a4, beat/2
    #bar2#
    saz :c5, beat/2
    saz :b4, beat
    saz :a4, beat/2
    saz :a4, beat/2
    saz :a4, beat*1.5
    #bar3#
    saz :e5, beat/2
    saz :d5, beat/2
    saz :e5, beat/2
    saz :c5, beat/2
    saz :d5, beat
    saz :c5, beat/4
    saz :b4, beat/4
    saz :a4, beat/2
    #bar4#
    saz :c5, beat/2
    saz :b4, beat
    saz :a4, beat/2
    saz :a4, beat/2
    saz :a4, beat*1.5
  end
  #bar5#
  sleep beat
  saz :fs5, beat/2
  saz :g5, beat/2
  saz :g5, beat/2
  saz :g5, beat*1.5
  #bar6#
  saz :g5, beat/2
  saz :fs5, beat
  saz :e5, beat/2
  saz :g5, beat/2
  saz :fs5, beat*1.5
  #bar7#
  saz :g5, beat/2
  saz :e5, beat
  saz :d5, beat/2
  saz :fs5, beat/2
  saz :e5, beat*1.5
  #bar8#
  saz :e5, beat/2
  saz :d5, beat/2
  saz :e5, beat/2
  saz :c5, beat/2
  saz :e5, beat/2
  saz :d5, beat*1.5
  #bar9#
  saz :d5, beat
  saz :c5, beat/4
  saz :b4, beat/4
  saz :a4, beat/2
  saz :d5, beat/2
  saz :b4, beat/2
  saz :c5, beat
  #bar10#
  saz :c5, beat/2
  saz :b4, beat/2
  saz :b4, beat/2
  saz :a4, beat/2
  saz :c5, beat/2
  saz :b4, beat*1.5
  #bar11#
  saz :b4, beat/2
  saz :a4, beat
  saz :g4, beat/2
  saz :b4, beat/2
  saz :a4, beat*1.5
  #bar12#
  saz :a4, beat*4
end















