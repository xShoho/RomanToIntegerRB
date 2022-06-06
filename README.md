# Roman To Integer Converter in Ruby

## Problem Explained

Roman Numerals are represented by seven different symbols

| Symbol | Value |
| ------ | ----- |
| I | 1 |
| V | 5 |
| X | 10 |
| L | 50 |
| C | 100 |
| D | 500 |
| M | 1000 |

### Example
Number 2 is written as ```II```. In Roman numeral is just two one's together. 12 is written as ```XII```, which is simply ```X + II```.

### Other numbers
Roman numerals are written from largest value to smallest from left to right. However, the numeral for four is not ```IIII```. Instead it is written as ```IV```. Because one is before five we substract one from five. Same goes for number nine which is written as ```IX```. There are six cases where we substruct the lower number instead of adding it
- Where ```I``` is before ```V```(5) and ```X```(10) to make 4 and 9
- Where ```X``` is before ```L```(50) and ```C```(100) to make 40 and 90
- Where ```C``` is before ```D```(500) and ```M```(1000) to make 40 and 900
