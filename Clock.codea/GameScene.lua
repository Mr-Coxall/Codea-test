GameScene = class()
local mainMenuButton
local pauseButton
local shapes


local countDown
local startTime
local endTime
local currentTime 


function GameScene:init()
    --you can accept and set parameters here
    mainMenuButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 708))
    pauseButton = Button("Dropbox:Blue Pause Button", vec2(960, 708))
  --  shapeOne = SpriteObject("Dropbox:triangle", 512, 460)
  

    tab1={}
    tab2={}
    table.insert(tab1,readImage("Planet Cute:Character Boy"))
    table.insert(tab1,readImage("Planet Cute:Character Cat Girl"))
    table.insert(tab1,readImage("Planet Cute:Character Horn Girl"))
    table.insert(tab1,readImage("Planet Cute:Character Pink Girl"))
    table.insert(tab1,readImage("Planet Cute:Character Princess Girl"))


    shapeNameOne = 1
    shapeNameTwo = 2
    shapeNameThree = 3
    shapeNameFour = 4

    shapeOne = "Dropbox:Cube"
    
    countDown = 31 * 1000
    startTime = ElapsedTime
    print("start time " ..startTime)
   endTime = startTime + countDown
    print("end time " .. endTime)
   currentTime = endTime - (ElapsedTime*1000)
    print ("current time " .. currentTime)
   --print(startTime .. " " .. endTime)
    

   -- sprite()

    -- this gets set by levels
    
end

function GameScene:draw()
    -- Codea does not automatically call this method
    background(217, 217, 217, 255)
    mainMenuButton:draw()
    pauseButton:draw()
    
    -- count down on timer
    
    -- timer 

   -- print(ElapsedTime*1000 .. " " .. endTime)
   if (currentTime > 0) then
       currentTime = endTime - (ElapsedTime*1000)
   else
       currentTime = 0
   end
    fill(0, 0, 0, 255)
    fontSize(50)
   text ("Time left: " .. math.floor(currentTime/1000), 512, 700)
    -- shapes
   
    sprite(shapeOne, 512, 460, 300, 300)
    
    -- end shapes
    
    
    
    -- options
    -- style
    fill(255, 255, 255, 255)
    -- button left
    rect(100, 100, 400, 100)
    -- top left
    rect(100, 210, 400, 100)
    -- button right
    rect(530, 100, 400, 100)
    -- top right
    rect(530, 210, 400, 100)
    
    
    -- shape names
    fontSize(50)
    fill(20, 20, 20, 255)
    text(shapeNameOne, 300, 150)
    text(shapeNameTwo, 300, 260)
    text(shapeNameThree, 710, 150)
    text(shapeNameFour, 710, 260)
end





function GameScene:touched(touch)
    -- Codea does not automatically call this method
    
   
    mainMenuButton:touched(touch)
    if(mainMenuButton.selected == true) then
        Scene.Change("play")
    end
    
    pauseButton:touched(touch)
    if(pauseButton.selected == true) then
        Scene.Change("pause")
    end
end
