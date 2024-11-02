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
		label = "CMD (privileged)",
		args = {
      "eledo",
			"cmd.exe",
			"/K"
		}
	},
	{
		label = "PowerShell (privileged)",
		args = {
      "eledo",
			"powershell.exe",
			"-NoLogo"
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
