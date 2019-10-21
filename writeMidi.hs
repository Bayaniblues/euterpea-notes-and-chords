import Euterpea
import Euterpea.IO.MIDI.ToMidi2

m = instrument (CustomInstrument "Flute A") (c 4 qn :+: d 4 qn) :=:
    instrument (CustomInstrument "Flute B") (c 5 qn) :=:
    instrument HonkyTonkPiano (rest hn :+: c 4 hn)

main = writeMidi2 "test.mid" m


-- midis to export
-- all notes from c3 - b6

-- all Major scales
-- all minor scales

-- major chords
-- minor chords

-- Major chord progressions
-- minor chord progressions

