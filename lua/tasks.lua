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

vim.cmd([[:amenu 110.110 Projects.CMake\ Default\ Project <cmd>:lua createProject("init_cmake_default")<CR>]])

function createProject(cmd)
  local handle = io.popen("~/.config/cusuim/bin/check")
  local result = handle:read("*a")
  handle:close()

  vim.notify = require("notify")
  local name = "CUsuim"

  local status = result:gsub("[\n\r]", "")

  if status == "Empty" then
    local currentDir = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
    os.execute(string.format("~/.config/cusuim/bin/%s -n %s -v 17", cmd, currentDir))


    vim.notify("Project created", "", {
      title = name
    })
  else
    vim.notify("Directory is not empty", "error", {
      title = name
    })
  end

end
