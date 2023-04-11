vim.cmd([[
  augroup gradle_autocompile
    autocmd!
    autocmd BufWritePost *.java silent execute '!gradle build'
  augroup END
]])
