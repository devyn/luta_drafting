function ParallaxBackground(fn)
  return {
    img = LutaImage(fn),
    draw = function (self, scene)
      local camera = scene.camera
      local scx = self.img.aw / scene.width
            scx = scx - (1.0 - scx)
      local scy = self.img.ah / scene.height
            scy = scy - (1.0 - scy)
      local frx = scene.width / 2
      local fry = scene.height / 2
      local dsx = self.img.aw / 2
      local dsy = self.img.ah / 2
      local ccx = camera.x + (camera.w / 2)
      local ccy = camera.y + (camera.h / 2)
      local pox = (ccx - frx) * scx + dsx - (camera.w / 2)
      local poy = (ccy - fry) * scy + dsy - (camera.h / 2)
      self.img:draw({x=pox,y=poy,w=camera.w,h=camera.h}, -pox, -poy)
    end
  }
end
