return {
  { 'nvim-treesitter/nvim-treesitter', branch = 'master', lazy = false, build = ':TSUpdate'},

  {
    'baliestri/aura-theme',
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. '/packages/neovim')
      vim.cmd([[colorscheme aura-dark]])
    end
  },

  { 'akinsho/bufferline.nvim', enabled = false },

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
