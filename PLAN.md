
# Personal ENV Alpha plan

# Future plans

- Store my various personal command tools and utilities
- I may try to create a single package repo of my own utilties

## Development tooling

- mjs modules for ES6 but not needing webpack if I can avoid it


## General Tooling 

- Chalk for pretty output


## Structure

- dependencies
- |== apt.yml
- |== npm.yml
- |== snap.yml
- package.json // For project dependencies
- tests
- bin
- config
- index.js
- setup.sh

## Apt Packages
- [fzf](https://github.com/junegunn/fzf#installation)


## Fonts installation
```sh
# Download and unzip the font:
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip
unzip JetBrainsMono-1.0.0.zip
# Install the font to either the user’s font directory
mv JetBrainsMono-*.ttf ~/.local/share/fonts/
```