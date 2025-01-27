function start(song)
    triggerEvent('Add Camera Zoom','0.20','0')
end


function createPost()
   initShader('sobel', 'SobelEffect')
    setCameraShader('game', 'sobel')
    if modcharts then 
		setCameraShader('hud', 'sobel')
	end
    setShaderProperty('sobel', 'strength', 0)
    setShaderProperty('sobel', 'intensity', 3)

    initShader('greyscale', 'GreyscaleEffect')
    setCameraShader('game', 'greyscale')
    setCameraShader('hud', 'greyscale')
    setShaderProperty('greyscale', 'strength', 1)

    initShader('blur', 'BlurEffect')
    setCameraShader('game', 'blur')
    setCameraShader('hud', 'blur')
    setShaderProperty('blur', 'strength', 0)


    initShader('chrom', 'ChromAbEffect')
    setCameraShader('game', 'chrom')
    if modcharts then 
		setCameraShader('hud', 'chrom')
	end

    initShader('color', 'ColorOverrideEffect')
    setCameraShader('game', 'color')
    setCameraShader('hud', 'color')
    setShaderProperty('color', 'red', 0.0)
    setShaderProperty('color', 'green', 0.0)
    setShaderProperty('color', 'blue', 0.0)

    initShader('pixel', 'MosaicEffect')
    setCameraShader('game', 'pixel')
    if modcharts then 
		setCameraShader('hud', 'pixel')
	end
    setShaderProperty('pixel', 'strength', 0)

    	initShader('barrel', 'MirrorRepeatEffect')
	setCameraShader('game', 'barrel')
    if modcharts then 
		setCameraShader('hud', 'barrel')
	end
	setShaderProperty('barrel', 'angle', -45.0)
	
	--setShaderProperty('barrel', 'barrel', 0.0)
	setShaderProperty('barrel', 'zoom', 5.0)

    initShader('constrastShit', 'BloomEffect')
    setCameraShader('game', 'constrastShit')
    setCameraShader('hud', 'constrastShit')
    setShaderProperty('constrastShit', 'effect', 0)

    initShader('colorSwap', 'ColorSwapEffect')
    setCameraShader('game', 'colorSwap')
    setCameraShader('hud', 'colorSwap')
    initShader('grey', 'GreyscaleEffect')
    setCameraShader('game', 'grey')
    setCameraShader('hud', 'grey')
	setShaderProperty('grey', 'strength', 1.0)
    --setShaderProperty('colorSwap', 'saturation', -0.9)
    --setShaderProperty('colorSwap', 'brightness', -0.7)


    initShader('palette', 'PaletteEffect')
	setCameraShader('game', 'palette')
    if modcharts then 
		setCameraShader('hud', 'palette')
	end
    --setShaderProperty('palette', 'strength', 1)
    --setShaderProperty('raymarch', 'y', 180)


    --setStageColorSwap('hue', 0.1)

    makeSprite('left', '', -1200, -720, 1)
    setObjectCamera('left', 'hud')
    makeGraphic('left', 160, 720, '0xFF000000')
    actorScreenCenter('left')
    setActorX(-160, 'left')

    makeSprite('right', '', -1200, -720, 1)
    setObjectCamera('right', 'hud')
    makeGraphic('right', 160, 720, '0xFF000000')
    actorScreenCenter('right')
    setActorX(1280, 'right')
end

function playerTwoSing(data, time, type)
    if getHealth() - 0.008 > 0.09 then
        setHealth(getHealth() - 0.025)
    else
        setHealth(0.035)
    end
end

function songStart()
    tweenShaderProperty('color', 'red', 1.0, crochet*0.001*16*16, 'expoOut')
    tweenShaderProperty('color', 'green', 1.0, crochet*0.001*16*16, 'expoOut')
    tweenShaderProperty('color', 'blue', 1.0, crochet*0.001*16*16, 'expoOut')
    tweenShaderProperty('greyscale', 'strength', 0, crochet*0.001*10*30, 'expoOut')
	tweenShaderProperty('grey', 'strength', 0, crochet*0.001*10*30, 'expoOut')
	tweenShaderProperty('barrel', 'angle', 0.0, crochet*0.001*16*14, 'expoOut')
	tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*16*14, 'expoOut')
end

function stepHit()
	if curStep == 0 then
		doNothing = true
	end
	
	if curStep == 150 then
		tweenShaderProperty('grey', 'strength', 0, crochet*0.001*16*16, 'expoIn')
		tweenShaderProperty('barrel', 'zoom', 1.5, crochet*0.001*4, 'backIn')
		elseif curStep == 154 then
		tweenShaderProperty('barrel', 'zoom', 2.0, crochet*0.001*4, 'backIn')
		elseif curStep == 158 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*4, 'backIn')
	end
	
	if curStep == 270 then
		tweenShaderProperty('barrel', 'angle', -30.0, crochet*0.001*17, 'cubeIn')
		tweenShaderProperty('barrel', 'zoom', 2.5, crochet*0.001*17, 'cubeIn')
	elseif curStep == 1054 then
		tweenShaderProperty('barrel', 'angle', -30.0, crochet*0.001*17, 'cubeIn')
		tweenShaderProperty('barrel', 'zoom', 2.5, crochet*0.001*17, 'cubeIn')
	end

	if curStep == 288 then
		tweenShaderProperty('barrel', 'angle', 0, crochet*0.001*1, 'cubeOut')
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*4, 'cubeOut')
	elseif curStep == 1072 then
		tweenShaderProperty('barrel', 'angle', 0, crochet*0.001*1, 'cubeOut')
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*4, 'cubeOut')
	end
	
	if curStep == 416 then
		triggerEvent('Camera Flash', 'White', 1.0)
		tweenShaderProperty('grey', 'strength', 1, crochet*0.001*2, 'cubeIn')
        --tweenShaderProperty('colorSwap', 'brightness', -0.6, crochet*0.001*2, 'cubeOut')
	elseif curStep == 535 then --fade back in slow ig
		tweenShaderProperty('grey', 'strength', 0, crochet*0.0016*16, 'expoOut')
        --tweenShaderProperty('colorSwap', 'brightness', 0, crochet*0.001*16, 'cubeIn')
	end
	
	if curStep == 535 then
        tweenShaderProperty('barrel', 'angle', -30.0, crochet*0.001*4, 'cubeIn')
        tweenShaderProperty('barrel', 'zoom', 2.5, crochet*0.001*4, 'backIn')
	end
	
	if curStep == 544 then
		tweenShaderProperty('barrel', 'angle', 0, crochet*0.001*1, 'cubeIn')
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*4, 'cubeIn')
	end
	
	if curStep == 655 then
		tweenShaderProperty('barrel', 'zoom', 2.5, crochet*0.001*4, 'cubeIn')
	end
	
	if curStep == 672 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*4, 'cubeOut')
	end
--Fucking matt counting in spanish	
	if curStep == 784 then
		tweenShaderProperty('barrel', 'zoom', 1.25, crochet*0.001*5, 'cubeOut') --uno
	elseif curStep == 788 then
		tweenShaderProperty('barrel', 'zoom', 1.5, crochet*0.001*5, 'cubeOut') --dos
	elseif curStep == 792 then
		tweenShaderProperty('barrel', 'zoom', 1.75, crochet*0.001*5, 'cubeOut') --tres
	elseif curStep == 796 then
		tweenShaderProperty('barrel', 'zoom', 2.0, crochet*0.001*5, 'cubeOut') --quatro
	elseif curStep == 800 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*5, 'cubeOut') --back to normal
	end
	
	if curStep == 918 then
		tweenShaderProperty('grey', 'strength', 1, crochet*0.001*2, 'cubeIn')
		tweenShaderProperty('barrel', 'angle', 30.0, crochet*0.001*4, 'cubeOut ')
        tweenShaderProperty('barrel', 'zoom', 0.75, crochet*0.001*4, 'backOut')
	elseif curStep == 922 then
		tweenShaderProperty('barrel', 'angle', -30.0, crochet*0.001*4, 'cubeOut')
        tweenShaderProperty('barrel', 'zoom', 2.5, crochet*0.001*4, 'cubeOut')
	end
	
	if curStep == 928 then
		tweenShaderProperty('barrel', 'angle', 0, crochet*0.001*4, 'cubeIn')
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*4, 'cubeIn')
	end
	
	if curStep == 944 then
		tweenShaderProperty('grey', 'strength', 0, crochet*0.001*2, 'cubeIn')
	end
	
	if curStep == 1231 then
		tweenShaderProperty('barrel', 'zoom', 1.5, crochet*0.001*2, 'cubeIn')
	elseif curStep == 1236 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*2, 'cubeIn')
	end
	
	if curStep == 1248 then
		tweenShaderProperty('barrel', 'zoom', 1.5, crochet*0.001*2, 'cubeIn')
	elseif curStep == 1251 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*2, 'cubeIn')
	end
	
	if curStep == 1264 then
		triggerEvent('Camera Flash', 'White', 1.0)
		tweenShaderProperty('barrel', 'zoom', 1.5, crochet*0.001*2, 'cubeIn')
	elseif curStep == 1268 then
		tweenShaderProperty('barrel', 'zoom', 2.0, crochet*0.001*2, 'cubeIn')
	elseif curStep == 1268 then
		tweenShaderProperty('barrel', 'zoom', 2.5, crochet*0.001*2, 'cubeIn')
	elseif curStep == 1270 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*8, 'cubeIn')
	end
	
	if curStep == 1312 then
		tweenShaderProperty('barrel', 'angle', 30.0, crochet*0.001*6, 'cubeIn')
		tweenShaderProperty('barrel', 'zoom', 2.5, crochet*0.001*6, 'cubeIn')
	end
	
	if curStep == 1328 then
		tweenShaderProperty('barrel', 'angle', 0, crochet*0.001*2, 'cubeIn')
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*2, 'cubeIn')
	end
	
	if curStep == 1440 then
		tweenShaderProperty('grey', 'strength', 1, crochet*0.001*2, 'cubeIn')
		tweenShaderProperty('barrel', 'angle', 30.0, crochet*0.001*4, 'cubeIn ')
        tweenShaderProperty('barrel', 'zoom', 2.0, crochet*0.001*4, 'backIn')
	end
	
	if curStep == 1456 then
		tweenShaderProperty('grey', 'strength', 0, crochet*0.001*2, 'cubeIn')
		tweenShaderProperty('barrel', 'angle', 0, crochet*0.001*4, 'cubeIn ')
        tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*4, 'backIn')
	end
	
	if curStep == 1568 then
	    tweenShaderProperty('barrel', 'zoom', 2.0, crochet*0.001*4, 'cubeIn')
	elseif curStep == 1584 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*2,'cubeIn')
		triggerEvent('Screen Shake', '1.5, 0.01', '1.5, 0.01')
	elseif curStep == 1600 then
		tweenShaderProperty('barrel', 'zoom', 2.0, crochet*0.001*2, 'cubeIn')
	elseif curStep == 1616 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*2, 'cubeIn')
		triggerEvent('Screen Shake', '1.5, 0.01', '1.5, 0.01')
	elseif curStep == 1632 then
		tweenShaderProperty('barrel', 'zoom', 2.0, crochet*0.001*2, 'cubeIn')
	elseif curStep == 1648 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*2, 'cubeIn')
    elseif curStep == 1664 then
		tweenShaderProperty('barrel', 'zoom', 2.0, crochet*0.001*2, 'cubeIn')
		triggerEvent('Screen Shake', '1.5, 0.01', '1.5, 0.01')
	elseif curStep == 1680 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*2, 'cubeIn')
	elseif curStep == 1696 then
		tweenShaderProperty('barrel', 'zoom', 2.0, crochet*0.001*2, 'cubeIn')
		triggerEvent('Screen Shake', '1.5, 0.01', '1.5, 0.01')
	elseif curStep == 1712 then
		tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*2, 'cubeIn') 
	end
	
	if curStep == 1728 then
	    tweenShaderProperty('barrel', 'zoom', 3.0, crochet*0.001*15, 'CubeOut')
	end
	
	if curStep == 1788 then
	    tweenShaderProperty('barrel', 'zoom', 1.0, crochet*0.001*2, 'backIn')
		tweenShaderProperty('barrel', 'angle', 180.0, crochet*0.001*2, 'cubeIn ')
	end
end

--My first time modcharting for leather Engine and I'd say this went pretty well

--Some Oof Doof/OofyDoofy
--Some time in November-December 2023
