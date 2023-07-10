// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

// Obs:
//     You may want to change the HEX value of black in $HOME/.hyper_plugins/node_modules/hyper-oceanic-next/index.js
//     to add some transparency. "#1b2b34" == "rgba(13,25,19,.5)"

module.exports = {
    config: {

        hyperWindowSize: {
            width: 1100,
            height: 440,
        },

        // opacity: {
        //     focus: 0.9,
        //     blur: 0.9,
        //     // opacity: 0.3
        // },


        hyperTransparent: {
            backgroundColor: '#222C31',
            opacity: 0.2,
            vibrancy: 'ultra-dark' // ['', 'dark', 'medium-light', 'ultra-dark']
        },


        // choose either `'stable'` for receiving highly polished,
        // or `'canary'` for less polished but more frequent updates
        updateChannel: 'stable',

        // default font size in pixels for all tabs
        fontSize: 13,

        // font family with optional fallbacks
        fontFamily: '"Fira Mono for Powerline"', //, FiraCode, Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

        // default font weight: 'normal' or 'bold'
        fontWeight: 'normal',

        // font weight for bold characters: 'normal' or 'bold'
        fontWeightBold: 'bold',

        // line height as a relative unit
        lineHeight: 1,

        // letter spacing as a relative unit
        letterSpacing: 0,

        // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
        cursorColor: 'rgba(248,28,229,0.8)',

        // terminal text color under BLOCK cursor
        cursorAccentColor: '#000',

        // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
        cursorShape: 'BLOCK',

        // set to `true` (without backticks and without quotes) for blinking cursor
        cursorBlink: false,

        // color of the text
        foregroundColor: '#fff',

        // terminal background color
        // opacity is only supported on macOS
        // backgroundColor: '#222C31',
        // backgroundColor: 'rgba(13,25,19,.5)',

        // terminal selection color
        selectionColor: 'rgba(248,28,229,0.3)',

        // border color (window, tabs)
        borderColor: '#222C31',

        // custom CSS to embed in the main window
        css: '',

        // custom CSS to embed in the terminal window
        termCSS: '',

        // if you're using a Linux setup which show native menus, set to false
        // default: `true` on Linux, `true` on Windows, ignored on macOS
        showHamburgerMenu: '',

        // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
        // additionally, set to `'left'` if you want them on the left, like in Ubuntu
        // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
        showWindowControls: '',

        // custom padding (CSS format, i.e.: `top right bottom left`)
        padding: '12px 14px',

        // the full list. if you're going to provide the full color palette,
        // including the 6 x 6 color cubes and the grayscale map, just provide
        // an array here instead of a color map object
        colors: {
            black: '#1A262D',
            red: '#E8545D',
            green: '#8FBF8C',
            yellow: '#F9BF61',
            blue: '#5C90C3',
            magenta: '#BD8ABB',
            cyan: '#56AAA9',
            white: '#9DA4B1',
            lightBlack: '#2E363D',
            lightRed: '#FF5370',
            lightGreen: '#8FBF8C',
            lightYellow: '#F9BF61',
            lightBlue: '#5C90C3',
            lightMagenta: '#BD8ABB',
            lightCyan: '#56AAA9',
            lightWhite: '#D3DAE5'
        },

        // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
        // if left empty, your system's login shell will be used by default
        //
        // Windows
        // - Make sure to use a full path if the binary name doesn't work
        // - Remove `--login` in shellArgs
        //
        // Bash on Windows
        // - Example: `C:\\Windows\\System32\\bash.exe`
        //
        // PowerShell on Windows
        // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
        shell: '',

        // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
        // by default `['--login']` will be used
        shellArgs: ['--login'],

        // for environment variables
        env: {},

        // set to `false` for no bell
        bell: 'false',

        // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
        copyOnSelect: false,

        // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
        defaultSSHApp: true,

        // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
        // selection is present (`true` by default on Windows and disables the context menu feature)
        quickEdit: false,

        // choose either `'vertical'`, if you want the column mode when Option key is hold during selection (Default)
        // or `'force'`, if you want to force selection regardless of whether the terminal is in mouse events mode
        // (inside tmux or vim with mouse mode enabled for example).
        macOptionSelectionMode: 'vertical',

        // URL to custom bell
        // bellSoundURL: 'http://example.com/bell.mp3',

        // Whether to use the WebGL renderer. Set it to false to use canvas-based
        // rendering (slower, but supports transparent backgrounds)
        webGLRenderer: true,

    // for advanced config flags please refer to https://hyper.is/#cfg
    },

    // a list of plugins to fetch and install from npm
    // format: [@org/]project[#version]
    // examples:
    //   `hyperpower`
    //   `@company/project`
    //   `project#1.0.1`
    plugins: [
        "hyper-window-size",
        "hyper-quit",
        // "hyper-opacity",
        // 'hyper-transparent',
        "hyper-oceanic-next"
    ],

    // in development, you can create a directory under
    // `~/.hyper_plugins/local/` and include it here
    // to load it and avoid it being `npm install`ed
    localPlugins: [],

    keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
    },

};
