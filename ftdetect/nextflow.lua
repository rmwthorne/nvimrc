vim.api.nvim_create_autocmd({'BufRead', "BufNewFile"}, {
  pattern = { "*.nf", "*.nextflow"},
  callback = function ()
    vim.bo.filetype = "groovy"
  end,
})
