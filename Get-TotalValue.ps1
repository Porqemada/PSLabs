function Get-TotalValue {
    [CmdletBinding()]
    param (
        # Array
        [Parameter(Mandatory)]
        [Array]
        $Path
    )
    
    begin {
        [Int]$_totalValue = 0
    }
    
    process {
        $_content = Get-Content $Path
        $_content | ForEach-Object {
            
            [Int]$_totalValue = $_totalValue + $_
            Write-Host $_totalValue -ForegroundColor Cyan
        }
    }   
    
    end {
        return [Int]$_totalValue
    }
}

Get-TotalValue .\Lab4_Input.txt