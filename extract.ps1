
$steamDir = "C:\Program Files (x86)\Steam\steamapps\common"
$x4Dir = "$steamDir\X4 Foundations"
$catTool = "$steamDir\X Tools\XRCatTool.exe"

$catFiles = Get-ChildItem -Path "$x4Dir\*" -include "*.cat"  -exclude "*sig*"
$currentVersion = $(Get-Content $x4Dir\version.dat)
$unpackDir = "$(Get-Location)\lib\unpacked-$currentVersion"

$includePaths = $catFiles.name

New-Item -Path $unpackDir -ItemType Directory
foreach ($cat in $includePaths)
{
    & $catTool -in "$x4Dir\$cat" -out $unpackDir -exclude assets
}
#& $catTool -in $includePaths -out $unpackDir -exclude assets