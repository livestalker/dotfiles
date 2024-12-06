vim.g.haskell_tools = {
    hls = {
        settings = {
            haskell = {
                plugin = {
                    semanticTokens = {
                        config = {
                            classMethodToken = "method",
                            classToken = "class",
                            dataConstructorToken = "enumMember",
                            functionToken = "function",
                            moduleToken = "namespace",
                            operatorToken = "operator",
                            patternSynonymToken = "macro",
                            recordFieldToken = "property",
                            typeConstructorToken = "enum",
                            typeFamilyToken = "interface",
                            typeSynonymToken = "type",
                            typeVariableToken = "typeParameter",
                            variableToken = "variable"
                        },
                        globalOn = true
                    },
                }
            },
        },
        on_attach = function(client, bufnr, ht)
        end,
    },
}
