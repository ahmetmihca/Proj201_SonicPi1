## Değişkenler ##
use_bpm = 120 # Müziğin hızını ayarlıyor


## Fonksiyonlar ##
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
      akor :a3, :min , 4
      akor :g3, :maj , 2
      akor :a3, :min , 2
      akor :c3, :maj , 2
      akor :g3, :maj , 2
      akor :a3, :min , 4
    end
    akor :g3, :maj , 4
    akor :d3, :maj , 4
    akor :a3, :min , 4
    akor :d3, :maj , 4
    akor :a3, :min , 4
    akor :g3, :maj , 4
    akor :f3, :maj , 2
    akor :g3, :maj , 2
    akor :a3, :min , 4
  end
end

## Melody ##
loop do
  2.times do
    #bar1#
    sleep beat
    saz :c5, 0.5
    saz :d5, 0.5
    saz :d5, 1
    saz :c5, 0.25
    saz :b4, 0.25
    saz :a4, 0.5
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















