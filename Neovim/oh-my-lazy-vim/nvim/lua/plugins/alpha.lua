if true then return {} end

return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      local logo = [[

 _            _    _             _
| |          | |  | |           | |
| |_   _  ___| | _| |_   _    __| | __ _ _   _
| | | | |/ __| |/ / | | | |  / _` |/ _` | | | |
| | |_| | (__|   <| | |_| | | (_| | (_| | |_| |
|_|\__,_|\___|_|\_\_|\__, |  \__,_|\__,_|\__, |
                      __/ |               __/ |
                     |___/               |___/
      ]]
      opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
    end,
  },
}
