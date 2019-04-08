while ($true)
        {    
	$vpnName = "your VPN connection";
    $vpn = Get-VpnConnection -Name $vpnName -AllUserConnection;
    if($vpn.ConnectionStatus -eq "Disconnected"){
    rasdial "$vpnName";
    }
	start-sleep -seconds 30
		}