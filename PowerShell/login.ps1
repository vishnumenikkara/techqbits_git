param(
    [string]$clientId,
    [string]$clientSecret,
    [string]$tenantId
)

# Convert the Client Secret into a secure string.
$secureClientSecret = ConvertTo-SecureString $clientSecret -AsPlainText -Force

# Create a new PSCredential object.
$credential = New-Object System.Management.Automation.PSCredential($clientId, $secureClientSecret)

# Authenticate with the service.
Connect-AzAccount -Credential $credential -ServicePrincipal -TenantId $tenantId