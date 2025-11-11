Reference journal article: 
Nikkhoo M. and Walter T.R., 2015. Triangular dislocation: An analytical, artefact-free solution. GJI

Translated to Julia By KJ 

 TDstressHS 
 Calculates stresses and strains associated with a triangular dislocation 
 in an elastic half-space.
 TD: Triangular Dislocation
 EFCS: Earth-Fixed Coordinate System
 TDCS: Triangular Dislocation Coordinate System
 ADCS: Angular Dislocation Coordinate System

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
  
