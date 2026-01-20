import time
import numpy as np

N=1024
A=np.full((N, N), 4096)
B=np.full((N, N), 1024)
C=np.full((N,N),0)


st=time.time()
C=np.matmul(A,B)
end=time.time()

print("Multiplication took ", end - st, "seconds")