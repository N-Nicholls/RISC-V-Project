

## Compiling

```
iverilog -o file_output file_name.v
```

iverilog is the compuler command, vvp is the simulation runtime engine. The compiler makes output in lots of formats but vvp is the default, whis is executed by the vvp program.

Note: file names = snake_case

### Compiling multiple files

```
iverilog -o file_output file1.v file2.v etc

// or make a file.txt and space file names by one line each

// counter.v
// counter_tb.v

iverilog -o file_output -c file_list.txt 
vvp file_output
```

## Running

```
vvp filename
```

## Source Root module 

Modules have heirarchies. Any module not instantiated by another is the root (of which there can be many). If there is no such module, the program can't choose a root and the designer must identify the root module as seen below. 

```
iverilog -s main -o hello hello.v
```