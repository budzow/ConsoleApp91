dotnet tool uninstall --global dotnet-sonarscanner 
dotnet tool install --global dotnet-sonarscanner --version 10.3
dotnet sonarscanner begin /k:"budzow_ConsoleApp91" /d:sonar.scanner.sonarcloudUrl=https://sonarcloud.io /d:sonar.cs.vscoveragexml.reportsPaths=coverage.xml /d:sonar.verbose=true /o:budzow-github /d:sonar.token=50ab82a228bc2720cd1179bafa3632abc3094c77 /d:sonar.pullrequest.key=1 /d:sonar.pullrequest.branch=feature /d:sonar.pullrequest.base=main
rem msbuild /t:rebuild -v:n
rem dotnet build --no-incremental --verbosity d
dotnet build
dotnet-coverage collect "dotnet test" -f xml -o "coverage.xml"
dotnet sonarscanner end /d:sonar.token=50ab82a228bc2720cd1179bafa3632abc3094c77
rm -rf .sonarqube
