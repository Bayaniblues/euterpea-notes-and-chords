playSong chordProg = 
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
        else 
            putStrLn("Pick another song")

-- found loops @ https://stackoverflow.com/questions/16004365/simple-haskell-loop
-- Use this recursive loop to 

repeatN 0 _ = return()
repeatN n action = 
    do 
        action
        repeatN (n-1) action

chordProg = cMaj


export chordProg = 
    let 
        lProg = length(chordProg) 
    in  
        repeatN lProg (
            play $(instrument OrchestralHarp(line(chordProg!!0)))
        )

                -- (line(chordProg!!repeatN) :+: 
                -- chord(chordProg!!repeatN))

            --(:+: line( chordProg!!repeatN)
            -- :+: chord(chordProg!!repeatN)))



        --play $(instrument OrchestralHarp(buildSong))
    
    --line(reverse'(chordProg!!0)) :+: 
    --   c hord(chordProg!!0)))


-- playSong chordProg = 
--    let lProg = length(chordProg) 
--    in play $(instrument OrchestralHarp(repeatN (line(chordProg!!repeatN) :+: chord(chordProg!!repeatN) :+:)
        -- line(reverse'(chordProg!!0)) :+: 
        -- chord(chordProg!!0)))
