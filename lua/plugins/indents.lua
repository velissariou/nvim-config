return {
  ------------------------------------------------------------------
  -- Indent Blankline (ibl)
  ------------------------------------------------------------------
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      local hooks = require("ibl.hooks")

      ----------------------------------------------------------------
      -- Use subtle colors from Tokyo Night
      ----------------------------------------------------------------
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        local colors = require("tokyonight.colors").setup()

        -- faint indent guides
        vim.api.nvim_set_hl(0, "IblIndent", {
          fg = colors.dark0,
          nocombine = true,
        })

        -- active scope highlight
        vim.api.nvim_set_hl(0, "IblScope", {
          fg = colors.blue,
          bold = false,
        })
      end)

      ----------------------------------------------------------------
      -- ibl setup (minimal & clean)
      ----------------------------------------------------------------
      require("ibl").setup({
        indent = {
          char = "▏",
          highlight = "IblIndent",
        },

        scope = {
          enabled = true,
          highlight = "IblScope",
          show_start = false,
          show_end = false,
        },

        whitespace = {
          remove_blankline_trail = false,
        },
      })
    end,
  },
  ------------------------------------------------------------------
  -- Rainbow Delimiters
  ------------------------------------------------------------------
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufReadPost",
  },
}
