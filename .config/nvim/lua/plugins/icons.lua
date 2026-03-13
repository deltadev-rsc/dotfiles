require'nvim-web-devicons'.get_icons()

require'nvim-web-devicons'.setup {
 -- your personal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  },
  lua = {
    icon = "󰢱",
    color = "#89B4FA",
    name = "Lua"
  },
  c = {
    icon = "",
    color = "#74C7EC",
    name = "C"
  },
  h = {
    icon = "",
    color = "#CBA6F7",
    name = "H"
  },
  fortarn = {
    icon = "",
    color = "#cba6f7",
    name = "Fortarn"
  }
 };
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = false;
 -- globally enable "strict" selection of icons - icon will be looked up in
 -- different tables, first by filename, and if not found by extension; this
 -- prevents cases when file doesn't have any extension but still gets some icon
 -- because its name happened to match some extension (default to false)
 strict = true;
 -- set the light or dark variant manually, instead of relying on `background`
 -- (default to nil)
 variant = "light|dark";
 -- override blend value for all highlight groups :h highlight-blend.
 -- setting this value to `0` will make all icons opaque. in practice this means
 -- that icons width will not be affected by pumblend option (see issue #608)
 -- (default to nil)
 blend = 0;
 -- same as `override` but specifically for overrides by filename
 -- takes effect when `strict` is true
 override_by_filename = {
  [".gitignore"] = {
    icon = "",
    color = "#f1502f",
    name = "Gitignore"
  },
  ["Makefile"] = {
    icon = "",
    color = "#FAB387",
    name = "make"
  }
 };
 -- same as `override` but specifically for overrides by extension
 -- takes effect when `strict` is true
 override_by_extension = {
  ["log"] = {
    icon = "",
    color = "#81e043",
    name = "Log"
  },
  ["asm"] = {
    icon = "",
    color = "#89b4fa",
    name = "Asm"
  },
  ["ld"] = {
    icon = "",
    color = "#f2cdcd",
    name = "LinkerScript"
  },
  ["json"] = {
    icon = "",
    color = "#f9e2af",
    name = "JSON"
  },
  ["cpp"] = {
    icon = "",
    color = "#74c7ec",
    name = "Cpp"
  }
 };
 -- same as `override` but specifically for operating system
 -- takes effect when `strict` is true
 override_by_operating_system = {
  ["apple"] = {
    icon = "",
    color = "#A2AAAD",
    cterm_color = "248",
    name = "Apple",
  },
 };
}
