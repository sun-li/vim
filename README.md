# A Comfortable .vimrc File (Optimized for Macvim 7.3)

## Target Users

This .vimrc file is developed for programmers.  It is optimized for MacVim 7.3.  But it is also useful for regular Vim/gVim.

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

I also recommend 'molokai' color scheme, which is involved in this .virmc file.

## New Keys

Firstly, the leader key is mapped to `,` key.

### Insert Mode

    jj           : Go back to Normal Mode

### Normal Mode

    ,a=          : Tabulate by =          (by plug-in tabular)
    ,a:          : Tabulate by :          (by plug-in tabular)
    ,a::         : Tabulate by ::         (by plug-in tabular)
    ,a,          : Tabulate by ,          (by plug-in tabular)
    ,a SPACE     : Tabulate by SPACE      (by plug-in tabular)

    ,b           : Buffers list           (by plug-in command-t)
    ,ev          : Edit .vimrc file in a new tab
    ,f           : Fiels list             (by plug-in nerdtree)
    ,fn          : Code fold level n
    ,l           : Toggle invisible characters
    ,o           : Files list             (by plug-in command-t)
    ,O           : Files list with flush  (by plug-in command-t)
    ,q           : Quit current window
    ,t           : Toggle tagbar          (by plug-in tagbar)
    ,w           : Write
    ,SPACE       : Remove searching highlight results

    ,1           : Single window
    ,2           : Dual window
    ,3           : Trible window
    ,sh          : New window on left
    ,sl          : New windwo on rught
    ,sk          : New window on top
    ,sj          : New window on bottom

    ,ss          : Toggle spell checking
    ,sc          : Correct spell error
    ,sa          : Add current word to dictionary
    ,sn          : Next spelling error
    ,sp          : Previous spelling error

    SPACE        : Page Down
    SHIFT-SPACE  : Page up
    SHIFT-UP     : Scroll window up
    SHIFT-DOWN   : Scroll window down
    CONTROL-UP   : Bubble lines up        (by plug-in vim-unimpaired)
    CONTROL-DOWN : Bubble lines down      (by plug-in vim-unimpaired)
    ENTER        : Insert a blank line
    SHIFT-ENTER  : Break the line from cursor and insert a blank line

    CONTROL-H    : Jump to left window
    CONTROL-L    : Jump to right window
    CONTROL-K    : Jump to upper window and maximize it
    CONTROL-J    : Jump to lower window and maximize it
    COMMAND-]    : Jump to left tab
    COMMAND-[    : Jump to right tab
    COMMAND-n    : Jump to nth tab

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
