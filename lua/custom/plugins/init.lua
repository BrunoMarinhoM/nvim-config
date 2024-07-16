-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  require('flutter-tools').setup {
    lsp = {
      settings = {
        analysisExcludedFolders = {
          vim.fn.expand '$HOME/Downloads/everything_14_02_2024/flutter/packages',
          vim.fn.expand '$HOME/Downloads/everything_14_02_2024/flutter/.pubcache',
        },
      },
    },
  }, --defaults

  require('tokyonight').setup {
    transparent = true,

    on_colors = function(colors) end,
    on_highlights = function(highlights, colors) end,
  },

  require('phpcs').setup {
    phpcs = 'phpcs',
    phpcbf = 'phpcbf',
    standard = 'PSR12',
  },
}
