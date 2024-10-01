return {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
    config = function()
        require("nvim-web-devicons").set_icon({
--        vhd = {
--            icon = "v",
--            color = "#0b34ea",
--            cterm_color = "199",
--            name = "GraphQL",
--        },
--        txt = {
--            icon = "",
--            color = "#d3d3d3",
--            cterm_color = "199",
--            name = "GraphQL",
--        },
        })
    end,
}
