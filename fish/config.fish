if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx emacs
    set -gx EDITOR nvim
    set -gx VISUAL $EDITOR
    set -U fish_greeting

    function ls
        command ls -aG $argv
    end

    function l
        command ls $argv
    end

    function vim
        command nvim $argv
    end

    function view
        command nvim -R $argv
    end

    function python
        command python3 $argv
    end

    function update
        brew update
        brew upgrade
        brew autoremove
        brew cleanup
    end
end
