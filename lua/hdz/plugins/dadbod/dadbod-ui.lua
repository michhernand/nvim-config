return {
    { 
        "kristijanhusak/vim-dadbod-ui", 
        lazy=true, 
        event = "VeryLazy",
        event = { "BufReadPost", "BufNewFile" }
    },
}
