local M = {}

M.fineCmdline = function()
   local present, fineCmdline = pcall(require, "fine-cmdline")
   if present then
      fineCmdline.setup {
         cmdline = {
            smart_history = true,
         },
         popup = {
            border = {
               style = "rounded",
               highlight = "TelescopeResultsBorder",
            },
         },
      }
   end
end

return M
