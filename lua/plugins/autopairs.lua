local present1, autopairs = pcall(require, "nvim-autopairs")

if not (present1 or present2) then
   return
end

autopairs.setup()
