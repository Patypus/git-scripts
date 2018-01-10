param (
    [string]$namesFile = "staleBranches.txt",
    [string]$originName = "origin"
    [bool]$dryRun = true,
 )

$branchNames = Get-Content $namesFile

foreach($branch in $branchNames) {
   $deleteCommand = "git branch -D " + $branch
   $pushCommand = "git push " + $originName + " :" + $branch
   
   if ($dryRun) {
       Write-Host "Would run:"
       Write-Host $deleteCommand
       Write-Host $pushCommand
   } else {
        iex $deleteCommand
        iex $pushCommand
   }
}