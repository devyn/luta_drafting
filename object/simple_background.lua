function SimpleBackground(fn)
  return {
    img = LutaImage(fn),
    draw = function (self, scene)
      local camera = scene.camera
      self.img:draw({x=camera.x,y=camera.y,w=camera.w,h=camera.h}, -camera.x, -camera.y)
    end
  }
end
