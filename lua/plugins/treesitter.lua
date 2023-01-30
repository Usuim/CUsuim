require'nvim-treesitter.configs'.setup {
  ignore_install = { "norg" },
  ensure_installed = {"cpp", "c", "cmake", "json", "d", "bash", "glsl", "make", "markdown", "meson", "ninja", "toml"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
