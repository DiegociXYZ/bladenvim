vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Selecionar spacebar como leader (leader es una tecla que inicia la seleccion de comandos)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.swapfile = false -- creates a swapfile

--Activa Numeros para cada linea (default: false)
vim.opt.number = true
--Activa numeros relativos a la posicion del cursor (default: false)
vim.opt.relativenumber = true

--Si esta instalado y seleccinado nerd fonts en el terminal (default: false)
vim.g.have_nerd_font = true

--Activar mouse
vim.opt.mouse = "a"

--Unificar paste register, (vim por defecto tiene su propio buffer para copiar, con esto los unifica para utilizar el del sistema)
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

--Ignorar sensibilidad de mayusculas en busqueda a menos que se encuentren en la primera letra o haya mas de uno
vim.opt.ignorecase = true
vim.opt.smartcase = true

--Guarda historial de undo (deshacer)
vim.opt.undofile = true

--Muestra lineas largas como una sola linea (default: true)
vim.o.wrap = false
vim.o.linebreak = true --no dividir palabras

--linebreak indent para lineas muy largas Kickstarter
vim.opt.breakindent = true

--Muestra signos visuales a la izquierda de la linea
vim.opt.signcolumn = "yes"

--Extras de Kickstarter
-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
