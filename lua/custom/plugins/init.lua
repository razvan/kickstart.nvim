-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup( {
	  sort_by = "case_sensitive",
	  view = {
	    width = 50,
	  },
	  renderer = {
	    group_empty = true,
	  },
	  filters = {
	    dotfiles = true,
	  },
	  update_focused_file = {
	    enable = true,
	  },
      })
    end
  },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
	  enable = true,
	  update_root = true
	},
      }
    end
  },
}
