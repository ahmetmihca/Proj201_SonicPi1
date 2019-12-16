# Welcome to Sonic Pi v3.1

###############
## Variables ##
###############
use_bpm 144
#########################################

###############
## Functions ##
###############

define:lead do |note, time|
  with_fx :reverb do
    use_synth :pretty_bell
    play note
    sleep time
  end
end

define:akor do |root, mode, time|
  with_fx :reverb do
    use_synth :piano
    play chord(root, mode) , release: time, amp: 1.5
    sleep time
  end
end

#############################################

##########
##Chords##
##########
in_thread do
  akor :e3,:maj,2
  akor :e3,:maj,2.5
  akor :f3,:maj,1
  akor :d3,:min,1.5
  akor :e3,:maj,1
  akor :e3,:maj,1.5
  akor :e3,:maj,2
  akor :e3,:maj,2.5
  akor :e3,:maj,1
  akor :e3,:maj,1
  akor :e3,:maj,1
  akor :e3,:maj,0.5
  akor :e3,:maj,1
  2.times do
    2.times do
      akor :e3,:maj,2.5
      akor :f3,:maj,2.5
      akor :e3,:maj,2.5
      akor :e3,:maj,2.5
      akor :e3,:maj,2.5
      akor :f3,:maj,2.5
      akor :e3,:maj,1
      akor :f3,:maj,1.5
      akor :e3,:maj,1
      akor :e3,:maj,1.5
    end
    2.times do
      2.times do
        akor :f3,:maj,1
        akor :d3,:min,1.5
        akor :e3,:maj,1
        akor :e3,:maj,1.5
      end
      akor :f3,:maj,1
      akor :d3,:min,1.5
      akor :e3,:maj,1
      akor :e3,:maj,1.5
      akor :e3,:maj,1
      akor :e3,:maj,1.5
      akor :a3,:min,1
      akor :a3,:min,1.5
      akor :a3,:min,1
      akor :a3,:min,1
      akor :e3,:maj,3
      akor :f3,:maj,1
      akor :d3,:min,1.5
      akor :e3,:maj,1
      akor :e3,:maj,1.5
    end
    
  end
end
############################################

#########
##Leads##
#########
##bar1 9/8##
lead :e5, 0.25
lead :d5, 0.25
lead :e5, 0.5
lead :b4, 0.25
lead :a4, 0.25
lead :b4, 0.5
lead :gs4,0.25
lead :f4, 0.25
lead :gs4, 0.5
lead :gs4, 0.5
lead :f4, 0.5
lead :e4, 0.5
##bar2 10/8##
lead :f4, 0.5
lead :f4, 0.25
lead :e4, 0.25
lead :d4, 0.5
lead :d4, 0.5
lead :f4, 0.25
lead :e4, 0.25
lead :e4, 1
lead :gs4, 0.25
lead :a4, 0.25
lead :gs4, 0.25
lead :a4, 0.25
lead :b4, 0.5
##bar3 9/8##
lead :e5, 0.25
lead :d5, 0.25
lead :e5, 0.5
lead :b4, 0.25
lead :a4, 0.25
lead :b4, 0.5
lead :gs4,0.25
lead :f4, 0.25
lead :gs4, 0.5
lead :gs4, 0.5
lead :f4, 0.5
lead :e4, 0.5
##bar4 9/8##
lead :e4, 1
lead :gs4, 1
lead :b4, 1
lead :e5, 0.5
lead :e5, 1
2.times do
  2.times do
    ##bar5 10/8##
    lead :e5, 1
    lead :b4, 1.5
    lead :c5, 0.25
    lead :d5, 0.25
    lead :c5, 0.25
    lead :b4, 0.25
    lead :a4, 1.5
    ##bar6 10/8##
    lead :gs4, 0.75
    lead :f4, 0.25
    lead :gs4, 0.5
    lead :gs4, 0.5
    lead :a4, 0.5
    lead :b4, 1
    lead :e4, 0.25
    lead :f4, 0.25
    lead :gs4, 0.25
    lead :a4, 0.25
    lead :b4, 0.5
    ##bar7 10/8##
    lead :e5, 1
    lead :b4, 1.5
    lead :c5, 0.25
    lead :d5, 0.25
    lead :c5, 0.25
    lead :b4, 0.25
    lead :a4, 1.5
    ##bar8##
    lead :gs4, 1
    lead :f4, 1
    lead :d4, 0.5
    lead :e4, 1
    lead :a4, 0.25
    lead :b4, 0.25
    lead :gs4, 0.25
    lead :f4, 0.25
    lead :e4, 0.5
  end
  2.times do
    ##bar9##
    2.times do
      lead :f4, 0.5
      lead :f4, 0.25
      lead :e4, 0.25
      lead :d4, 0.5
      lead :d4, 0.5
      lead :f4, 0.25
      lead :e4, 0.25
      lead :e4, 1
      lead :gs4, 0.25
      lead :a4, 0.25
      lead :gs4, 0.25
      lead :a4, 0.25
      lead :b4, 0.5
    end
    ##bar10##
    lead :a4, 0.5
    lead :a4, 0.25
    lead :gs4, 0.25
    lead :f4, 0.5
    lead :f4, 0.5
    lead :a4, 0.25
    lead :gs4, 0.25
    lead :gs4, 1
    lead :e4, 0.25
    lead :f4, 0.25
    lead :gs4, 0.25
    lead :a4, 0.25
    lead :b4, 0.5
    ##bar11##
    lead :b4 ,0.5
    lead :b4 ,0.25
    lead :a4 ,0.25
    lead :gs4 ,0.5
    lead :gs4 ,0.5
    lead :b4 ,0.25
    lead :a4 ,0.25
    lead :a4 ,2.5
    ##bar12##
    lead :a4, 0.5
    lead :b4, 0.5
    lead :c5, 0.5
    lead :ds5, 0.5
    lead :e5, 0.5
    lead :b4, 0.25
    lead :c5, 0.25
    lead :b4, 0.25
    lead :a4, 0.25
    lead :gs4, 0.25
    lead :f4, 0.25
    lead :e4, 1
    ##bar13##
    lead :f4, 0.5
    lead :f4, 0.25
    lead :e4, 0.25
    lead :d4, 0.5
    lead :d4, 0.5
    lead :f4, 0.25
    lead :e4, 0.25
    lead :e4, 2.5
  end
end
############################################

