local status_ok, auto_session = pcall(require, "auto-session")

if not status_ok then
  return
end

auto_session.setup()
