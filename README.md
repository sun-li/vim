# A Comfortable .vimrc File (optimized for MacVim 7.3)

## Target Users

This .vimrc file is developed for programmers.

It is optimized for MacVim 7.3.  Meanwhile, it is useful for regular Vim/gVim, too.

## Recommended Plug-ins

I highly recommend following plug-ins, which are involved in this .vimrc file.

* pathogen
* vim-powerline
* vim-unimpaired
* command-t
* tagbar
* tabular
* nerdtree
* snipmate
* supertab
* mini-buffer-explorer

I also recommend 'molokai' color scheme, which is involved in this .virmc file.

## New Keys

Firstly, the leader key is mapped to `,` key.

### Insert Mode

    jj           : Go back to Normal Mode
    TAB          : Auto completion        (by plug-in supertab)

### Normal Mode

    ,a=          : Tabulate by =          (by plug-in tabular)
    ,a:          : Tabulate by :          (by plug-in tabular)
    ,a::         : Tabulate by ::         (by plug-in tabular)
    ,a,          : Tabulate by ,          (by plug-in tabular)
    ,a<SPACE>    : Tabulate by SPACE      (by plug-in tabular)

    ,b           : Buffers list           (by plug-in command-t)
    ,d           : Directories            (by plug-in nerdtree)
    ,ev          : Edit .vimrc file in a new tab
    ,fn          : Code fold level n
    ,l           : Toggle invisible characters
    ,o           : Files list             (by plug-in command-t)
    ,O           : Files list with flush  (by plug-in command-t)
    ,q           : Close current buffer and quit current window
    ,t           : Toggle tagbar          (by plug-in tagbar)
    ,w           : Write
    ,SPACE       : Remove searching highlight results

    ,1           : Single window
    ,2           : Dual-window
    ,3           : Tri-window
    ,sh          : New window on left
    ,sl          : New windwo on rught
    ,sk          : New window on top
    ,sj          : New window on bottom

    ,ss          : Toggle spell checking
    ,sc          : Correct spell error
    ,sa          : Add current word to dictionary
    ,sn          : Next spelling error
    ,sp          : Previous spelling error

    SHIFT-SPACE  : Page up
    SPACE        : Page Down
    SHIFT-UP     : Scroll window up
    SHIFT-DOWN   : Scroll window down
    CONTROL-UP   : Bubble lines up        (by plug-in vim-unimpaired)
    CONTROL-DOWN : Bubble lines down      (by plug-in vim-unimpaired)

    CONTROL-LEFT : Previous buffer
    CONTROL-RIGHT: Next buffer
    CONTROL-h    : Previous buffer
    CONTROL-l    : Next buffer

    BACKSPACE    : Behave like BACKSPACE under insert mode
    ENTER        : Insert a blank line
    SHIFT-ENTER  : Break the line from cursor and insert a blank line

    CONTROL-p    : Jump to left window
    CONTROL-n    : Jump to right window
    CONTROL-k    : Jump to upper window
    CONTROL-j    : Jump to lower window

### Visual Mode

    ,a=          : Tabulate by =          (by plug-in tabular)
    ,a:          : Tabulate by :          (by plug-in tabular)
    ,a::         : Tabulate by ::         (by plug-in tabular)
    ,a,          : Tabulate by ,          (by plug-in tabular)
    ,a SPACE     : Tabulate by SPACE      (by plug-in tabular)

## Improved Keys

    ~            : Toggle among UPPER CASE, lower case and Title Case
    n/N          : Scroll to the middle
    */#          : Scroll to the middle
    CONTROL-o/i  : Scroll to the middle
    Y            : Yank to end of line
    h/help       : Open help in new tab

## Installation

You can either browse and copy file vimrc from github.com or use following command line to "install" this .vimrc file.

    git clone git://github.com/sun-li/vim.git
    cp vimrc ~/.vimrc

## Note

If you have interest for the technical details, please read embedded comments in the .vimrc file.
