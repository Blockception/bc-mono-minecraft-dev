function EnableLink {
    param (
        $Folder
    )

    cd $Folder
    npm link
    cd ..
}

EnableLink BC-Minecraft-Bedrock-Command
EnableLink BC-Minecraft-Bedrock-Diagnoser
EnableLink BC-Minecraft-Bedrock-Project
EnableLink BC-Minecraft-Bedrock-Types
EnableLink BC-Minecraft-Bedrock-Vanilla-Data
EnableLink BC-Minecraft-Molang
EnableLink BC-Minecraft-Project

cd VSCode-Bedrock-Development-Extension/server
npm link bc-minecraft-bedrock-command bc-minecraft-bedrock-diagnoser bc-minecraft-bedrock-project bc-minecraft-bedrock-types bc-minecraft-bedrock-vanilla-data bc-minecraft-molang bc-minecraft-project bc-vscode-words