local wk = require("which-key")

wk.register({
    n = {
        name = "neorg",
        w = { "workspace" },
        r = { "return" },
        j = {
            name = "journal",
            t = "today",
            y = "yesterday",
            o = "tomorrow",
        }
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
