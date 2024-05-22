local Plugins = {}

function Plugins.get()
  return {
    {
      "folke/tokyonight.nvim",
      lazy = false, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
        -- load the colorscheme here
        vim.cmd([[colorscheme tokyonight]])
      end,
    },
    {
      "startup-nvim/startup.nvim",
      dependencies = {
	      "nvim-telescope/telescope.nvim",
	      "nvim-lua/plenary.nvim",
      },
      config = function()
	      require("startup").setup()
       end,
    },
    {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("nvim-tree").setup {}
      end,
    },
    {
      "nvim-lualine/lualine.nvim",
      dependencies = {
        "nvim-tree/nvim-web-devicons"
      },
      config = function()
	      require("lualine").setup()
      end,
    },
  }
end

return Plugins

