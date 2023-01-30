function readFile(file)
    local f = assert(io.open(file, "rb"))
    local content = f:read("*all")
    f:close()
    return content
end

local path = string.format("%s/.cusuim.json",vim.fn.getcwd())


function RunCode()
  local handle = io.popen(string.format("jq -r '.run' %s", path))
  local result = handle:read("*a")
  handle:close()

  vim.cmd(":FloatermNew --autoclose=0 " .. result)
end

function BuildCode()
  local handle = io.popen(string.format("jq -r '.build' %s", path))
  local result = handle:read("*a")
  handle:close()

  vim.cmd(":FloatermNew --autoclose=0 " .. result)
end

function UpClangd()
  local handle = io.popen(string.format("jq -r '.upclangd' %s", path))
  local result = handle:read("*a")
  handle:close()

  vim.cmd(":FloatermNew --autoclose=0 " .. result)
end
