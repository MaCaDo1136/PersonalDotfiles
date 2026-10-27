return {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPost', 'BufNewFile' },
    build = ':TSUpdate',
    config = function()
       local status_ok, configs = pcall(require, "nvim-treesitter.configs")
        if not status_ok then
            return
        end
	 require('nvim-treesitter.configs').setup({
            ensure_installed = {
                'c',
                'cpp',
                'lua',
                'javascript',
                'typescript',
                'html',
                'css',
                'rust',
                'go',
                'python',
                'vim',
                'vimdoc',
            },
            highlight = {
                enable = true,
                use_languagetree = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        })
    end,
}
