return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      integrations = {
        neotree = true,
        mason = true,
        mini = {
          enabled = true,
        },
        harpoon = true,
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
