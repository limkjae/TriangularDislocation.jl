
 TDstressHS 
 Calculates stresses and strains associated with a triangular dislocation 
 in an elastic half-space.

 INPUTS
 X, Y and Z: 
 Coordinates of calculation points in EFCS (East, North, Up). X, Y and Z 
 must have the same size.

 P1,P2 and P3:
 Coordinates of TD vertices in EFCS.
 
 Ss, Ds and Ts:
 TD slip vector components (Strike-slip, Dip-slip, Tensile-slip).

 mu and lambda:
 Lame constants.

 OUTPUTS
  Stress:
  Calculated stress tensor components in EFCS. The six columns of Stress 
  are Sxx, Syy, Szz, Sxy, Sxz and Syz, respectively. The stress components 
  have the same unit as Lame constants.
 
  Strain:
  Calculated strain tensor components in EFCS. The six columns of Strain 
  are Exx, Eyy, Ezz, Exy, Exz and Eyz, respectively. The strain components 
  are dimensionless.
  
  Reference journal article: 
  [Nikkhoo M. and Walter T.R., 2015. Triangular dislocation: An analytical, artefact-free solution. GJI](https://www.researchgate.net/publication/274408217_Triangular_dislocation_an_analytical_artefact-free_solution)
  
  Translated to Julia By Kyungjae Im

Example: 

```
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
```
