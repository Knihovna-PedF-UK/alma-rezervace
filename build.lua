-- vlož LaTeXovou šablonu do HTML souboru
local function get_file(filename)
  local f = io.open(filename, "r")
  local content = f:read("*all")
  f:close()
  return content
end

local latex_tpl = get_file("alma-rezervace.tex"):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;")
local html_tpl  = get_file("template.html")

-- insert latex to html
local result =  html_tpl:gsub("{{template}}", 
    function() return latex_tpl end -- this is due to 
  )

print(result)
