local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

-- Choose C/C++/D
Lang_project = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "Choose a language",
    finder = finders.new_table {
      results = {
        {" C", "Open_c_templates"},
        {" C++", "Open_cc_templates"},
      },
      entry_maker = function(entry)
        return {
          value = entry,
          display = entry[1],
          ordinal = entry[1],
        }
      end
    },
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        -- vim.api.nvim_put({ selection.value[2] }, "", false, true)
        vim.cmd(string.format([[:lua %s()]], selection.value[2]))
      end)
      return true
    end,
  }):find()
end

--Show C++ templates
Open_cc_templates = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "C++ Templates",
    finder = finders.new_table {
      results = {
        {" Cmake Default Project", "cpp/init_cc_cmake_default"},
        {" Cmake Gtk4 Project", "cpp/inic_cc_cmake_gtk"},
        {" Meson Default Project", "cpp/init_cc_meson_default"},
        {" Meson Gtk4 Project", "cpp/init_cc_meson_gtk"}
      },
      entry_maker = function(entry)
        return {
          value = entry,
          display = entry[1],
          ordinal = entry[1],
        }
      end
    },
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        -- vim.api.nvim_put({ selection.value[2] }, "", false, true)
        vim.cmd(string.format([[:lua createProject("%s")]], selection.value[2]))
      end)
      return true
    end,
  }):find()
end
