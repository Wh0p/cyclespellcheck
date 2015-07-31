" cyclespellcheck.vim
" Brief:    Cycle through spell checking configs
" Version:  1.0
" Date:     07.31.2015
" Author:   Daniel Opitz
"
" Use:

if exists("g:disable_spellcycle")
  finish
endif

if !exists("g:cycle_spell_check_modes")
  let g:cycle_spell_check_modes = ["en_us", "de_de"]
endif

if !exists("g:cycle_spell_check_indicator")
  let g:cycle_spell_check_indicator = len(g:cycle_spell_check_modes)
endif

func! CycleSpellCheck()
  if g:cycle_spell_check_indicator == len(g:cycle_spell_check_modes)
    exec ":set nospell"
    echo "Spellchecking disabled."
    let g:cycle_spell_check_indicator = 0
  else
    exec ":set spell spelllang=" . g:cycle_spell_check_modes[g:cycle_spell_check_indicator]
    echo "Spellchecking enabled: " . g:cycle_spell_check_modes[g:cycle_spell_check_indicator]
    let g:cycle_spell_check_indicator = g:cycle_spell_check_indicator + 1
  endif
endfunc

" Call the CycleSpellCheck on startup once to initialize
silent call CycleSpellCheck()

