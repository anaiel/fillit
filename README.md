# FILLIT

![grade](https://i.imgur.com/hReuUFV.png "100 / 100")

This project was completed in december 2018 as part of the 42 school cursus. The instructions were to create a program that could arrange a set of 1 to 26 tetriminos in the smallest square possible and print the result. The complete instructions can be found in the **resources/Subject.en.pdf** file.

This was a group project, completed with [Xeska](https://github.com/Xeska).

![path to libft](https://i.imgur.com/osfWGCy.png "Cursus start > 42 Commandements > Piscine Reloaded > Libft > Get_Next_Line > Fillit")

*Basic algorithms, input/output*

## Getting Started

```
git submodule init
git submodule update --remote --merge
```
To get the latest version of the [libft library](https://github.com/anaiel/libft). Then run the command `make` to create the **fillit** executable.

## Running the tests

```
./fillit tetriminos_file
```
Provided tetriminos_file is a valid file and the tetriminos inside it are valid, the program will print the smallest square possible filled with the given tetriminos, identified by a letter.

### Example

```
%> ./fillit test_file
AAEEE
AADEC
.DD.C
BBD.C
.BB.C
```

### Tetriminos file

Tetriminos file should follow certain rule. Each piece should be reprensented by 4 '#' characters placed in a 4 by 4 table ('.' represents an empty space). The pieces should be separated from one another by a new line. The only allowed pieces are those which exist in the tetris game. The orientation of the pieces matters since the program does not allow for a tetrimino to be rotated.
Example:
```
.##.
.##.
....
....

....
.##.
.#..
.#..

....
####
....
....
```

## Authors

* **Anaelle Leclabart** - [anaiel](https://github.com/anaiel)
* [Xeska](https://github.com/Xeska)
