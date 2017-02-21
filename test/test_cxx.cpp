// RUN: clang++ -fsyntax-only -Xclang -verify %s -I/usr/include/x86_64-linux-gnu/c++/5/
// expected-no-diagnostics

#include <vector>
int main() {
    int x = 2;
    const int &y = x;
}
