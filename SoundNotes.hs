import Euterpea
import Euterpea.IO.MIDI.ToMidi2


reverse' :: [a] -> [a]  
reverse' [] = []  
reverse' (x:xs) = reverse' xs ++ [x]  

-- Notes --

-- 3rd Octave --
c3 = c 3 wn
d3 = d 3 qn
e3 = e 3 qn
f3 = f 3 qn
g3 = g 3 qn
a3 = a 3 qn
b3 = b 3 qn

-- flats --
cf3 = cf 3 qn
df3 = df 3 qn
ef3 = ef 3 qn
ff3 = ff 3 qn
gf3 = gf 3 qn
af3 = af 3 qn
bf3 = bf 3 qn

-- sharps --
cs3 = cs 3 qn
ds3 = ds 3 qn
es3 = es 3 qn
fs3 = fs 3 qn
gs3 = gs 3 qn
as3 = as 3 qn
bs3 = bs 3 qn

-- test --

octFlat3 = line[ cf3, df3, ef3, ff3, gf3, af3, bf3]

oct3 = line[ c3, d3, e3, f3, g3, a3, b3]

octSharp3 = line[ cs3, ds3, es3, fs3, gs3, as3, bs3]

playThis3 = play $(instrument OrchestralHarp(octFlat3 :+: oct3 :+: octSharp3))

-- 4rd Octave --
a4 = a 4 qn
b4 = b 4 qn
c4 = c 4 qn
d4 = d 4 qn
e4 = e 4 qn
f4 = f 4 qn
g4 = g 4 qn

-- flats --
cf4 = cf 4 qn
df4 = df 4 qn
ef4 = ef 4 qn
ff4 = ff 4 qn
gf4 = gf 4 qn
af4 = af 4 qn
bf4 = bf 4 qn

-- sharps --
cs4 = cs 4 qn
ds4 = ds 4 qn
es4 = es 4 qn
fs4 = fs 4 qn
gs4 = gs 4 qn
as4 = as 4 qn
bs4 = bs 4 qn

-- test --

octFlat4 = line[ cf4, df4, ef4, ff4, gf4, af4, bf4]

oct4 = line[ c4, d4, e4, f4, g4, a4, b4]

octSharp4 = line[ cs4, ds4, es4, fs4, gs4, as4, bs4]

playThis4 = play $(instrument OrchestralHarp(octFlat4 :+: oct4 :+: octSharp4))


-- 5rd Octave --
a5 = a 5 qn
b5 = b 5 qn
c5 = c 5 qn
d5 = d 5 qn
e5 = e 5 qn
f5 = f 5 qn
g5 = g 5 qn

-- flats --
cf5 = cf 5 qn
df5 = df 5 qn
ef5 = ef 5 qn
ff5 = ff 5 qn
gf5 = gf 5 qn
af5 = af 5 qn
bf5 = bf 5 qn

-- sharps --
cs5 = cs 5 qn
ds5 = ds 5 qn
es5 = es 5 qn
fs5 = fs 5 qn
gs5 = gs 5 qn
as5 = as 5 qn
bs5 = bs 5 qn

-- test --

octFlat5 = line[ cf5, df5, ef5, ff5, gf5, af5, bf5]
oct5 = line[ c5, d5, e5, f5, g5, a5, b5]
octSharp5 = line[ cs5, ds5, es5, fs5, gs5, as5, bs5]

playThis5 = play $(instrument OrchestralHarp(octFlat5 :+: oct5 :+: octSharp5))

-- 6rd Octave --
a6 = a 6 qn
b6 = b 6 qn
c6 = c 6 qn
d6 = d 6 qn
e6 = e 6 qn
f6 = f 6 qn
g6 = g 6 qn

-- flats --
cf6 = cf 6 qn
df6 = df 6 qn
ef6 = ef 6 qn
ff6 = ff 6 qn
gf6 = gf 6 qn
af6 = af 6 qn
bf6 = bf 6 qn

-- sharps --
cs6 = cs 6 qn
ds6 = ds 6 qn
es6 = es 6 qn
fs6 = fs 6 qn
gs6 = gs 6 qn
as6 = as 6 qn
bs6 = bs 6 qn

-- Tests --

playNotes3 = (instrument OrchestralHarp(oct3))
playNotes4 = (instrument OrchestralHarp(oct4))
playNotes5 = (instrument OrchestralHarp(oct5)) 

allNotes = play $(playNotes3 :+: playNotes4 :+: playNotes5)

-- Test keyboard --

-- Bowser's staircase lol
piano = [c3, cs3, d3, ds3, e3, f3, fs3, g3, gs3, a3, as3, b3, c4, cs4, d4, ds4, e4, f4, fs4, g4, gs4, a4, as4, b4, c5, cs5, d5, ds5, e5, f5, fs5, g5, gs5, a5, as5, b5, c6, cs6, d6, ds6, e6, f6, fs6, g6, gs6, a6, as6, b6]

playPiano = play $(instrument OrchestralHarp(line(piano))) 

playPianoReverse = play $(instrument OrchestralHarp(line(reverse'(piano)))) 

cMajorScale = [c3, d3, e3, f3, g3, a3, b3, c4]

playMajorScale scale = play $(instrument OrchestralHarp(line(scale) :+: line(reverse'(scale)))) 

playMajorChord majorScale = play $(instrument OrchestralHarp(line(majorScale))) 

-- Chords -- 

-- Major --
-- root, thrid, fifth --

cMaj = [c4, e4, g4]

csMaj = [cs4, es4, gs4]

dfMaj = [df4, f4, af4]

dMaj = [d4, fs4, a4]

dsMaj = [ds4, gf4, a4]

efMaj = [ef4, g4, bf4]

eMaj = [e4, gs4, b4]

fMaj = [f4, a4, c5]

fsMaj = [fs4, as4, cs5]

gfMaj = [gf4, bf4, df5]

gMaj = [g4, b4, d5]

gsMaj = [gs4, bs4, ds5]

afMaj = [af4, c5, ef5]

aMaj = [a4, cs5, e5]

asMaj = [as4, d5, es5]

bfMaj = [bf4, d5, f5]

bMaj = [b4, ds5, fs5]


-- Minor --

cMin = [c4, ef4, g4]

csMin = [cs4, e4, gs4]

dMin = [d4, f4, a4]

efMin = [ef4, gf4, bf4]

eMin = [e4, g4, b4]

fMin = [f4, af4, c5]

fsMin = [fs4, a4, cs5]

gMin = [g4, bf4, d5]

afMin = [af4, cf5, ef5]

aMin = [a4, c5, e5]

bfMin = [bf4, df5, f5]

bMin = [b4, d5, fs5]

-- Diminished --

cDim = [c4, ef4, gf4]

csDim = [cs4, e4, g4]

dDim = [d4, f4, af4]

efDim = [ef4, gf4, a4]

eDim = [e4, g4, bf4]

fDim = [f4, af4, b4]

fsDim = [fs4, a4, c5]

gDim = [g4, bf4, df5]

afDim = [af4, cf5, d5]

aDim = [a4, c5, ef5]

bfDim = [bf4, df5, e5]

bDim = [b4, d5, f5]

-- Major 7th --

cMaj7 = [c4, e4, g4, b4]

csMaj7 = [cs4, es4, gs4, bs4]

dMaj7 = [d4, fs4, a4, cs5]

efMaj7 = [ef4, g4, bf4, d5]

eMaj7 = [e4, gs4, b4, ds5]

fMaj7 = [f4, a4, c5, e5]

fsMaj7 = [fs4, as4, cs5, es5]

gMaj7 = [g4, b4, d5, fs5]

afMaj7 = [af4, c5, ef5, g5]

aMaj7 = [a4, cs5, e5, gs5]

bfMaj7 = [bf4, d5, f5, a5]

bMaj7 = [b4, ds5, fs5, as5]

-- Dominant 7th --

cDom7 = [c4, e4, g4, bf4]

csDom7 = [cs4, es4, gs4, b4]

dfDom7 = []

-- TODO:
-- Minor 7th --

cMin7 = [c3, ef3, g3, bf3]

csMin7 = [cs3, e3, gs3, b3]

dfMin7 = [df3, ff3, af3, cf4]

dMin7 = [d4, f4, a4, c4]

dsMin7 = [ds4, fs4, as4, cs4]

efMin7 = [ef4, gf4, bf4, df4]

eMin7 = [e4, g4, b4, d4]

fMin7 = [f4, af4, c5, ef5]

fsMin7 = [fs4, a4, cs5, e5]

gfMin7 = [gf4, a4, df5, ff5]

gMin7 = [gf4, bf4, d5, f5]

gsMin7 = [gs4, b5, ds5, fs5]

afMin7 = [af5, cf6, ef6, gf6]

aMin7 = [a5, cf6, e6, g6]

asMin7 = [as5, cs6, es6, gs6]

bfMin7 = [bf5, df6, f6, af6]

bMin7 = [b5, d6, fs6, a6]


-- TODO:
-- Minor 7th flat five --

playChord chordName = play $(instrument OrchestralHarp(chord(chordName)))


-- shell scripts for testing --

-- play12Chords cMaj csMaj dMaj efMaj eMaj fMaj fsMaj gMaj afMaj aMaj bfMaj bMaj

-- play12Chords cMin csMin dMin efMin eMin fMin fsMin gMin afMin aMin bfMin bMin

-- play12Chords cDim csDim dDim efDim eDim fDim fsDim gDim afDim aDim bfDim bDim

-- play12Chords cMaj7 csMaj7 dMaj7 efMaj7 eMaj7 fMaj7 fsMaj7 gMaj7 afMaj7 aMaj7 bfMaj7 bMaj7

play12Chords chordName1 chordName2 chordName3 chordName4 chordName5 chordName6 chordName7 chordName8 chordName9 chordName10 chordName11 chordName12= 
    play $(instrument OrchestralHarp(chord(chordName1) :+: chord(chordName2) :+: chord(chordName3) :+: chord(chordName4) :+: chord(chordName5) :+: chord(chordName6) :+: chord(chordName7) :+: chord(chordName8) :+: chord(chordName9) :+: chord(chordName10) :+: chord(chordName11) :+: chord(chordName12)))
 
-- play17Chords cMin7 csMin7 dfMin7 dMin7 dsMin7 efMin7 eMin7 fMin7 fsMin7 gfMin7 gMin7 gsMin7 afMin7 aMin7 asMin7 bfMin7 bMin7

-- play17Chords cMaj csMaj dfMaj dMaj dsMaj efMaj eMaj fMaj fsMaj gfMaj gMaj gsMaj afMaj aMaj asMaj bfMaj bMaj

play17Chords chordName1 chordName2 chordName3 chordName4 chordName5 chordName6 chordName7 chordName8 chordName9 chordName10 chordName11 chordName12 chordName13 chordName14 chordName15 chordName16 chordName17= 
    play $(instrument OrchestralHarp(chord(chordName1) :+: chord(chordName2) :+: chord(chordName3) :+: chord(chordName4) :+: chord(chordName5) :+: chord(chordName6) :+: chord(chordName7) :+: chord(chordName8) :+: chord(chordName9) :+: chord(chordName10) :+: chord(chordName11) :+: chord(chordName12) :+: chord(chordName13) :+: chord(chordName14) :+: chord(chordName15) :+: chord(chordName16) :+: chord(chordName17)))

-- Chord progressions --

-- Major --
-- I - IV - V --

-- ii - V - I --

-- I - IV - V --
cMajProg = [cMaj, fMaj, gMaj]

-- I - vi - IV - V --
cMajProg2 = [cMaj, aMin, fMaj, gMaj]

-- I - IV - V --
dfMajProg = [csMaj, fsMaj, afMaj]
-- I - IV - V --
dMajProg = [dMaj, gMaj, aMaj]
-- I - vi - IV - V --
efMajProg = [efMaj, cMin, csMaj, bfMaj]
-- I - vi - IV - V --
eMajProg = [eMaj, csMin, aMaj, bMaj]

fMajProg = []

fsMajProg = []

gMajProg = []

afMajProg = []

aMajProg = []

bfMajProg = []

bMajProg = []

-- I - vi - IV - V --




-- Minor --
-- i - VI - VII --
-- i - iv - VII --
-- i - iv - v --
-- i - VI - III - VII--
-- ii - v - i --

-- I - V - vi - IV --
-- pop --
cMajPop = [cMaj, gMaj, aMin, fMaj]

-- 50's pop --
-- I - vi - IV - V --
cMaj50 = [cMaj, aMin, gMaj, fMaj]


-- I - V - vi - iii - IV - I - IV - V --
-- canon --

cMajCanon = [cMaj, gMaj, aMin, eMin, fMaj, cMaj, fMaj, gMaj]

csMajCanon = [csMaj, afMaj, bfMin, fMin, fsMaj, csMaj, fsMaj, afMaj]

dMajCanon = []

dsMajCanon = []

eMajCanon = []

fMajCanon = []

gMajCanon = []

afMajCanon = []

aMajCanon = []

bfMajCanon = []

bMajCanon = []




-- Jazz --
-- ii - V - i --
cMajJazz = [dMin, gMaj, cMaj]

-- ii - V - I --
cMajJazz2 = [dMin7, gMaj7, cMaj7]

playProgression chordProg = play $(instrument OrchestralHarp(chord(chordProg!!0) :+: chord(chordProg!!1) :+: chord(chordProg!!2)))

playProgression4 chordProg = play $(instrument OrchestralHarp(chord(chordProg!!0) :+: chord(chordProg!!1) :+: chord(chordProg!!2) :+: chord(chordProg!!3) ))

playCanon chordProg = play $ (tempo(1/4)(instrument OrchestralHarp(chord(chordProg!!0) :+: chord(chordProg!!1) :+: chord(chordProg!!2) :+: chord(chordProg!!3) :+: chord(chordProg!!4):+: chord(chordProg!!5):+: chord(chordProg!!6):+: chord(chordProg!!7))))

-- saveCanon chordProg = (tempo(1/4)(instrument OrchestralHarp(chord(chordProg!!0) :+: chord(chordProg!!1) :+: chord(chordProg!!2) :+: chord(chordProg!!3) :+: chord(chordProg!!4):+: chord(chordProg!!5):+: chord(chordProg!!6):+: chord(chordProg!!7))))

playSong1 chordProg = 
    let 
        lProg = length(chordProg) 
        saveCanon lProg = (tempo(1/4)(instrument OrchestralHarp(chord(chordProg!!0) :+: chord(chordProg!!1) :+: chord(chordProg!!2) :+: chord(chordProg!!3) :+: chord(chordProg!!4):+: chord(chordProg!!5):+: chord(chordProg!!6):+: chord(chordProg!!7))))
    in
        if lProg == 3
            then play $ (instrument OrchestralHarp(
                line(chordProg!!0) :+: 
                chord(chordProg!!0) :+: 
                line(chordProg!!1) :+: 
                chord(chordProg!!1) :+: 
                line(chordProg!!2) :+: 
                chord(chordProg!!2) :+: 
                line(reverse'(chordProg!!0)) :+: 
                chord(chordProg!!0)))
        else if lProg == 4
            then play $ (instrument OrchestralHarp(
                line(chordProg!!0) :+: 
                chord(chordProg!!0) :+: 
                line(chordProg!!1) :+: 
                chord(chordProg!!1) :+: 
                line(chordProg!!2) :+: 
                chord(chordProg!!2) :+: 
                line(chordProg!!3) :+: 
                chord(chordProg!!3)))
        else if lProg == 8
            then play $ (saveCanon (lProg)) :+: forever(instrument OrchestralHarp(
                line(chordProg!!0) :+: 
                chord(chordProg!!0) :+: 
                line(chordProg!!1) :+: 
                chord(chordProg!!1) :+: 
                line(chordProg!!2) :+: 
                chord(chordProg!!2) :+: 
                line(chordProg!!3) :+: 
                chord(chordProg!!3) :+:
                line(chordProg!!4) :+: 
                chord(chordProg!!4) :+:
                line(chordProg!!5) :+: 
                chord(chordProg!!5) :+:
                line(chordProg!!6) :+: 
                chord(chordProg!!6) :+:
                line(chordProg!!7) :+: 
                chord(chordProg!!7)
                ))
        else
            putStrLn("Pick another song")

-- Export -- 

exportSong chordProg = 
    let 
        lProg = length(chordProg) 
        saveCanon lProg = (tempo(1/4)(instrument OrchestralHarp(chord(chordProg!!0) :+: chord(chordProg!!1) :+: chord(chordProg!!2) :+: chord(chordProg!!3) :+: chord(chordProg!!4):+: chord(chordProg!!5):+: chord(chordProg!!6):+: chord(chordProg!!7))))
    in
        if lProg == 3
            then writeMidi2 "test1.mid" (instrument OrchestralHarp(
                line(chordProg!!0) :+: 
                chord(chordProg!!0) :+: 
                line(chordProg!!1) :+: 
                chord(chordProg!!1) :+: 
                line(chordProg!!2) :+: 
                chord(chordProg!!2) :+: 
                line(reverse'(chordProg!!0)) :+: 
                chord(chordProg!!0)))
        else if lProg == 4
            then play $ (instrument OrchestralHarp(
                line(chordProg!!0) :+: 
                chord(chordProg!!0) :+: 
                line(chordProg!!1) :+: 
                chord(chordProg!!1) :+: 
                line(chordProg!!2) :+: 
                chord(chordProg!!2) :+: 
                line(chordProg!!3) :+: 
                chord(chordProg!!3)))
        else if lProg == 8
            then play $ (saveCanon (lProg)) :+: forever(instrument OrchestralHarp(
                line(chordProg!!0) :+: 
                chord(chordProg!!0) :+: 
                line(chordProg!!1) :+: 
                chord(chordProg!!1) :+: 
                line(chordProg!!2) :+: 
                chord(chordProg!!2) :+: 
                line(chordProg!!3) :+: 
                chord(chordProg!!3) :+:
                line(chordProg!!4) :+: 
                chord(chordProg!!4) :+:
                line(chordProg!!5) :+: 
                chord(chordProg!!5) :+:
                line(chordProg!!6) :+: 
                chord(chordProg!!6) :+:
                line(chordProg!!7) :+: 
                chord(chordProg!!7)
                ))
        else
            putStrLn("Pick another song")
            

allNotesArray = [c3, d3, e3, f3, g3, a3, b3, cf3, df3, ef3, ff3, gf3, af3, bf3, cs3, ds3, es3, fs3, gs3, as3, bs3, a4, b4, c4, d4, e4, f4, g4, cf4, df4, ef4, ff4, gf4, af4, bf4, cs4, ds4, es4, fs4, gs4, as4, bs4, a5, b5, c5, d5, e5, f5, g5, cf5, df5, ef5, ff5, gf5, af5, bf5, cs5, ds5, es5, fs5, gs5, as5, bs5, a6, b6, c6, d6, e6, f6, g6, cf6, df6, ef6, ff6, gf6, af6, bf6, cs6, ds6, es6, fs6, gs6, as6, bs6]

-- Export 2 midi
-- TODO learn how to use recursions 

-- notes -- 

midi_c3 = writeMidi2 "./output/c3.mid" (instrument OrchestralHarp(c3))
midi_d3 = writeMidi2 "./output/d3.mid" (instrument OrchestralHarp(d3))
midi_e3 = writeMidi2 "./output/e3.mid" (instrument OrchestralHarp(e3))
midi_f3 = writeMidi2 "./output/f3.mid" (instrument OrchestralHarp(f3))
midi_g3 = writeMidi2 "./output/g3.mid" (instrument OrchestralHarp(g3))
midi_a3 = writeMidi2 "./output/a3.mid" (instrument OrchestralHarp(a3))
midi_b3 = writeMidi2 "./output/b3.mid" (instrument OrchestralHarp(b3))

midi_cf3 = writeMidi2 "./output/cf3.mid" (instrument OrchestralHarp(cf3))
midi_df3 = writeMidi2 "./output/df3.mid" (instrument OrchestralHarp(df3))
midi_ef3 = writeMidi2 "./output/ef3.mid" (instrument OrchestralHarp(ef3))
midi_ff3 = writeMidi2 "./output/ff3.mid" (instrument OrchestralHarp(ff3))
midi_gf3 = writeMidi2 "./output/gf3.mid" (instrument OrchestralHarp(gf3))
midi_af3 = writeMidi2 "./output/af3.mid" (instrument OrchestralHarp(af3))
midi_bf3 = writeMidi2 "./output/bf3.mid" (instrument OrchestralHarp(bf3))
midi_cs3 = writeMidi2 "./output/cs3.mid" (instrument OrchestralHarp(cs3))
midi_ds3 = writeMidi2 "./output/ds3.mid" (instrument OrchestralHarp(ds3))
midi_es3 = writeMidi2 "./output/es3.mid" (instrument OrchestralHarp(es3))
midi_fs3 = writeMidi2 "./output/fs3.mid" (instrument OrchestralHarp(fs3))
midi_gs3 = writeMidi2 "./output/gs3.mid" (instrument OrchestralHarp(gs3))
midi_as3 = writeMidi2 "./output/as3.mid" (instrument OrchestralHarp(as3))
midi_bs3 = writeMidi2 "./output/bs3.mid" (instrument OrchestralHarp(bs3))

midi_a4 = writeMidi2 "./output/a4.mid" (instrument OrchestralHarp(a4))
midi_b4 = writeMidi2 "./output/b4.mid" (instrument OrchestralHarp(b4))
midi_c4 = writeMidi2 "./output/c4.mid" (instrument OrchestralHarp(c4))
midi_d4 = writeMidi2 "./output/d4.mid" (instrument OrchestralHarp(d4))
midi_e4 = writeMidi2 "./output/e4.mid" (instrument OrchestralHarp(e4))
midi_f4 = writeMidi2 "./output/f4.mid" (instrument OrchestralHarp(f4))
midi_g4 = writeMidi2 "./output/g4.mid" (instrument OrchestralHarp(g4))

midi_cf4 = writeMidi2 "./output/cf4.mid" (instrument OrchestralHarp(cf4))
midi_df4 = writeMidi2 "./output/df4.mid" (instrument OrchestralHarp(df4))
midi_ef4 = writeMidi2 "./output/ef4.mid" (instrument OrchestralHarp(ef4))
midi_ff4 = writeMidi2 "./output/ff4.mid" (instrument OrchestralHarp(ff4))
midi_gf4 = writeMidi2 "./output/gf4.mid" (instrument OrchestralHarp(gf4))
midi_af4 = writeMidi2 "./output/af4.mid" (instrument OrchestralHarp(af4))
midi_bf4 = writeMidi2 "./output/bf4.mid" (instrument OrchestralHarp(bf4))
midi_cs4 = writeMidi2 "./output/cs4.mid" (instrument OrchestralHarp(cs4))
midi_ds4 = writeMidi2 "./output/ds4.mid" (instrument OrchestralHarp(ds4))
midi_es4 = writeMidi2 "./output/es4.mid" (instrument OrchestralHarp(es4))
midi_fs4 = writeMidi2 "./output/fs4.mid" (instrument OrchestralHarp(fs4))
midi_gs4 = writeMidi2 "./output/gs4.mid" (instrument OrchestralHarp(gs4))
midi_as4 = writeMidi2 "./output/as4.mid" (instrument OrchestralHarp(as4))
midi_bs4 = writeMidi2 "./output/bs4.mid" (instrument OrchestralHarp(bs4))

midi_a5 = writeMidi2 "./output/a5.mid" (instrument OrchestralHarp(a5))
midi_b5 = writeMidi2 "./output/b5.mid" (instrument OrchestralHarp(b5))
midi_c5 = writeMidi2 "./output/c5.mid" (instrument OrchestralHarp(c5))
midi_d5 = writeMidi2 "./output/d5.mid" (instrument OrchestralHarp(d5))
midi_e5 = writeMidi2 "./output/e5.mid" (instrument OrchestralHarp(e5))
midi_f5 = writeMidi2 "./output/f5.mid" (instrument OrchestralHarp(f5))
midi_g5 = writeMidi2 "./output/g5.mid" (instrument OrchestralHarp(g5))

midi_cf5 = writeMidi2 "./output/cf5.mid" (instrument OrchestralHarp(cf5))
midi_df5 = writeMidi2 "./output/df5.mid" (instrument OrchestralHarp(df5))
midi_ef5 = writeMidi2 "./output/ef5.mid" (instrument OrchestralHarp(ef5))
midi_ff5 = writeMidi2 "./output/ff5.mid" (instrument OrchestralHarp(ff5))
midi_gf5 = writeMidi2 "./output/gf5.mid" (instrument OrchestralHarp(gf5))
midi_af5 = writeMidi2 "./output/af5.mid" (instrument OrchestralHarp(af5))
midi_bf5 = writeMidi2 "./output/bf5.mid" (instrument OrchestralHarp(bf5))
midi_cs5 = writeMidi2 "./output/cs5.mid" (instrument OrchestralHarp(cs5))
midi_ds5 = writeMidi2 "./output/ds5.mid" (instrument OrchestralHarp(ds5))
midi_es5 = writeMidi2 "./output/es5.mid" (instrument OrchestralHarp(es5))
midi_fs5 = writeMidi2 "./output/fs5.mid" (instrument OrchestralHarp(fs5))
midi_gs5 = writeMidi2 "./output/gs5.mid" (instrument OrchestralHarp(gs5))
midi_as5 = writeMidi2 "./output/as5.mid" (instrument OrchestralHarp(as5))
midi_bs5 = writeMidi2 "./output/bs5.mid" (instrument OrchestralHarp(bs5))

midi_a6 = writeMidi2 "./output/a6.mid" (instrument OrchestralHarp(a6))
midi_b6 = writeMidi2 "./output/b6.mid" (instrument OrchestralHarp(b6))
midi_c6 = writeMidi2 "./output/c6.mid" (instrument OrchestralHarp(c6))
midi_d6 = writeMidi2 "./output/d6.mid" (instrument OrchestralHarp(d6))
midi_e6 = writeMidi2 "./output/e6.mid" (instrument OrchestralHarp(e6))
midi_f6 = writeMidi2 "./output/f6.mid" (instrument OrchestralHarp(f6))
midi_g6 = writeMidi2 "./output/g6.mid" (instrument OrchestralHarp(g6))

midi_cf6 = writeMidi2 "./output/cf6.mid" (instrument OrchestralHarp(cf6))
midi_df6 = writeMidi2 "./output/df6.mid" (instrument OrchestralHarp(df6))
midi_ef6 = writeMidi2 "./output/ef6.mid" (instrument OrchestralHarp(ef6))
midi_ff6 = writeMidi2 "./output/ff6.mid" (instrument OrchestralHarp(ff6))
midi_gf6 = writeMidi2 "./output/gf6.mid" (instrument OrchestralHarp(gf6))
midi_af6 = writeMidi2 "./output/af6.mid" (instrument OrchestralHarp(af6))
midi_bf6 = writeMidi2 "./output/bf6.mid" (instrument OrchestralHarp(bf6))
midi_cs6 = writeMidi2 "./output/cs6.mid" (instrument OrchestralHarp(cs6))
midi_ds6 = writeMidi2 "./output/ds6.mid" (instrument OrchestralHarp(ds6))
midi_es6 = writeMidi2 "./output/es6.mid" (instrument OrchestralHarp(es6))
midi_fs6 = writeMidi2 "./output/fs6.mid" (instrument OrchestralHarp(fs6))
midi_gs6 = writeMidi2 "./output/gs6.mid" (instrument OrchestralHarp(gs6))
midi_as6 = writeMidi2 "./output/as6.mid" (instrument OrchestralHarp(as6))
midi_bs6 = writeMidi2 "./output/bs6.mid" (instrument OrchestralHarp(bs6))

