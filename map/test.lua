return function ()
  local scene = NewScene(2200, 1100, love.graphics.getWidth(), love.graphics.getHeight())

  entry_point = {50, 50}

  scene:add( ParallaxBackground("img/city1 bg1.png") )
  scene:add( ParallaxBackground("img/city1 bg2.png") )
  scene:add( ParallaxBackground("img/city1 bg3.png") )
  scene:add( ParallaxBackground("img/city1 bg4.png") )

  scene:add( SimpleBoundary(scene.physics, 0, 0, 5, 1099)    )
  scene:add( SimpleBoundary(scene.physics, 2194, 0, 5, 1099) )
  scene:add( SimpleBoundary(scene.physics, 0, 1079, 2199, 20) )

  scene.bgm = love.audio.newSource("music/Urban Life.ogg")
  scene.bgm:setLooping(true)
  scene.bgm:setVolume(0.9)

  love.audio.play(scene.bgm)

  scene.physics:setGravity(0, 200)

  scene:add {
    keyreleased = function (self, scene, key, unicode)
      if key == 'escape' then
        love.event.push('q')
      end
    end
  }

  return scene
end
