$pscredential = Get-Credential -UserName $sp.AppId
Connect-AzAccount -ServicePrincipal -Credential $pscredential -Tenant $tenantId

$rg = Get-azurermresourcegroup -resourcegroupname "RGName" -Location "eastus" -force

foreach($r in $rg)
{
   $r | ConvertTo-json | Out-File "output.json" -Append

}
