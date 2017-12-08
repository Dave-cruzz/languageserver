# languageserver: An implementation of the Language Server Protocol for R

Install `languageserver` from github
```
devtools::install_github("REditorSupport/languageserver")
```

and configure your editor to run 
```r
R --quiet --slave -e 'languageserver::run()'
```
`languageserver::run()` reads and writes from STDIN/STDOT following Microsoft's [Language Server Protocol](https://github.com/Microsoft/language-server-protocol/blob/master/protocol.md).

## Language Clients

- [LSP](https://github.com/tomv564/LSP) is a universal Sublime Text client
```js
"lintr": {
    "command": [
        "R",
        "--quiet",
        "--slave",
        "-e",
        "languageserver::run()"
    ],
    "enabled": true,
    "languageId": "r",
    "scopes": [
        "source.r"
    ],
    "syntaxes": [
        "Packages/R/R.sublime-syntax",
        "Packages/R-Box/syntax/R Extended.sublime-syntax"
    ]
}
```
- [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim) is universal Vim/Neovim client for the Language Server Protocol
```vim
let g:LanguageClient_serverCommands = {
    \ 'r': ['R', '--quiet', '--slave', '-e', 'languageserver::run()'],
    \ }
```
- [lsp-mode](https://github.com/emacs-lsp/lsp-mode) is a universal Emacs client for the Language Server Protocol

Atom and VSCode do not have universal clients, but they have extensive supports for LSP:
- [Atom](https://github.com/atom/atom-languageclient)
- [VSCode](https://code.visualstudio.com/docs/extensionAPI/language-support)

