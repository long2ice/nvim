local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("n", "<A-Left>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<A-Right>", ":BufferLineCycleNext<CR>", opts)
map("n", "<A-Up>", ":NvimTreeFocus<CR>", opts)
map("n", "<C-F>", ":Telescope find_files<CR>", opts)
map("n", "<C-P>", ":Telescope projects<CR>", opts)

local pluginKeys = {}
-- lsp 回调函数快捷键设置
pluginKeys.maplsp = function(mapbuf)
	-- rename
	mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	-- code action
	mapbuf("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	-- go xx
	mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	-- diagnostic
	mapbuf("n", "go", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	mapbuf("n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
	mapbuf("n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
	-- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
	-- leader + =
	-- mapbuf("n", "<leader>=", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
	-- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
	-- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
	-- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
	-- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
	-- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
	return {
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif vim.fn["vsnip#available"](1) == 1 then
				feedkey("<Plug>(vsnip-expand-or-jump)", "")
			elseif has_words_before() then
				cmp.complete()
			else
				fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item()
			elseif vim.fn["vsnip#jumpable"](-1) == 1 then
				feedkey("<Plug>(vsnip-jump-prev)", "")
			end
		end, { "i", "s" }),
	}
end

return pluginKeys
