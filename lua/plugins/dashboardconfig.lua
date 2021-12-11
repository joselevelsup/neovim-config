local present, alpha = pcall(require, "alpha")
local present2, dashboard = pcall(require, "alpha.themes.dashboard")

if not present and present2 then
	return
end

local dashboard_menu = {
	dashboard.button("SPC f f", "  Find File", ":Telescope find_files"),
	dashboard.button("SPC f w", "  Find Word", ":Telescope live_grep"),
	dashboard.button("SPC p p", "  Projects", ":Telescope project"),
}

local Headers = {
	{
		[[=================     ===============     ===============   ========  ========]],
		[[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
		[[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
		[[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
		[[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
		[[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
		[[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
		[[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
		[[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
		[[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
		[[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
		[[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
		[[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
		[[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
		[[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
		[[||.=='    _-'                                                     `' |  /==.||]],
		[[=='    _-'                                                            \/   `==]],
		[[\   _-'                                                                `-_   /]],
		[[ `''                                                                      ``' ]],
	},
	{
		[[.;;;;;;;;;;;;;;,  ,;:;;;;;;;;;,    ,;;;;;;;;;;;'..;;;;;    ,;;;;;:]],
		[[.l0KKKKKKKKKKKKKx:d0KKKKKKKKKKK0d:cxKKKKKKKKKKKK0olOKK0Kx. ;OKK0KO]],
		[['kKKKKKKKKK0K0KOdkKKK0KKKKK0KKKkodOKKK00KKKK0KKKkdOK0000c'dK000Kx.]],
		[['kK0KKkolokKK0KOdkK0KKkolokKKKKkddOKKKKkolokK00KkdOK0K0KOx0K000Kx.]],
		[['kK0KKl   :0K0KOokK0K0c   c0K0KkddOK0K0:   lKK0KkdOK00KKKKKK000Kx.]],
		[['kK00Kl   :000KOdkK0K0c   :0K0KkddOK0K0:   lKK0KkdOK0KKKK0KK0K0Kk.]],
		[['kK00Kc   :0K0KOdkK0K0c   :0K0KkddOK0K0:   lKKKKkdOK0KKKKKK0KK0Kk.]],
		[['kK00Kc   :0K00OdkK0K0c   c0K0KkddOK0K0:   lKK0KkdOK000K00KK000Kx.]],
		[['kK00Kc   :0K00OdkK0K0c   c0K0KkddOK0K0:   lK00KkdOK00KKKKK0000Kk.]],
		[['kK00Kl   :0KKKOdkKKK0c   c0K0KkddOK0K0:   lKK0KkdOK0K0O0K00000Kk.]],
		[['kK00Kl .;x0KKKOokKKKKx:. cKKKKkddOKKK0: .:kK00KkdOK0KOox0od0K0Kx.]],
		[['kK00KxokKKKKKKOokK0KK0KkoxKK0KkddOK0K0xok00KK0KxoOK0K0;:d,lKK0Kx.]],
		[['kK000KKKKKK0K0d'.cx0KK0KKKKK0KkddOK0KKKK000K0x:.,x0KK0;...lK00Kx.]],
		[['kK0000000K0kl,.   .,lk0K000KK0o;:d0KK000K0kl'    .,lO0;   lK00Kx.]],
		[['kK000K00Od;.         .;oO00xl'    'lk00Oo;.         .;.   lK00Kx.]],
		[['kK00K0x:.               .:,.        .,;.                  l000Kx.]],
		[[.kK0kl,.                                                   .lk00o.]],
		[[.dd;.                                                        .;do.]],
		[[.                                                               ..]]
	}
}

local dashboard_footer = "Rip and Tear with Neovim"

dashboard.section.header.val = Headers[math.random(#Headers)]
dashboard.section.buttons.val = dashboard_menu
dashboard.section.footer.val = dashboard_footer

alpha.setup(dashboard.opts)
