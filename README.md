# A Comfortable .vimrc File (Optimized for Macvim 7.3)

## Target Users

This .vimrc file is developed for programmers.  it is optimized for macvim 7.3.  but it is also useful for regular vim/gvim.

## Recommended Plug-ins

I highly recommend following plug-ins, which are also involved in this .vimrc file.

* pathogen
* vim-powerline
* vim-unimpaired
* command-t
* tagbar
* tabular

I also highly recommend 'molokai' color scheme.

## Keys

Firstly, the leader key is mapped to `,` key.

### Insert Mode

    jj           : Go back to Normal Mode

### Normal Mode

    ,a=          : Tabulate by =
    ,a:          : Tabulate by :
    ,a::         : Tabulate by ::
    ,a,          : Tabulate by ,
    ,a SPACE     : Tabulate by SPACE

    ,ev          : Edit .vimrc file in a new tab
    ,fn          : Code fold level n
    ,l           : Toggle invisible characters
    ,o           : Opem command-t
    ,O           : Flush then open command-t
    ,q           : Quit current window
    ,t           : Toggle tagbar
    ,w           : Change current window to a new tab
    ,SPACE       : Remove searching highlight results

    ,1 : Single window
    ,2 : Dual window
    ,sh : New window on left
    ,sl : New windwo on rught
    ,sk : New window on top
    ,sj : New window on bottom

    ,ss          : Toggle spell checking
    ,sc          : Correct spell error
    ,sa          : Add current word to dictionary
    ,sn          : Next spelling error
    ,sp          : Previous spelling error

    SPACE        : Page Down
    SHIFT-SPACE  : Page up
    SHIFT-UP     : Scroll window up
    SHIFT-DOWN   : Scroll window down
    CONTROL-UP   : Bubble lines up
    CONTROL-DOWN : Bubble lines down
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

    ,a=          : Tabulate by =
    ,a:          : Tabulate by :
    ,a::         : Tabulate by ::
    ,a,          : Tabulate by ,
    ,a SPACE     : Tabulate by SPACE

    ~            : Toggle to UPPER CASE, lower case and Title Case

## Installation

You can either browse and copy file vimrc online or use following command line to "install" this .vimrc file.

    git clone git://github.com/sun-li/vim.git
    cp vimrc ~/.vimrc

## Note

Please read embedded comments in the .vimrc file for details.
