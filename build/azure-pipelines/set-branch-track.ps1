
Param(
    [string]$branchSource
    )
    #$branchSource = ("$(Build.SourceBranchName)").ToString().ToUpper()
   $branchTrack = 'Feature'
   #
   if ($branchSource.ToUpper() -match 'ARA-') {
       $branchTrack = 'ARA'
   }
   elseif ($branchSource.ToUpper() -match 'ARA2-') {
       $branchTrack = 'ARA2'
   }
   elseif ($branchSource.ToUpper() -match 'CORE-') {
       $branchTrack = 'Core'
   }
   elseif ($branchSource.ToUpper() -match 'CORE2-') {
       $branchTrack = 'Core2'
   }
   elseif ($branchSource.ToUpper() -match 'MOBILE-') {
       $branchTrack = 'Mobile'
   }
   elseif ($branchSource.ToUpper() -match 'QUALITY-') {
       $branchTrack = 'Quality'
   }
   elseif ($branchSource.ToUpper() -match 'AZURE-DEVOPS-') {
       $branchTrack = 'Azure-DevOps'
   }
   elseif ($branchSource.ToUpper() -match 'TEST-') {
       $branchTrack = 'Test'
   }
   elseif ($branchSource.ToUpper() -match 'FEATURE-') {
       $branchTrack = 'Feature'
   }
   elseif ($branchSource.ToUpper() -match 'RELEASE-') {
       $branchTrack = 'Release'
   }
   elseif ($branchSource.ToUpper() -match 'ARCHITECTURE-'){
       $branchTrack = 'Architecture'
   }
   elseif ($branchSource.ToUpper() -match 'DEVELOPMENT') {
       $branchTrack = 'Development'
   }
   else { 
       $branchTrack = 'Feature'
   }

   Write-Host "Assigning branchSource: $branchSource to branchTrack: $branchTrack " 
   Write-Host "##vso[task.setvariable variable=COCON_BRANCH_TRACK;]$branchTrack"