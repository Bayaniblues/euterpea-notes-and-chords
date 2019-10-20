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

step 2
---

Build a piano

        piano = [c3, cs3, d3, ds3, e3, f3, fs3, g3, gs3, a3, as3, b3, c4, cs4, d4, ds4, e4, f4, fs4, g4, gs4, a4, as4, b4, c5, cs5, d5, ds5, e5, f5, fs5, g5, gs5, a5, as5, b5, c6, cs6, d6, ds6, e6, f6, fs6, g6, gs6, a6, as6, b6]

        playPiano = play $(instrument OrchestralHarp(line(piano))) 

        playPianoReverse = play $(instrument OrchestralHarp(line(reverse'(piano)))) 

Enable the file with 
        
        GHCI notes.hs

And call these functions

        playPiano

        playPianoReverse

Building a piano as a list enables us more freedom to modify this list with recursion

        re·cur·sion
        /rəˈkərZHən/
        nounMATHEMATICS•LINGUISTICS
        noun: recursion
        the repeated application of a recursive procedure or definition.
        a recursive definition.
        plural noun: recursions

In Haskell, Recursions are functions that calls itself, and are very useful in modifying and rebuilding arrays. learn more at http://learnyouahaskell.com/recursion

A useful recursion we can use is the reverse recursion, as explained in learnyouahaskell

        reverse' :: [a] -> [a]  
        reverse' [] = []  
        reverse' (x:xs) = reverse' xs ++ [x]  

        playPianoReverse = play $(instrument OrchestralHarp(line(reverse'(piano)))) 

This rebuilds our piano list and plays a reversed array of the modified piano.

Step 3
---
Build keys

Major key

        wholeStep, ws, halfStep, ws, ws, ws, hs

Static Typing and recursions are important in haskell. We can redefine typing by using 

        int2string :: Int -> String

Recursions are important in haskell, but not enough time to solve this recursively, when we can solve it explicitly.


Other notes

identify type with :type

