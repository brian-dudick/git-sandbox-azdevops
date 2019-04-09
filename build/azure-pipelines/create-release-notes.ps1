
Param(
    [string]$buildSourceBranchName,
    [string]$buildSourceVersionMessage,
    [string]$buildSourceVersion,
    [string]$buildDefinitionName,
    [string]$buildNumber
    )

    $releaseNotesMD  = [System.Text.StringBuilder]::new()
    [void]$releaseNotesMD.Append("- Build Branch: $buildSourceBranchName ")
    [void]$releaseNotesMD.Append("- Build Commit Message: $buildSourceVersionMessage ")
    [void]$releaseNotesMD.Append("- Source Version: $buildSourceVersion ")
    [void]$releaseNotesMD.Append("- Build Defition Name: $buildDefinitionName ")
    [void]$releaseNotesMD.Append("- Build Number: $buildNumber ")

    [void]$releaseNotesMD.AppendLine()
    $releaseNotes = $releaseNotesMD.ToString()

   Write-Host "##vso[task.setvariable variable=COCON_RELEASE_NOTES;]$releaseNotes)"