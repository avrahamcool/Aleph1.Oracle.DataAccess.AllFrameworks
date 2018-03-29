for %%f in (*.nuspec) do (
	nuget pack %%f
)

for %%f in (*.nupkg) do (
	nuget push %%f -Source https://api.nuget.org/v3/index.json
	DEL %%f
)
pause