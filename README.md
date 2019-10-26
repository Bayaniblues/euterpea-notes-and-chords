euterpea notes and chords
===
This repository is still developing. 

The goal of this project is to build hundreds of midi files, we can accomplish this by defining all the notes, keys, chords, and progressions possible for euterpea, and then export them via ToMidi2 function. 

        TODO: Chord progression, Diminished Chords, augmented chords.

step 1
---

We can define notes explicitly like

        -- 3rd Octave --
        c3 = c 3 qn
        d3 = d 3 qn
        e3 = e 3 qn
        f3 = f 3 qn
        g3 = g 3 qn
        a3 = a 3 qn
        b3 = b 3 qn

The integer c is a note 
The integer 3 is the octave
and the integer qn is the note length quarter-note

It's great to have these notes as an easy to use variable to turn into chords, however, variables in haskell are immutable and this approch prevents us from changing note length, we will have to revise these methods in the future versions.


c
cs
df
d
ds
ef
e
f
fs
gf
g
gs
af
a
as
bf
b