# Package

version       = "0.1.1"
author        = "Oscar Nihlgård"
description   = "A thin SQLite wrapper"
license       = "MIT"
srcDir        = "src"

# Dependencies

requires "nim >= 0.19.2"

task test, "Run tests":
    exec "nim c -r tests/tests"
    rmFile "tests/tests"

task docs, "Generate docs":
    exec "nim doc -o:docs/tiny_sqlite.html src/tiny_sqlite.nim"