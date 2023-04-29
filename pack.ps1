Param (
    [String] $version = "1.0.0",
    [String] $packagesDirectory = "packages"
)

if (Test-Path $packagesDirectory) {
    Remove-Item -Path $packagesDirectory -Recurse -Force
}

New-Item -Path $packagesDirectory -ItemType "directory"

dotnet pack src/ProjectTemplates/West94.ProjectTemplates.csproj -o $packagesDirectory /p:Version=$version