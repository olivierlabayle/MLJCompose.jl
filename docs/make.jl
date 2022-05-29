using MLJCompose
using Documenter

DocMeta.setdocmeta!(MLJCompose, :DocTestSetup, :(using MLJCompose); recursive=true)

makedocs(;
    modules=[MLJCompose],
    authors="Olivier Labayle",
    repo="https://github.com/olivierlabayle/MLJCompose.jl/blob/{commit}{path}#{line}",
    sitename="MLJCompose.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://olivierlabayle.github.io/MLJCompose.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/olivierlabayle/MLJCompose.jl",
    devbranch="main",
)
