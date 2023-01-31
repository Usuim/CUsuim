local g = vim.g

g.dashboard_custom_header = {
" ▄████▄   █    ██   ██████  █    ██  ██▓ ███▄ ▄███▓",
"▒██▀ ▀█   ██  ▓██▒▒██    ▒  ██  ▓██▒▓██▒▓██▒▀█▀ ██▒",
"▒▓█    ▄ ▓██  ▒██░░ ▓██▄   ▓██  ▒██░▒██▒▓██    ▓██░",
"▒▓▓▄ ▄██▒▓▓█  ░██░  ▒   ██▒▓▓█  ░██░░██░▒██    ▒██",
"▒ ▓███▀ ░▒▒█████▓ ▒██████▒▒▒▒█████▓ ░██░▒██▒   ░██▒",
"░ ░▒ ▒  ░░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░░▒▓▒ ▒ ▒ ░▓  ░ ▒░   ░  ░",
"  ░  ▒   ░░▒░ ░ ░ ░ ░▒  ░ ░░░▒░ ░ ░  ▒ ░░  ░      ░",
"░         ░░░ ░ ░ ░  ░  ░   ░░░ ░ ░  ▒ ░░      ░",
"░ ░         ░           ░     ░      ░         ░",
"░",
"",
"            Usuim for C/C++ development        "
}

g.dashboard_default_executive ='telescope'
g.dashboard_custom_section = {
    a = {description = {"  Init Project"}, command = "popup Projects"},
    c = {description = {"  Open Project"}, command = "Telescope workspaces"},
    d = {description = {"  Find File"}, command = "Telescope find_files cwd=."},
    e = {description = {"  Color Scheme"}, command = "Telescope colorscheme"},
    f = {description = {"  Update Plugins"}, command = "Lazy sync"},
    h = {description = {"  Exit"}, command = "exit"}
}

g.dashboard_custom_footer = {'CUsuim 1.0.0'}
