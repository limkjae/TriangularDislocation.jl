
# Example solution of xx_strain presented in Nikkhoo and Walter (2015) table 3. Example # 1 and #4


using TriangularDislocation
using LinearAlgebra

X = [-1/3, 7]
Y = [-1/3 , -1]
Z = [-3 , -5]
P1 = [-1., -1., -5.0]
P2 = [1., -1., -5.]
P3 = [-1., 1., -4.]
Ss = 1.0
Ds = -1.0
Ts = 2.0
mu = 1
lambda = 1

println("First call of the function still takes a while")

@time Stress, Strain = TDstressHS(X,Y,Z,P1,P2,P3,Ss,Ds,Ts,mu,lambda)

println("Result: ",Strain[1,1],"     Nikkhoo and Walter (2015) Table 3 #1 : 0.0481047005255181")
println("Result: ", Strain[2,1],"   Nikkhoo and Walter (2015) Table 3 #4 : 0.000829157341339727")