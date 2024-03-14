return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      '<leader>hw',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      mode = 'n',
      desc = 'Open [H]arpoon [W]indow',
    },
    {
      '<leader>hf',
      function()
        require('harpoon'):list():append()
      end,
      mode = 'n',
      desc = '[H]arpoon [F]ile',
    },
    {
      '<leader>1',
      function()
        require('harpoon'):list():select(1)
      end,
      mode = 'n',
      desc = 'Harpoon to file [1]',
    },
    {
      '<leader>2',
      function()
        require('harpoon'):list():select(2)
      end,
      mode = 'n',
      desc = 'Harpoon to file [2]',
    },
    {
      '<leader>3',
      function()
        require('harpoon'):list():select(3)
      end,
      mode = 'n',
      desc = 'Harpoon to file [3]',
    },
    {
      '<leader>4',
      function()
        require('harpoon'):list():select(4)
      end,
      mode = 'n',
      desc = 'Harpoon to file [4]',
    },
    {
      '<leader>5',
      function()
        require('harpoon'):list():select(5)
      end,
      mode = 'n',
      desc = 'Harpoon to file [5]',
    },
  },
  config = function()
    require('harpoon'):setup()
  end,
}
