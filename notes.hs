import Euterpea

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

octFlat3 = line[ cf3, df3, ef3, ff3, gf3, af3, bf3]

octSharp3 = line[ cs3, ds3, es3, fs3, gs3, as3, bs3]

oct3 = line[ c3, d3, e3, f3, g3, a3, b3]

playThis = play $(instrument OrchestralHarp(octFlat3 :+: oct3 :+: octSharp3))

-- 4rd Octave --
a4 = a 4 qn
b4 = b 4 qn
c4 = c 4 qn
d4 = d 4 qn
e4 = e 4 qn
f4 = f 4 qn
g4 = g 4 qn

oct4 = line[ c4, d4, e4, f4, g4, a4, b4]

-- 5rd Octave --
a5 = a 5 qn
b5 = b 5 qn
c5 = c 5 qn
d5 = d 5 qn
e5 = e 5 qn
f5 = f 5 qn
g5 = g 5 qn

c6 = c 6 qn

oct5 = line[ c5, d5, e5, f5, g5, a5, b5, c6]

playNotes3 = (instrument OrchestralHarp(oct3))
playNotes4 = (instrument OrchestralHarp(oct4))
playNotes5 = (instrument OrchestralHarp(oct5)) 

allNotes = play $(playNotes3 :+: playNotes4 :+: playNotes5)