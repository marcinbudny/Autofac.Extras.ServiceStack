del ..\nuget\*.*
.paket\paket pack output "..\nuget" version %GitVersion_NuGetVersionV2% buildconfig Release
for %%f in (..\nuget\*.nupkg) do (
	.paket\paket push file %%f url https://www.myget.org/F/abax apikey 33fa153d-0b66-4509-abaf-cecba9c19e73
)