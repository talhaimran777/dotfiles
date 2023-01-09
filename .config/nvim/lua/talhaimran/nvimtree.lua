local status_ok, nvimtree = pcall(require, "nvim-tree")

if not status_ok then
  return
end

nvimtree.setup{
  view = {
    adaptive_size = true
  },
}
