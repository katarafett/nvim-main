local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
    s({
        trig=";a",
        snippetType="autosnippet",
    },
    { t("\\alpha") }
    ),

    require("luasnip").snippet({
        trig=";b",
        snippetType="autosnippet",
        regTrig=false,
    },{
        t("\\beta")
    }),

    require("luasnip").snippet({
            trig=";deg",
            snippetType="autosnippet",
            regTrig=false,
            wordTrig=false,
        },
        fmta( [[
                $^{\circ}$ <>
            ]],
            {
                i(0)
            })
    ),
}
