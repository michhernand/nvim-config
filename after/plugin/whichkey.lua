local wk = require("which-key")

wk.register({
    n = "Hydrate",
    z = {
        name = "telekasten",
        f = "find_notes",
        g = "search_notes",
        d = "goto_today",
        z = "follow_link",
        n = "new_note",
        c = "show_calendar",
        b = "show_backlinks",
        I = "insert_image_link",
    },
    o = {
        name = "go",
        b = "build",
        l = "install",
        t = "test",
        y = "test func",
        u = "debug",
        d = "goto def",
        i = "add to imports",
        p = "drop from imports",
        r = "rename obj",
        c = "coverage",
    },
    f = {
        name = "telescope",
        f = { "find files" },
        g = { "live grep" },
        b = { "find buffers" },
        h = { "find help tags" },
        s = { "in-file grep" },
    },
    g = {
        name = "git",
        s = { "status" },
        g = { "lazygit" },
    },
    p = {
        name = "project",
        v = { "view files" },
    },
    u = {
        "undo tree",
        u = { "launch" },
    },
    t = {
        "nvim tree",
        t = { "toggle" },
        c = { "collapse tree" },
    },
   d = {
       "delete (keep register)"
   },
   y = {
       "yank (clipboard)"
   },
   Y = {
       "yank line (clipboard)"
   },
   r = {
       name = "refactoring",
       e = { "extract" },
       f = { "extract to file" },
       v = { "extract variable" },
       i = { "inline variable" },
       b = { "extract block" },
       g = { "extract blcok to file" },
   },
   s = {
       name = "split",
       v = "vertical",
       h = "horizontal",
   },
   w = {
       name = "split",
       v = "vertical",
       h = "horizontal",
   },
   b = { "black" }
}, { prefix = "<leader>"})
