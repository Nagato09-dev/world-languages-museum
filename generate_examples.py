import os

languages = {
    "C": ("c", '#include <stdio.h>\n\nint main() {\n    printf("Hello, World!\\n");\n    return 0;\n}'),
    "C++": ("cpp", '#include <iostream>\n\nint main() {\n    std::cout << "Hello, World!" << std::endl;\n    return 0;\n}'),
    "Java": ("java", 'public class Main {\n    public static void main(String[] args) {\n        System.out.println("Hello, World!");\n    }\n}'),
    "Python": ("py", 'print("Hello, World!")'),
    "JavaScript": ("js", 'console.log("Hello, World!");'),
    "TypeScript": ("ts", 'const greeting: string = "Hello, World!";\nconsole.log(greeting);'),
    "Ruby": ("rb", 'puts "Hello, World!"'),
    "PHP": ("php", '<?php\necho "Hello, World!";\n?>'),
    "Swift": ("swift", 'print("Hello, World!")'),
    "Kotlin": ("kt", 'fun main() {\n    println("Hello, World!")\n}'),
    "Go": ("go", 'package main\n\nimport "fmt"\n\nfunc main() {\n    fmt.Println("Hello, World!")\n}'),
    "Rust": ("rs", 'fn main() {\n    println!("Hello, World!");\n}'),
    "Haskell": ("hs", 'main = putStrLn "Hello, World!"'),
    "Scala": ("scala", 'object Main extends App {\n    println("Hello, World!")\n}'),
    "C#": ("cs", 'using System;\n\nclass Program {\n    static void Main() {\n        Console.WriteLine("Hello, World!");\n    }\n}'),
    "Objective-C": ("m", '#import <Foundation/Foundation.h>\n\nint main() {\n    @autoreleasepool {\n        NSLog(@"Hello, World!");\n    }\n    return 0;\n}'),
    "Perl": ("pl", 'print "Hello, World!\\n";'),
    "R": ("r", 'cat("Hello, World!\\n")'),
    "Dart": ("dart", 'void main() {\n  print("Hello, World!");\n}'),
    "Elixir": ("ex", 'IO.puts "Hello, World!"'),
    "Clojure": ("clj", '(println "Hello, World!")'),
    "Erlang": ("erl", '-module(hello).\n-export([hello_world/0]).\n\nhello_world() ->\n    io:format("Hello, World!~n").'),
    "F#": ("fs", 'printfn "Hello, World!"'),
    "Groovy": ("groovy", 'println "Hello, World!"'),
    "Lua": ("lua", 'print("Hello, World!")'),
    "OCaml": ("ml", 'print_endline "Hello, World!"'),
    "Pascal": ("pas", 'program HelloWorld;\nbegin\n  writeln(\'Hello, World!\');\nend.'),
    "Fortran": ("f90", 'program hello\n  print *, "Hello, World!"\nend program hello'),
    "Ada": ("adb", 'with Ada.Text_IO; use Ada.Text_IO;\nprocedure Hello is\nbegin\n  Put_Line ("Hello, World!");\nend Hello;'),
    "COBOL": ("cob", '       IDENTIFICATION DIVISION.\n       PROGRAM-ID. HELLO-WORLD.\n       PROCEDURE DIVISION.\n           DISPLAY "Hello, World!".\n           STOP RUN.'),
    "Lisp": ("lisp", '(format t "Hello, World!~%")'),
    "Scheme": ("scm", '(display "Hello, World!") (newline)'),
    "Prolog": ("pl", ':- initialization(main).\nmain :- write(\'Hello, World!\'), nl, halt.'),
    "Julia": ("jl", 'println("Hello, World!")'),
    "Nim": ("nim", 'echo "Hello, World!"'),
    "Zig": ("zig", 'const std = @import("std");\n\npub fn main() !void {\n    std.debug.print("Hello, World!\\n", .{});\n}'),
    "V": ("v", 'fn main() {\n    println(\'Hello, World!\')\n}'),
    "Crystal": ("cr", 'puts "Hello, World!"'),
    "D": ("d", 'import std.stdio;\n\nvoid main() {\n    writeln("Hello, World!");\n}'),
    "Solidity": ("sol", '// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\ncontract HelloWorld {\n    function greet() public pure returns (string memory) {\n        return "Hello, World!";\n    }\n}'),
    "Assembly (x86)": ("asm", 'section .data\n    msg db "Hello, World!", 0xA\n    len equ $ - msg\n\nsection .text\n    global _start\n\n_start:\n    mov eax, 4\n    mov ebx, 1\n    mov ecx, msg\n    mov edx, len\n    int 0x80\n\n    mov eax, 1\n    xor ebx, ebx\n    int 0x80'),
    "Bash": ("sh", '#!/bin/bash\necho "Hello, World!"'),
    "PowerShell": ("ps1", 'Write-Host "Hello, World!"'),
    "SQL": ("sql", 'SELECT "Hello, World!";'),
    "MATLAB": ("m", 'disp(\'Hello, World!\')'),
    "Verilog": ("v", 'module hello;\n  initial begin\n    $display("Hello, World!");\n    $finish;\n  end\nendmodule'),
    "VHDL": ("vhd", 'library ieee;\nuse ieee.std_logic_1164.all;\n\nentity hello_world is\nend hello_world;\n\narchitecture behavior of hello_world is\nbegin\n  process\n  begin\n    report "Hello, World!";\n    wait;\n  end process;\nend behavior;'),
    "Smalltalk": ("st", 'Transcript show: \'Hello, World!\'; cr.'),
    "ActionScript": ("as", 'package {\n    import flash.display.Sprite;\n    public class HelloWorld extends Sprite {\n        public function HelloWorld() {\n            trace("Hello, World!");\n        }\n    }\n}'),
    "Forth": ("forth", '.( Hello, World!) CR'),
    "Brainfuck": ("bf", '++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.'),
    "Tcl": ("tcl", 'puts "Hello, World!"'),
    "PostScript": ("ps", '/Helvetica findfont 12 scalefont setfont\n72 72 moveto (Hello, World!) show\nshowpage')
}

os.makedirs("examples", exist_ok=True)

for name, (ext, code) in languages.items():
    filename = f"{name.lower().replace(' ', '_').replace('(', '').replace(')', '').replace('#', 'sharp').replace('++', 'plusplus')}.{ext}"
    with open(os.path.join("examples", filename), "w") as f:
        f.write(code)

print(f"Gerados {len(languages)} arquivos de exemplo.")
