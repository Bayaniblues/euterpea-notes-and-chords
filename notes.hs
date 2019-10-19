import Euterpea
import Data.List
-- Notes --

-- 3rd Octave --
c3 = c 3 qn
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

-- TODO build a keyboard --


-- Chords -- 

-- Major --
-- root, thrid, fifth --

cMaj = [c4, e4, g4]

csMaj = [cs4, es4, gs4]

dMaj = [d4, fs4, a4]

efMaj = [ef4, g4, bf4]

eMaj = [e4, gs4, b4]

fMaj = [f4, a4, c5]

fsMaj = [fs4, as4, cs5]

gMaj = [g4, b4, d5]

afMaj = [af4, c5, ef5]

aMaj = [a4, cs5, e5]

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

dDom7 = []

-- TODO:
-- Minor 7th --

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


-- Chord progressions --
-- I - IV - V --

cMajChords = [cMaj, fMaj, gMaj]

dfMajChords = [csMaj, fsMaj, afMaj]

dMajChords = []

-- I - V - vi - IV --
-- pop --
cMajPop = [cMaj, gMaj, aMin, fMaj]

-- I - V - vi - iii - IV - I - IV - V --
-- canon --


-- ii - V - i --
-- Jazz --
cMajJazz = [dMin, gMaj, cMaj]

reverse' :: [a] -> [a]  
reverse' [] = []  
reverse' (x:xs) = reverse' xs ++ [x]  


playProgression chordProg = play $(instrument OrchestralHarp(chord(chordProg!!0) :+: chord(chordProg!!1) :+: chord(chordProg!!2)))


playSong1 chordProg = 
    let 
        lProg = length(chordProg) 
    in
        if lProg == 3
            then play $(instrument OrchestralHarp(
                line(chordProg!!0) :+: 
                chord(chordProg!!0) :+: 
                line(chordProg!!1) :+: 
                chord(chordProg!!1) :+: 
                line(chordProg!!2) :+: 
                chord(chordProg!!2) :+: 
                line(reverse'(chordProg!!0)) :+: 
                chord(chordProg!!0)))
        if chordProg == cMajJazz
            then play $(instrument OrchestralHarp(
                line(reverse'(chordProg!!0)) :+: 
                chord(chordProg!!0) :+:
                line(chordProg!!1) :+: 
                chord(chordProg!!1) :+: 
                line(chordProg!!2) :+: 
                chord(chordProg!!2) :+: 
                line(chordProg!!0) :+: 
                chord(chordProg!!0)))
        else
            putStrLn("Pick another song")
