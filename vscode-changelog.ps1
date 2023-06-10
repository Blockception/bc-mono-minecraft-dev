$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'

## Set VSCode-Bedrock-Development-Extension/CHANGELOG.md to the last 1 month of git commits

## Pin file to absolute path
$CHANGELOG_FILE = "$PSScriptRoot\VSCode-Bedrock-Development-Extension\CHANGELOG.md"
## Executing directory
$EXEC_DIR = $PSScriptRoot

function GenerateReport {
    param($Folder,$Title)
    echo $Title

    echo "## $Title">> $CHANGELOG_FILE
    cd $Folder
    git log --pretty=format:"- %s" -n 20 --invert-grep --grep="auto: " >> $CHANGELOG_FILE
    cd $PSScriptRoot
}

echo "# CHANGELOG" > $CHANGELOG_FILE

GenerateReport "VSCode-Bedrock-Development-Extension" Extension
GenerateReport "VSCode-Bedrock-Development-Extension\minecraft-bedrock-schemas" Schemas
GenerateReport "BC-Minecraft-Bedrock-Diagnoser" Diagnoser
GenerateReport "BC-Minecraft-Bedrock-Command" Commands
GenerateReport "BC-Minecraft-Molang" Molang
GenerateReport "BC-Minecraft-Bedrock-Vanilla-Data" Vanilla-Data

cd VSCode-Bedrock-Development-Extension
git add .
git commit -m "auto: Updated CHANGELOG.md"
git push