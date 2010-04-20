function NewScene(w, h, vw, vh)
  -- all scene objects are held within the index-table of the scene.
  -- they may implement the following methods:
  --   o:update(scene, dt)
  --   o:draw(scene)
  --   o:keypressed(scene, key, unicode)
  --   o:keyreleased(scene, key, unicode)
  --   o:mousepressed(scene, x, y, button)
  --   o:mousereleased(scene, x, y, button)
  --
  -- to be a followable object, it must implement:
  --   x, y = o:getCenter()
  local scene = {width = w, height = h}

  scene.physics = love.physics.newWorld(w, h)

  scene.update = Scene_Update
  scene.draw = Scene_Draw
  scene.keypressed = Scene_KeyPressed
  scene.keyreleased = Scene_KeyReleased
  scene.mousepressed = Scene_MousePressed
  scene.mousereleased = Scene_MouseReleased

  scene.follow = nil
  scene.camera = {
    x = 0,
    y = 0,
    w = vw,
    h = vh,
    zoom = 1.0
  }

  return scene
end

function Scene_Update(self, dt)
  self.physics:update(dt)
  if self.follow then
    local tx, ty = self.follow:getCenter()
    self.camera.x = self.camera.x + ((tx - self.camera.w / 2) - self.camera.x)/20
    self.camera.y = self.camera.y + ((ty - self.camera.h / 2) - self.camera.y)/20
  end
  for i, v in ipairs(self) do
    if type(v.update) == "function" then
      v:update(self, dt)
    end
  end
  if self.camera.x < 0 then self.camera.x = 0 end
  if self.camera.x + self.camera.w >= self.width then self.camera.x = self.width - self.camera.w - 1 end
  if self.camera.y < 0 then self.camera.y = 0 end
  if self.camera.y + self.camera.h >= self.height then self.camera.y = self.height - self.camera.h - 1 end
end

function Scene_Draw(self)
  for i, v in ipairs(self) do
    if type(v.draw) == "function" then
      v:draw(self)
    end
  end
end

function Scene_KeyPressed(self, key, unicode)
  for i, v in ipairs(self) do
    if type(v.keypressed) == "function" then
      v:keypressed(self, key, unicode)
    end
  end
end

function Scene_KeyReleased(self, key, unicode)
  for i, v in ipairs(self) do
    if type(v.keyreleased) == "function" then
      v:keyreleased(self, key, unicode)
    end
  end
end

function Scene_MousePressed(self, x, y, button)
  for i, v in ipairs(self) do
    if type(v.mousepressed) == "function" then
      v:mousepressed(self, x, y, button)
    end
  end
end

function Scene_MouseReleased(self, x, y, button)
  for i, v in ipairs(self) do
    if type(v.mousereleased) == "function" then
      v:mousereleased(self, x, y, button)
    end
  end
end
