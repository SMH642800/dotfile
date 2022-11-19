local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({
    -- list of servers for mason to install
    ensure_installed = {
        -- "tsserver",
        -- "html",
        -- "cssls",
        -- "tailwindcss",
        -- "sumneko_lua",
        -- "emmet_ls",
    },

    PATH = "prepend", -- "skip" seems to cause the spawning error_msg

    -- auto-install configured servers (with lspconfig)
    -- automatic_installation = true, -- not the same as ensure_installed
})

lspconfig.setup {
    automatic_installation = true
}
