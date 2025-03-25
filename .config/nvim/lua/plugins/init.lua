return {
  { 'akinsho/bufferline.nvim', enabled = false },

  { 'nyoom-engineering/oxocarbon.nvim' },
  { 'olivercederborg/poimandres.nvim' },
  { "LazyVim/LazyVim", opts = { colorscheme = 'poimandres' }},

  {
    "williamboman/mason.nvim",
  },

  {
    'jay-babu/mason-nvim-dap.nvim',

    ensure_installed = { 'php' },

    handlers = {
      function (c)
        require('mason-nvim-dap').default_setup(c)
      end,

      php = function (c)
        c.configurations = {
          {
            type = 'php',
            request = 'launch',
            name = 'xdebug',
            port = 9003,
            pathMappings = {
              ['/app/'] = vim.fn.getcwd() .. '/',
            },
          }
        }
        require('mason-nvim-dap').default_setup(c)
      end,
    },
  },

  {
    'lucasartore/nvim-dap-exception-breakpoints',

    config = function()
      vim.api.nvim_set_keymap(
        'n',
        '<leader>dE',
        '',
        { desc = 'Break on exceptions', callback = require('nvim-dap-exception-breakpoints') }
      )
    end
  },

  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
}
