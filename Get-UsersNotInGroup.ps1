param([String]$group=$null)
$GroupDN = (Get-ADGroup '$group').DistinguishedName
Get-ADUser -Filter { -not (memberof -eq $GroupDN) }