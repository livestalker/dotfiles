vim.g.haskell_tools = {
    hls = {
        settings = {
            haskell = {
                cabalFormattingProvider = "cabal-gild",
                checkParents = "CheckOnSave",
                checkProject = true,
                formattingProvider = "ormolu",
                maxCompletions = 40,
                plugin = {
                    alternateNumberFormat = {
                        globalOn = true
                    },
                    cabal = {
                        codeActionsOn = true,
                        completionOn = true,
                        diagnosticsOn = true
                    },
                    ["cabal-fmt"] = {
                        config = {
                            path = "cabal-fmt"
                        }
                    },
                    ["cabal-gild"] = {
                        config = {
                            path = "cabal-gild"
                        }
                    },
                    callHierarchy = {
                        globalOn = true
                    },
                    changeTypeSignature = {
                        globalOn = true
                    },
                    class = {
                        codeActionsOn = true,
                        codeLensOn = true
                    },
                    eval = {
                        config = {
                            diff = true,
                            exception = false
                        },
                        globalOn = true
                    },
                    ["explicit-fields"] = {
                        globalOn = true
                    },
                    ["explicit-fixity"] = {
                        globalOn = true
                    },
                    fourmolu = {
                        config = {
                            external = false,
                            path = "fourmolu"
                        }
                    },
                    gadt = {
                        globalOn = true
                    },
                    ["ghcide-code-actions-bindings"] = {
                        globalOn = true
                    },
                    ["ghcide-code-actions-fill-holes"] = {
                        globalOn = true
                    },
                    ["ghcide-code-actions-imports-exports"] = {
                        globalOn = true
                    },
                    ["ghcide-code-actions-type-signatures"] = {
                        globalOn = true
                    },
                    ["ghcide-completions"] = {
                        config = {
                            autoExtendOn = true,
                            snippetsOn = true
                        },
                        globalOn = true
                    },
                    ["ghcide-hover-and-symbols"] = {
                        hoverOn = true,
                        symbolsOn = true
                    },
                    ["ghcide-type-lenses"] = {
                        config = {
                            mode = "always"
                        },
                        globalOn = true
                    },
                    hlint = {
                        codeActionsOn = true,
                        config = {
                            flags = {}
                        },
                        diagnosticsOn = true
                    },
                    importLens = {
                        codeActionsOn = true,
                        codeLensOn = true
                    },
                    moduleName = {
                        globalOn = true
                    },
                    ormolu = {
                        config = {
                            external = false
                        }
                    },
                    ["overloaded-record-dot"] = {
                        globalOn = true
                    },
                    ["pragmas-completion"] = {
                        globalOn = true
                    },
                    ["pragmas-disable"] = {
                        globalOn = true
                    },
                    ["pragmas-suggest"] = {
                        globalOn = true
                    },
                    qualifyImportedNames = {
                        globalOn = true
                    },
                    rename = {
                        config = {
                            crossModule = false
                        },
                        globalOn = true
                    },
                    retrie = {
                        globalOn = true
                    },
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
                        globalOn = false
                    },
                    splice = {
                        globalOn = true
                    },
                    stan = {
                        globalOn = false
                    }
                },
                sessionLoading = "singleComponent"
            },
        },
        on_attach = function(client, bufnr, ht)
        end,
    },
}
