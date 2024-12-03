<# 
    Programador..........: (c) 2024 Tiago Machado
    Data.................: 15/11/2024
    Observações..........: Uma script
#>

function Test-TMSParameter {
    param  (
       $ComputerName
    )
    Write-Output $ComputerName
}
Test-TMSParameter -$ComputerName "PC-WIN-002"


function Get-TMSParameterCount {
    param  (
       [string]$ParameterName
    )
    foreach($Parameter in $ParameterName ) {
        $Results = Get-Command - $ParameterName $Parameter -ErrorAction SilentlyContinue
        
        [pscustomobject]@{
        
        ParameterName = $Parameter

        NumberOfCmdlets = $Results.Count
        }

    }
}
