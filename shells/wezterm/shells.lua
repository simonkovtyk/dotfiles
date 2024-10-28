local M = {}

M.default_prog = {
	"wsl.exe",
	"-d",
	"Debian",
  "--cd",
  "~"
}
M.launch_menu = {
	{
    label = "WSL Debian",
    args = {
			"wsl.exe",
			"-d",
			"Debian",
      "--cd",
      "~"
		}
  },
	{
		label = "CMD",
		args = {
			"cmd.exe",
			"/K"
		}
	},
	{
		label = "PowerShell",
		args = {
			"powershell.exe",
			"-NoLogo"
		}
	}
}

return M
