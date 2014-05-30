  .-------------------------------.
  |  PROACTIVE COMPUTER SECURITY  |
  |    Week 6: Fuzzing            |
  |      Exercises                |
  '-------------------------------'

For this week there is just one exercise.  The program png2bmp converts images
from BMP to PNG format.  Your task is to create a fuzzer that can produce an
input file which will crash the program.

Be sure to enable core dumps before you proceeed:
  $ ulimit -c unlimited

This will result in a core file being produced in the event of a crash.

You should probably familiarize yourself with the BMP image format.  Look it up
on Wikipedia.

Happy hunting!
