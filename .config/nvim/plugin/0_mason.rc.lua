local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

mason.setup({

})

lspconfig.setup {
  automatic_installation = true
}

mason_null_ls.setup({
  -- list of formatters & linters for mason to install
  ensure_installed = {
    "prettier", -- ts/js formatter
    "stylua", -- lua formatter
    "eslint_d", -- ts/js linter
    "black",  -- python formatter
    "flake8", -- python linter
  },
  -- auto-install configured formatters & linters (with null-ls)
  automatic_installation = true,
})
