  .-------------------------------.
  |  PROACTIVE COMPUTER SECURITY  |
  |    Week 3: Reversing          |
  |      Weekly assignment        |
  '-------------------------------'

Reverse engineer the binary file "pcsmud" to discover what the program's
functionallity is.

1. Hand in a commented assembly listing.  See commented-assembly.txt for an
   example.

2. Answer the following questions:
    - Which file format is it?
    - What does the program do (draw me a picture -- literally)?
    - What are the different ways the program can end?
    - How do you get it to end in each way?


Hints:

1. $ objdump -M intel -d pcsmud

2. $ objdump -x pcsmud

3. $ readelf -x .data pcsmud

4. $ readelf -x .rodata pcsmud
