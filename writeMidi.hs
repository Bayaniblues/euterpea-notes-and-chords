import Euterpea
import Euterpea.IO.MIDI.ToMidi2
m = instrument (CustomInstrument "Flute A") (c 4 qn :+: d 4 qn) :=:
    instrument (CustomInstrument "Flute B") (c 5 qn) :=:
    instrument HonkyTonkPiano (rest hn :+: c 4 hn)
main = writeMidi2 "test.mid" m
