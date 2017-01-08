function Test-Scrabble {


# https://www.reddit.com/r/dailyprogrammer/comments/5go843/20161205_challenge_294_easy_rack_management_1/    

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [string]$word,
        [Parameter(Mandatory=$true)]
        [string]$letters
        )

        $canMake = $true

        [array]$letterArray = $letters.ToCharArray()

        for ($i = 0; $i -lt $word.length; ++$i) {
    
            if ($letterArray.Contains($word[$i]) -eq $false) {
                Write-Verbose "The char array does not contain the letter $($word[$i]). Exiting..."
                $canMake = $false
                break;
            }
            Write-Verbose -message "The char array contains the letter $($word[$i]). Continuing..."
        }

    return $canMake
}