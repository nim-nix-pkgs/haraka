# Package

version       = "0.1.0"
author        = "Emery Hemingway"
description   = "Haraka v2 short-input hash function"
license       = "MIT"
srcDir        = "src"

# Dependencies

requires "nim >= 0.17.3"

task test, "Runs the test suite":
  exec "nim c -r src/haraka"
