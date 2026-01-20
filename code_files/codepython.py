import time

N=1024
A = [[0]*N for _ in range(N)]
B = [[0]*N for _ in range(N)]
C = [[0]*N for _ in range(N)]

for i in range(N): 
  for j in range(N):
    A[i][j]=4096
    B[i][j]=1024

st=time.time()
for i in range(N): 
  for j in range(N): 
    for k in range(N): 
      C[i][j] += A[i][k] * B[k][j] 
end=time.time()

print("Multiplication took ", end - st, "seconds")
