function SimpleBackground(fn)
  return {
    img = LutaImage(fn),
    draw = function (self, scene)
      local camera = scene.camera
      self.img:draw({x=camera.x,y=camera.y,w=camera.w*(1/camera.zoom),h=camera.h*(1/camera.zoom)}, -camera.x, -camera.y, camera.zoom)
    end
  }
end
