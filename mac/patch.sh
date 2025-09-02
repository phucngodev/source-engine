#!/bin/bash

GAME_PATH="/Users/$USER/Library/Application Support/Steam/steamapps/common/Half-Life 2"

echo "Patching game for mac arm."
rm -rf "$GAME_PATH/bin"
rm -rf "$GAME_PATH/hl2/bin"
rm -rf "$GAME_PATH/hl2_osx"
cp -rf ./hl2/bin "$GAME_PATH/bin"
cp -rf ./hl2/hl2/bin "$GAME_PATH/hl2/bin"
cp ./hl2/hl2_launcher "$GAME_PATH/hl2_osx"
echo "Done patching game. start the game from steam."
