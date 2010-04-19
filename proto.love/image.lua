function LutaImage(fname)
  local id = love.image.newImageData(fname)
  local grid = {w = math.ceil(id:getWidth()/128),
                h = math.ceil(id:getHeight()/128)}
  for r = 1, grid.h do
    for c = 1, grid.w do
      local sect = love.image.newImageData(128, 128)
      sect:paste(id, 0, 0, (c-1)*128, (r-1)*128, 128, 128)
      grid[table.maxn(grid)+1] = love.graphics.newImage(sect)
    end
  end

  grid.draw = LutaImage_Draw
  return grid
end

function LutaImage_Draw(self, range, x, y, scale)
  for i, v in ipairs(self) do
    local r = math.floor(i / self.w)
    local c = i % self.w
    if c == 0 then
      r = r - 1
      c = self.w
    end
    local cx = (c-1)*128
    local cy = r*128

    if cx >= range.x-127 and cx <= range.x+range.w+127
       and cy >= range.y-127 and cy <= range.y+range.h+127 then

      local fx, fy = x + cx * scale, y + cy * scale

      love.graphics.setColor(255, 255, 255, 255)
      love.graphics.draw(v, fx, fy, 0, scale)
    end
  end
end
