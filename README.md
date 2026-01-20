# ES336_A1

## Observations

I have used N as 1024 to check the time taken for different cases.
Used WSL in Windows for running Linux Commands.
gcc -save-temps code.c was used to save intermediate files.

For writing code in C as it was unable to take the long 1024 \* 1024 matrix , i have figured out to use malloc(heap)
and later freed up the space as it was overflowing the stack space of 1Mb.

The outputs of both the C and Python implementations along with optimisation flags are available in Results.txt with
reasoning of my understanding.
