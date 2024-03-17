return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    size = function(term)
      if term.direction == 'horizontal' then
        return 15
      else
        return vim.o.columns * 0.4
      end
    end,
  },
  config = function(_, opts)
    require('toggleterm').setup(opts)
    vim.keymap.set('n', '<leader>th', ':ToggleTerm<cr>', { desc = 'Toggle [T]erminal [H]orizontal' })
    vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical<cr>', { desc = 'Toggle [T]erminal [V]ertical' })
  end,
}
