-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.motion.leap-nvim" },
  -- { import = "astrocommunity.completion.cmp-spell" },
  { import = "astrocommunity.editing-support.dial-nvim" },
  -- import/override with your plugins folder
}
