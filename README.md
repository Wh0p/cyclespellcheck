## CycleSpellCheck for vim
Lets you configure languages in a list and define a shortcut to quickly cycle the vim spell checking function through those languages.

### Configuration
Some configuration options can be set in your `~/.vimrc`.

```
let g:cycle_spell_check_modes = ["en_en", "de_de"]
let g:cycle_spell_check_indicator = 0
```

The option `g:cycle_spell_check_modes` sets the list of language enabled for cycling though, the initial value is `["en_en"]`.
The option `g:cycle_spell_check_indicator` sets the langugae used at startup, the initial value is `len(g:cycle_spell_check_modes)`, which disables spell checking.

