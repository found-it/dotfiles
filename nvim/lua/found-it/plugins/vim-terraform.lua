return {
  "hashivim/vim-terraform",
  init = function()
    vim.api.nvim_create_autocmd({'BufWritePre'}, {
      pattern = '*.tf',
      command = "TerraformFmt"
    })
  end,
}
