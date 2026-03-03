return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "master",
    build = ":TSUpdate",  -- runs :TSUpdate after install/update
    event = { "BufReadPost", "BufNewFile" },  -- lazy-load on file open
    opts = {
      ensure_installed = { 
        "c", "lua", "vim", "vimdoc", "query", 
        "markdown", "markdown_inline", 
        "javascript", "typescript" 
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
