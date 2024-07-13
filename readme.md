# Hashish.nvim

Hashish is the feeling of nostalgia. This plugin allows you to setup your
keymaps, using lua, like you would do in vim.

## Installation

Using `lazy.nvim`

```lua
  {
    'Chaitanyabsprip/hashish.nvim'
    lazy = false,
  }
```

## Usage

**hashish.nvim** provides functionality for the following ways of setting
keymaps: map, nmap, vmap, tmap, cmap, xmap, imap, omap, noremap, nnoremap,
vnoremap, tnoremap, cnoremap, xnoremap, inoremap, onoremap,

The syntax is similar to vim's keymaps, with slight differences.
`<method> <key> <command> [options] <description>`  
`[options]` field is optional

### Example usage

```lua
  local nnoremap = require('hashish').nnoremap
  local xnoremap = require('hashish').xnoremap
  local vnoremap = require('hashish').vnoremap

  nnoremap '<leader>Q' '<cmd>qa<cr>' 'Quit all (:qa)'
  xnoremap '&' 'g_' 'Jump to the end of the line'
  vnoremap 'J' ":m '>+1<cr>gv=gv" { silent = true } 'Move selected lines down'
  vnoremap 'K' ":m '<-2<cr>gv=gv" { silent = true } 'Move selected lines up'
```

`nnoremap '<leader>Q' '<cmd>qa<cr>' 'Quit all (:qa)'`  
`<method>    <key>      <command>     <description>`

`vnoremap  'J'   ":m '>+1<cr>gv=gv" { silent = true } 'Move selected lines down'`\
`<method> <key>      <command>          [options]           <description>`

![keymaps.png](./assets/keymaps.png)
