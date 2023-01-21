local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function()
    use "wbthomason/packer.nvim"

    -- Tpope
    use "tpope/vim-fugitive"
    use "tpope/vim-surround"

    -- Theme
    use "gruvbox-community/gruvbox"

    -- General
    use "github/copilot.vim"
    use "mmbill/undotree"
    use "ThePrimeagen/vim-be-good"

    -- File switching
    use {
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim"
    }
    use {
        "ThePrimeagen/harpoon",
        requires = "nvim-lua/plenary.nvim"
    }

	if packer_bootstrap then
		require('packer').sync()
	end

end)
