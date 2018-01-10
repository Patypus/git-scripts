param (
    [string]$namesFile = "staleBranches.txt",
    [bool]$dryRun = true,
 )

$branchNames = Get-Content $namesFile

foreach($branch in $branchNames) {
   $deleteCommand = "git branch -D " + $branch
   $pushCommand = "git push origin :" + $branch
   if ($dryRun) {
       Write-Host "Would run:"
       Write-Host $deleteCommand
       Write-Host $pushCommand
   } else {
        iex $deleteCommand
        iex $pushCommand
   }
}