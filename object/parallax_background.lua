function ParallaxBackground(fn)
  return {
    img = LutaImage(fn),
    draw = function (self, scene)
      local cam = scene.camera
      local drx = (self.img.aw/2 - cam.w/2) / (scene.width/2 - cam.w/2)
      local dry = (self.img.ah/2 - cam.h/2) / (scene.height/2 - cam.h/2)
      self.img:draw({x=cam.x*drx,y=cam.y*dry,w=cam.w,h=cam.h}, -cam.x*drx, -cam.y*dry)
    end
  }
end
