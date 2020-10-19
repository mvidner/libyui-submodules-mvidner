This uses git submodules to help build consistent pieces of libyui.

**NOTE**: Use a scratch VM, because this needs to overwrite the libraries
in the system directories (/usr).

Usage:

    git clone --recurse-submodules https://github.com/mvidner/libyui-submodules
    cd libyui-submodules
    ./makeall --buildrequires --install --sudo

Later:

    git checkout open-items # an example feature branch
    git submodule update    # update all relevant repos for the branch
    ./makeall -bis
