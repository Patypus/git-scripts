$branchNames = Get-Content "staleBranches.txt"

foreach($branch in $branchNames) {
   $deleteCommand = "git branch -D " + $branch
   $pushCommand = "git push origin :" + $branch
   
   iex $deleteCommand
   iex $pushCommand
}