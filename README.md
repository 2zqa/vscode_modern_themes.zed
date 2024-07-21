# VS Code Modern Themes

This extension contains ports of the default Visual Studio Code themes, Modern Dark and Modern Light for [Zed](https://zed.dev).

## Updating the themes

1. Open a clean installation of VS Code.
2. For both Modern Light and Modern Dark:
    1. Set the theme to the desired theme.
    2. Open the command palette and run the `Developer: Generate Color Theme From Current Settings` command.
    3. Uncomment everything: Select everything and press <kbd>Ctrl + K Ctrl + U</kbd>. (Or by command: `Remove Line Comments`)
    4. Save the theme files in this repository.
3. Run the [`update.sh`](update.sh) script.
