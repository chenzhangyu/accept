# An Approximate Compiler

This is the documentation for ACCEPT, an *approximate compiler* for C and C++ programs based on [Clang][]. Think of it as your assistant in breaking your program in small ways to trade off correctness for performance.

This is also the home for ACCEPT's [benchmark suite of approximate C/C++ applications][accept-apps].

Please direct comments or questions to [Adrian Sampson][adrian] or to a [GitHub issue][ghi].

[adrian]: http://homes.cs.washington.edu/~asampson/
[ghi]: https://github.com/uwsampa/accept/issues/new
[accept-apps]: https://github.com/uwsampa/accept-apps
[Clang]: http://clang.llvm.org/


## Building

Here's how to build the ACCEPT toolchain in four easy steps.

#### Clone

Clone [the repository][gh] to your Unix-like system. Use the submodules flag to grab
the project's dependencies:

```sh
$ git clone --recurse-submodules https://github.com/uwsampa/accept.git
```

[gh]: https://github.com/uwsampa/accept

#### CMake, Ninja, and virtualenv

There are three dependencies you need to install yourself before getting started. How you install them depends on your OS:

* [CMake][], which the easiest route to building LLVM.
* [Ninja][], a nice companion to CMake.
* [virtualenv][], a Python packaging tool. You can usually get this just by
  typing `pip install virtualenv`. For OS X with homebrew installed, you need to first intall python: `brew install python`.

(If you prefer not to use Ninja, you can fairly easily edit the relevant scripts to have CMake write Makefiles instead.)

#### make setup

Inside this directory (the repository containing this README.md file), type `make setup`. This will do several things:

* Download and extract the [LLVM][llvm-dl] source.
* Build LLVM and our modified Clang frontend using CMake and Ninja. (This can take a long time.) The programs and libraries are installed into the `build/built/` subdirectory.
* Build the ACCEPT-specific extensions to LLVM and Clang.
* Create a Python [virtual environment][virtualenv] and install the driver's dependencies therein.
Take a look inside the Makefile if you're curious about how to run any of these steps individually.

You should now be able to use the `bin/enerclang` and `bin/enerclang++` programs to compile EnerC programs. You can type `make test` to make sure everything's working.

[llvm-dl]: http://llvm.org/releases/index.html
[Ninja]: http://martine.github.com/ninja/
[CMake]: http://www.cmake.org/
[virtualenv]: http://www.virtualenv.org/


## Using

The main entry point to the ACCEPT toolchain is the `bin/accept` script. For
convenience, you can put this on your `$PATH` by running `source activate.sh`. Or you can add something like this to your [shell profile (.profile or .bashrc file)][dotprofile]:

```sh
accept=~/path/to/your/git/checkout
export PATH=$accept/bin:$PATH
```

[dotprofile]: http://askubuntu.com/questions/148337/adding-a-directory-to-a-path-in-profile

Follow the [tutorial](tutorial.md) to learn how to use ACCEPT to optimize your favorite program. If you get stuck, check out the [command-line interface reference](cli.md).
