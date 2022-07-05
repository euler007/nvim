
-- vim.g.tokyonight_style="night"
vim.cmd [[
try
   colorscheme darkplus
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
--
--  vim.
 vim.g["airline_theme"]='jellybeans'
 vim.g['airline#extensions#tabline#enabled']=1
 vim.g['airline#extensions#whitespace#mixed_indent_algo']=1
 vim.g['airline_powerline_fonts']=1
