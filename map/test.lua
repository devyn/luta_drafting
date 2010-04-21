return function (scene)
  entry_point = {50, 50}
  a = ParallaxBackground("img/background.png")
  b = ParallaxBackground("img/wut.png")

  scene:add(a)
  scene:add(b)
  scene:add( SimpleBoundary(scene.physics, 0, 0, 5, 1099)    )
  scene:add( SimpleBoundary(scene.physics, 2194, 0, 5, 1099) )
  scene:add( SimpleBoundary(scene.physics, 0, 1094, 2199, 5) )

  scene.bgm = love.audio.newSource("music/Backyard.ogg")
  scene.bgm:setLooping(true)
  scene.bgm:setVolume(0.9)

  love.audio.play(scene.bgm)

  scene.physics:setGravity(0, 200)

  scene:add {
    keyreleased = function (self, scene, key, unicode)
      if key == 'escape' then
        love.event.push('q')
      elseif key == 'd' then
        print(a.scx, a.scy, "&", b.scx, b.scy)
      end
    end
  }
end
