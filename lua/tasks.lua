require('utils.telescope')

function readFile(file)
    local f = assert(io.open(file, "rb"))
    local content = f:read("*all")
    f:close()
    return content
end

local path = string.format("%s/.cusuim.json",vim.fn.getcwd())

vim.notify = require("notify")
local notfiy_name = "CUsuim"

function RunCode()
  local handle = io.popen(string.format("jq -r '.run' %s", path))
  local result = handle:read("*a")
  handle:close()

  vim.notify("Running...", "", {
    title = notfiy_name,
    timeout = 500
  })

  vim.cmd(":FloatermNew --autoclose=0 " .. result)
end

function BuildCode()
  local handle = io.popen(string.format("jq -r '.build' %s", path))
  local result = handle:read("*a")
  handle:close()

  vim.notify("Building...", "", {
    title = notfiy_name,
    timeout = 500
  })

  vim.cmd(":FloatermNew --autoclose=0 " .. result)
end

function BuildAndRun()
  local handle = io.popen(string.format("jq -r '.buildAndRun' %s", path))
  local result = handle:read("*a")
  handle:close()

  vim.notify("Building and Running...", "", {
    title = notfiy_name,
    timeout = 500
  })

  vim.cmd(":FloatermNew --autoclose=0 " .. result)
end

function ReconfigureBuildDirectoriy()
  local handle = io.popen(string.format("jq -r '.reconfigureBuildDir' %s", path))
  local result = handle:read("*a")
  handle:close()

  vim.notify("Reconfiguring...", "", {
    title = notfiy_name,
    timeout = 500
  })

  vim.cmd(":FloatermNew --autoclose=0 " .. result)
end


function UpClangd()
  local handle = io.popen(string.format("jq -r '.upclangd' %s", path))
  local result = handle:read("*a")
  handle:close()

  vim.cmd(":FloatermNew --autoclose=0 " .. result)
end

function createProject(cmd)
  local handle = io.popen("~/.config/cusuim/bin/check")
  local result = handle:read("*a")
  handle:close()

  local status = result:gsub("[\n\r]", "")

  if status == "Empty" then
    local currentDir = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
    vim.cmd(string.format(":call system('~/.config/cusuim/bin/%s -n %s -v 17')", cmd, currentDir))


    vim.notify("Project created", "", {
      title = notfiy_name
    })
  else
    vim.notify("Directory is not empty", "error", {
      title = notfiy_name
    })
  end

end

vim.cmd("command! Run lua RunCode()")
vim.cmd("command! Build lua BuildCode()")
vim.cmd("command! BuildAndRun lua BuildAndRun()")
vim.cmd("command! UpClangd lua UpClangd()")
vim.cmd("command! ReconfigureBuildDir lua ReconfigureBuildDirectoriy()")
