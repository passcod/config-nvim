local noice = require("noice")
noice.setup({
  routes = {
    {
      filter = {
        event = "cmdline",
        find = "^%s*[/?]",
      },
      view = "cmdline",
    },
  },
});
