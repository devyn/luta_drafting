return function (scene)
  entry_point = {50, 50}

  table.insert(scene, SimpleBackground("img/background.png"))
  table.insert(scene, SimpleBoundary(scene.physics, 0, 0, 5, 1079))
  table.insert(scene, SimpleBoundary(scene.physics, 1914, 0, 5, 1079))
  table.insert(scene, SimpleBoundary(scene.physics, 0, 1074, 1919, 5))

  scene.bgm = love.audio.newSource("music/Backyard.ogg")
  scene.bgm:setLooping(true)
  scene.bgm:setVolume(0.9)

  love.audio.play(scene.bgm)

  scene.physics:setGravity(0, 100)

  table.insert(scene, {
    keyreleased = function (self, scene, key, unicode)
      if key == 'escape' then
        love.event.push('q')
      end
    end
  })
end
