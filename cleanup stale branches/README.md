# Clean up stale branches
The scripts here are to identify and clean up stale, old branches clogging up the repository. Some manual intervention is needed to get a list of branches to delete.

## Getting a list of branches

## identifing branches

## Removing branches
The powershell script *readAndRun.ps1* will read a test file and execute a a *git branch -D* for each before pushing the delete to the remote. The usage is:

```bash
    readAndRun.ps1 -namesFile "pathToFilesWithBranchNames.txt" -originName "origin" -dryRun true
```

The parameters are:

| Name        | Useage                                              | Default value     |
| ----------- | --------------------------------------------------- | ----------------- |
| namesFile   | Name of the file with the branch names to remove in | staleBranches.txt |
| originName  | Name of the remote to push changes to.              | origin            |
| dryRun      | Boolean to indicate if this is a test run.          | true              |