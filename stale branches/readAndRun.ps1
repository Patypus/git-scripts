$branchNames = Get-Content "data.txt"

foreach($branch in $branchNames) {
   $deleteCommand = "echo " + $branch
   #& $deleteCommand
   iex $deleteCommand
}