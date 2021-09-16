local M = {}

M.dashboard_main_menu = {
   a = { description = { "  Find File                 SPC f f" }, command = "Telescope find_files" },
   b = { description = { "  Find Word                 SPC f w" }, command = "Telescope live_grep" },
   c = { description = { "洛 New File                  SPC f n" }, command = "DashboardNewFile" },
   d = { description = { "  Projects                  SPC p p" }, command = "Telescope project" },
}

M.dashboard_header = {
	"   .,;;;;;;;;;;;;;;,. .,;:;;;;;;;;;,.  .,;;;;;;;;;;;'..;;;;;.  .,;;;;;:,.     ",
  "    .l0KKKKKKKKKKKKKx:d0KKKKKKKKKKK0d:cxKKKKKKKKKKKK0olOKK0Kx. ;OKK0KOl.      ",
  "     'kKKKKKKKKK0K0KOdkKKK0KKKKK0KKKkodOKKK00KKKK0KKKkdOK0000c'dK000Kx.			 ",
  "     'kK0KKkolokKK0KOdkK0KKkolokKKKKkddOKKKKkolokK00KkdOK0K0KOx0K000Kx.			 ",
  "     'kK0KKl   :0K0KOokK0K0c   c0K0KkddOK0K0:   lKK0KkdOK00KKKKKK000Kx.       ",
  "     'kK00Kl   :000KOdkK0K0c   :0K0KkddOK0K0:   lKK0KkdOK0KKKK0KK0K0Kk.       ",
  "     'kK00Kc   :0K0KOdkK0K0c   :0K0KkddOK0K0:   lKKKKkdOK0KKKKKK0KK0Kk.       ",
  "     'kK00Kc   :0K00OdkK0K0c   c0K0KkddOK0K0:   lKK0KkdOK000K00KK000Kx.       ",
  "     'kK00Kc   :0K00OdkK0K0c   c0K0KkddOK0K0:   lK00KkdOK00KKKKK0000Kk.       ",
  "     'kK00Kl   :0KKKOdkKKK0c   c0K0KkddOK0K0:   lKK0KkdOK0K0O0K00000Kk.       ",
  "     'kK00Kl .;x0KKKOokKKKKx:. cKKKKkddOKKK0: .:kK00KkdOK0KOox0od0K0Kx.       ",
  "     'kK00KxokKKKKKKOokK0KK0KkoxKK0KkddOK0K0xok00KK0KxoOK0K0;:d,lKK0Kx.       ",
  "     'kK000KKKKKK0K0d'.cx0KK0KKKKK0KkddOK0KKKK000K0x:.,x0KK0;...lK00Kx.       ",
  "     'kK0000000K0kl,.   .,lk0K000KK0o;:d0KK000K0kl'    .,lO0;   lK00Kx.       ",
  "     'kK000K00Od;.         .;oO00xl'    'lk00Oo;.         .;.   lK00Kx.       ",
  "     'kK00K0x:.               .:,.        .,;.                  l000Kx.       ",
  "     .kK0kl,.                                                   .lk00o.       ",
  "     .dd;.                                                        .;do.      ",
  "      .                                                              ..      "
}

M.dashboard_footer = {
 "   ",
 "Rip and Tear with Neovim",
}

return M
