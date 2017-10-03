-- Main
-- Group6

 -- Created by: Allesandro
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the main starting point 

--global variables



-- Use this function to perform your initial setup
function setup()
    
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    
    sprite()
    -- create the scenes
    Scene("splash", SplashScreenScene)
    Scene("logo", GameLogoScene)
    Scene("play", MainScene)
    Scene("endGame", GameOverScene)
    Scene("tutorial", TutorialScene)
    Scene("Level", GameScene)
    Scene("pause", PauseScene)
    Scene.Change("play")
    
    
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(255, 0, 55, 255)
    
    Scene.Draw()
end

function touched(touch)
    
    Scene.Touched(touch)
end