local M = {}

M.default_prog = {
	"wsl.exe",
	"-d",
	"Debian"
}
M.launch_menu = {
	{
    label = "WSL Debian",
    args = {
			"wsl.exe",
			"-d",
			"Debian"
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