return {
  { 'akinsho/bufferline.nvim', enabled = false },

  { 'williamboman/mason.nvim' },

  {
    'mfussenegger/nvim-dap',
    opts = function ()
      local dap = require("dap")
      local path = require("mason-registry").get_package("php-debug-adapter"):get_install_path()
      dap.adapters.php = {
        type = "executable",
        command = "node",
        args = { path .. "/extension/out/phpDebug.js" },
      }
    end,
  },

  {
    'jay-babu/mason-nvim-dap.nvim',
    automatic_setup = true,
    handlers = {
      function (c)
        require('mason-nvim-dap').default_setup(c)
      end,
      php = function (c)
        c.configurations = {
          {
            type = 'php',
            request = 'launch',
            name = "Listen for XDebug",
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
    dependencies = { 'mfussenegger/nvim-dap' },

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
