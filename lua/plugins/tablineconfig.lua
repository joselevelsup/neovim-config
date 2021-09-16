local present, tabline = pcall(require, "tabline")

if not present then
	return
end

tabline.setup{}
