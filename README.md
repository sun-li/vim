# A Comfortable .vimrc File (optimized for MacVim 7.3)

## Target Users

This .vimrc file is developed for programmers.

It is optimized for MacVim 7.3.  Meanwhile, it is useful for regular Vim/gVim, too.

## Recommended Plug-ins

I highly recommend following plug-ins, which are also involved in this .vimrc file.

* pathogen
* vim-powerline
* vim-unimpaired
* command-t
* tagbar
* tabular
* nerdtree
* snipmate
* supertab
* pydoc

I also recommend 'molokai' color scheme, which is involved in this .virmc file too.

## New Keys

Firstly, the leader key is mapped to `,` key.

### Command Mode

    jk           : Go back to Normal Mode

### Insert Mode

    jk           : Go back to Normal Mode
    TAB          : Auto completion        (by plug-in supertab)

### Normal Mode

    ,a=          : Tabulate by =          (by plug-in tabular)
    ,a:          : Tabulate by :          (by plug-in tabular)
    ,a::         : Tabulate by ::         (by plug-in tabular)
    ,a,          : Tabulate by ,          (by plug-in tabular)
    ,a#          : Tabulate by #          (by plug-in tabular)
    ,a<SPACE>    : Tabulate by SPACE      (by plug-in tabular)

    ,b           : Buffers list           (by plug-in command-t)
    ,n           : Next error in QuickFix window
    ,cp          : Prev error in QuickFix window
    ,cl          : Close QuickFix window
    ,d           : Directories            (by plug-in nerdtree)
    ,ev          : Edit .vimrc file in a new tab
    ,f           : Toggle Python code fold(by plug-in python_editing)
    ,F           : Fold Python code       (by plug-in python_editing)
    ,l           : Toggle invisible characters
    ,o           : Open file list         (by plug-in command-t)
    ,O           : Flush & open file list (by plug-in command-t)
    ,p           : Paste OS clipboard
    ,q           : Close current buffer and quit current window
    ,t           : Toggle tagbar          (by plug-in tagbar)
    ,w           : Write
    ,W           : Remove tailling whitespace and write
    ,y           : Copy to OS clipboard
    ,yy          : Copy to OS clipboard
    ,<SPACE>     : Remove searching highlight results
    ,z           : Quit VIM

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

    ;;           : Switch buffer

    K            : Show Python doc        (by plug-in vim-unimpaired)

    SHIFT-SPACE  : Page up
    SPACE        : Page Down
    SHIFT-UP     : Scroll window up
    SHIFT-DOWN   : Scroll window down
    CONTROL-UP   : Bubble lines up        (by plug-in vim-unimpaired)
    CONTROL-DOWN : Bubble lines down      (by plug-in vim-unimpaired)

    BACKSPACE    : Behave like BACKSPACE under insert mode
    ENTER        : Break the line from cursor and insert a blank line

    CONTROL-h    : Jump to left window
    CONTROL-l    : Jump to right window
    CONTROL-k    : Jump to upper window
    CONTROL-j    : Jump to lower window

## Visual Mode

    ,a=          : Tabulate by =          (by plug-in tabular)
    ,a:          : Tabulate by :          (by plug-in tabular)
    ,a::         : Tabulate by ::         (by plug-in tabular)
    ,a,          : Tabulate by ,          (by plug-in tabular)
    ,a#          : Tabulate by #          (by plug-in tabular)
    ,a SPACE     : Tabulate by SPACE      (by plug-in tabular)

## Improved Keys

    ~            : Toggle among UPPER CASE, lower case and Title Case
    n/N          : Scroll to the middle
    */#          : Scroll to the middle
    CONTROL-o/i  : Scroll to the middle
    Y            : Yank to end of line

## Installation

You can either browse and copy file vimrc from github.com or use following command line to "install" this .vimrc file.

    git clone git://github.com/sun-li/vim.git
    cp vimrc ~/.vimrc

## Note

If you have interest for the technical details, please read embedded comments in the .vimrc file.
