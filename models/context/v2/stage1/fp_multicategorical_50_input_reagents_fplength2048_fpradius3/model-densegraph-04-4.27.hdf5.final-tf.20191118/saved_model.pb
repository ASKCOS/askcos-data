��
��
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8��
z
dense_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�(�*
shared_namedense_0/kernel
s
"dense_0/kernel/Read/ReadVariableOpReadVariableOpdense_0/kernel* 
_output_shapes
:
�(�*
dtype0
q
dense_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_0/bias
j
 dense_0/bias/Read/ReadVariableOpReadVariableOpdense_0/bias*
_output_shapes	
:�*
dtype0
�
layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelayer_normalization_1/gamma
�
/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_normalization_1/beta
�
.layer_normalization_1/beta/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta*
_output_shapes	
:�*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�8�*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
�8�*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0
�
layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelayer_normalization_2/gamma
�
/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma*
_output_shapes	
:�*
dtype0
�
layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_normalization_2/beta
�
.layer_normalization_2/beta/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta*
_output_shapes	
:�*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�H�*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
�H�*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:�*
dtype0
�
layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelayer_normalization_3/gamma
�
/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma*
_output_shapes	
:�*
dtype0
�
layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_normalization_3/beta
�
.layer_normalization_3/beta/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta*
_output_shapes	
:�*
dtype0
�
output_softmax/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�X�*&
shared_nameoutput_softmax/kernel
�
)output_softmax/kernel/Read/ReadVariableOpReadVariableOpoutput_softmax/kernel* 
_output_shapes
:
�X�*
dtype0

output_softmax/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameoutput_softmax/bias
x
'output_softmax/bias/Read/ReadVariableOpReadVariableOpoutput_softmax/bias*
_output_shapes	
:�*
dtype0
\
iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
~
dense_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�(�*!
shared_namedense_0/kernel/m
w
$dense_0/kernel/m/Read/ReadVariableOpReadVariableOpdense_0/kernel/m* 
_output_shapes
:
�(�*
dtype0
u
dense_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_0/bias/m
n
"dense_0/bias/m/Read/ReadVariableOpReadVariableOpdense_0/bias/m*
_output_shapes	
:�*
dtype0
�
layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_namelayer_normalization_1/gamma/m
�
1layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma/m*
_output_shapes	
:�*
dtype0
�
layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namelayer_normalization_1/beta/m
�
0layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta/m*
_output_shapes	
:�*
dtype0
~
dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�8�*!
shared_namedense_1/kernel/m
w
$dense_1/kernel/m/Read/ReadVariableOpReadVariableOpdense_1/kernel/m* 
_output_shapes
:
�8�*
dtype0
u
dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias/m
n
"dense_1/bias/m/Read/ReadVariableOpReadVariableOpdense_1/bias/m*
_output_shapes	
:�*
dtype0
�
layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_namelayer_normalization_2/gamma/m
�
1layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma/m*
_output_shapes	
:�*
dtype0
�
layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namelayer_normalization_2/beta/m
�
0layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta/m*
_output_shapes	
:�*
dtype0
~
dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�H�*!
shared_namedense_2/kernel/m
w
$dense_2/kernel/m/Read/ReadVariableOpReadVariableOpdense_2/kernel/m* 
_output_shapes
:
�H�*
dtype0
u
dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_2/bias/m
n
"dense_2/bias/m/Read/ReadVariableOpReadVariableOpdense_2/bias/m*
_output_shapes	
:�*
dtype0
�
layer_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_namelayer_normalization_3/gamma/m
�
1layer_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma/m*
_output_shapes	
:�*
dtype0
�
layer_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namelayer_normalization_3/beta/m
�
0layer_normalization_3/beta/m/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta/m*
_output_shapes	
:�*
dtype0
�
output_softmax/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�X�*(
shared_nameoutput_softmax/kernel/m
�
+output_softmax/kernel/m/Read/ReadVariableOpReadVariableOpoutput_softmax/kernel/m* 
_output_shapes
:
�X�*
dtype0
�
output_softmax/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameoutput_softmax/bias/m
|
)output_softmax/bias/m/Read/ReadVariableOpReadVariableOpoutput_softmax/bias/m*
_output_shapes	
:�*
dtype0
~
dense_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�(�*!
shared_namedense_0/kernel/v
w
$dense_0/kernel/v/Read/ReadVariableOpReadVariableOpdense_0/kernel/v* 
_output_shapes
:
�(�*
dtype0
u
dense_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_0/bias/v
n
"dense_0/bias/v/Read/ReadVariableOpReadVariableOpdense_0/bias/v*
_output_shapes	
:�*
dtype0
�
layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_namelayer_normalization_1/gamma/v
�
1layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma/v*
_output_shapes	
:�*
dtype0
�
layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namelayer_normalization_1/beta/v
�
0layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta/v*
_output_shapes	
:�*
dtype0
~
dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�8�*!
shared_namedense_1/kernel/v
w
$dense_1/kernel/v/Read/ReadVariableOpReadVariableOpdense_1/kernel/v* 
_output_shapes
:
�8�*
dtype0
u
dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias/v
n
"dense_1/bias/v/Read/ReadVariableOpReadVariableOpdense_1/bias/v*
_output_shapes	
:�*
dtype0
�
layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_namelayer_normalization_2/gamma/v
�
1layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma/v*
_output_shapes	
:�*
dtype0
�
layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namelayer_normalization_2/beta/v
�
0layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta/v*
_output_shapes	
:�*
dtype0
~
dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�H�*!
shared_namedense_2/kernel/v
w
$dense_2/kernel/v/Read/ReadVariableOpReadVariableOpdense_2/kernel/v* 
_output_shapes
:
�H�*
dtype0
u
dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_2/bias/v
n
"dense_2/bias/v/Read/ReadVariableOpReadVariableOpdense_2/bias/v*
_output_shapes	
:�*
dtype0
�
layer_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_namelayer_normalization_3/gamma/v
�
1layer_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma/v*
_output_shapes	
:�*
dtype0
�
layer_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namelayer_normalization_3/beta/v
�
0layer_normalization_3/beta/v/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta/v*
_output_shapes	
:�*
dtype0
�
output_softmax/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�X�*(
shared_nameoutput_softmax/kernel/v
�
+output_softmax/kernel/v/Read/ReadVariableOpReadVariableOpoutput_softmax/kernel/v* 
_output_shapes
:
�X�*
dtype0
�
output_softmax/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameoutput_softmax/bias/v
|
)output_softmax/bias/v/Read/ReadVariableOpReadVariableOpoutput_softmax/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
�\
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�[
value�[B�[ B�[
�
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
layer-13
layer-14
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
 
 
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
g
	 gamma
!beta
"	variables
#regularization_losses
$trainable_variables
%	keras_api
R
&	variables
'regularization_losses
(trainable_variables
)	keras_api
h

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
g
	0gamma
1beta
2	variables
3regularization_losses
4trainable_variables
5	keras_api
R
6	variables
7regularization_losses
8trainable_variables
9	keras_api
h

:kernel
;bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
g
	@gamma
Abeta
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
R
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
h

Jkernel
Kbias
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
R
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
R
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
�
Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_ratem�m� m�!m�*m�+m�0m�1m�:m�;m�@m�Am�Jm�Km�v�v� v�!v�*v�+v�0v�1v�:v�;v�@v�Av�Jv�Kv�
f
0
1
 2
!3
*4
+5
06
17
:8
;9
@10
A11
J12
K13
 
f
0
1
 2
!3
*4
+5
06
17
:8
;9
@10
A11
J12
K13
�
]metrics
	variables
regularization_losses

^layers
_layer_metrics
`non_trainable_variables
trainable_variables
alayer_regularization_losses
 
 
 
 
�
bmetrics
	variables
regularization_losses

clayers
dlayer_metrics
enon_trainable_variables
trainable_variables
flayer_regularization_losses
ZX
VARIABLE_VALUEdense_0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
gmetrics
	variables
regularization_losses

hlayers
ilayer_metrics
jnon_trainable_variables
trainable_variables
klayer_regularization_losses
fd
VARIABLE_VALUElayer_normalization_1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE

 0
!1
 

 0
!1
�
lmetrics
"	variables
#regularization_losses

mlayers
nlayer_metrics
onon_trainable_variables
$trainable_variables
player_regularization_losses
 
 
 
�
qmetrics
&	variables
'regularization_losses

rlayers
slayer_metrics
tnon_trainable_variables
(trainable_variables
ulayer_regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
�
vmetrics
,	variables
-regularization_losses

wlayers
xlayer_metrics
ynon_trainable_variables
.trainable_variables
zlayer_regularization_losses
fd
VARIABLE_VALUElayer_normalization_2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE

00
11
 

00
11
�
{metrics
2	variables
3regularization_losses

|layers
}layer_metrics
~non_trainable_variables
4trainable_variables
layer_regularization_losses
 
 
 
�
�metrics
6	variables
7regularization_losses
�layers
�layer_metrics
�non_trainable_variables
8trainable_variables
 �layer_regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1
 

:0
;1
�
�metrics
<	variables
=regularization_losses
�layers
�layer_metrics
�non_trainable_variables
>trainable_variables
 �layer_regularization_losses
fd
VARIABLE_VALUElayer_normalization_3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE

@0
A1
 

@0
A1
�
�metrics
B	variables
Cregularization_losses
�layers
�layer_metrics
�non_trainable_variables
Dtrainable_variables
 �layer_regularization_losses
 
 
 
�
�metrics
F	variables
Gregularization_losses
�layers
�layer_metrics
�non_trainable_variables
Htrainable_variables
 �layer_regularization_losses
a_
VARIABLE_VALUEoutput_softmax/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEoutput_softmax/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1
 

J0
K1
�
�metrics
L	variables
Mregularization_losses
�layers
�layer_metrics
�non_trainable_variables
Ntrainable_variables
 �layer_regularization_losses
 
 
 
�
�metrics
P	variables
Qregularization_losses
�layers
�layer_metrics
�non_trainable_variables
Rtrainable_variables
 �layer_regularization_losses
 
 
 
�
�metrics
T	variables
Uregularization_losses
�layers
�layer_metrics
�non_trainable_variables
Vtrainable_variables
 �layer_regularization_losses
CA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
�0
�1
�2
�3
n
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
xv
VARIABLE_VALUEdense_0/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_0/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_1/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_1/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_2/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_2/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_3/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_3/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEoutput_softmax/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEoutput_softmax/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_0/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_0/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_1/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_1/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_2/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_2/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_3/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUElayer_normalization_3/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEoutput_softmax/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEoutput_softmax/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
serving_default_Input_fpPlaceholder*(
_output_shapes
:���������� *
dtype0*
shape:���������� 
�
serving_default_Input_reagentsPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_Input_fpserving_default_Input_reagentsdense_0/kerneldense_0/biaslayer_normalization_1/gammalayer_normalization_1/betadense_1/kerneldense_1/biaslayer_normalization_2/gammalayer_normalization_2/betadense_2/kerneldense_2/biaslayer_normalization_3/gammalayer_normalization_3/betaoutput_softmax/kerneloutput_softmax/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_1336
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_0/kernel/Read/ReadVariableOp dense_0/bias/Read/ReadVariableOp/layer_normalization_1/gamma/Read/ReadVariableOp.layer_normalization_1/beta/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp/layer_normalization_2/gamma/Read/ReadVariableOp.layer_normalization_2/beta/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp/layer_normalization_3/gamma/Read/ReadVariableOp.layer_normalization_3/beta/Read/ReadVariableOp)output_softmax/kernel/Read/ReadVariableOp'output_softmax/bias/Read/ReadVariableOpiter/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOp$dense_0/kernel/m/Read/ReadVariableOp"dense_0/bias/m/Read/ReadVariableOp1layer_normalization_1/gamma/m/Read/ReadVariableOp0layer_normalization_1/beta/m/Read/ReadVariableOp$dense_1/kernel/m/Read/ReadVariableOp"dense_1/bias/m/Read/ReadVariableOp1layer_normalization_2/gamma/m/Read/ReadVariableOp0layer_normalization_2/beta/m/Read/ReadVariableOp$dense_2/kernel/m/Read/ReadVariableOp"dense_2/bias/m/Read/ReadVariableOp1layer_normalization_3/gamma/m/Read/ReadVariableOp0layer_normalization_3/beta/m/Read/ReadVariableOp+output_softmax/kernel/m/Read/ReadVariableOp)output_softmax/bias/m/Read/ReadVariableOp$dense_0/kernel/v/Read/ReadVariableOp"dense_0/bias/v/Read/ReadVariableOp1layer_normalization_1/gamma/v/Read/ReadVariableOp0layer_normalization_1/beta/v/Read/ReadVariableOp$dense_1/kernel/v/Read/ReadVariableOp"dense_1/bias/v/Read/ReadVariableOp1layer_normalization_2/gamma/v/Read/ReadVariableOp0layer_normalization_2/beta/v/Read/ReadVariableOp$dense_2/kernel/v/Read/ReadVariableOp"dense_2/bias/v/Read/ReadVariableOp1layer_normalization_3/gamma/v/Read/ReadVariableOp0layer_normalization_3/beta/v/Read/ReadVariableOp+output_softmax/kernel/v/Read/ReadVariableOp)output_softmax/bias/v/Read/ReadVariableOpConst*D
Tin=
;29	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__traced_save_2186
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_0/kerneldense_0/biaslayer_normalization_1/gammalayer_normalization_1/betadense_1/kerneldense_1/biaslayer_normalization_2/gammalayer_normalization_2/betadense_2/kerneldense_2/biaslayer_normalization_3/gammalayer_normalization_3/betaoutput_softmax/kerneloutput_softmax/biasiterbeta_1beta_2decaylearning_ratetotalcounttotal_1count_1total_2count_2total_3count_3dense_0/kernel/mdense_0/bias/mlayer_normalization_1/gamma/mlayer_normalization_1/beta/mdense_1/kernel/mdense_1/bias/mlayer_normalization_2/gamma/mlayer_normalization_2/beta/mdense_2/kernel/mdense_2/bias/mlayer_normalization_3/gamma/mlayer_normalization_3/beta/moutput_softmax/kernel/moutput_softmax/bias/mdense_0/kernel/vdense_0/bias/vlayer_normalization_1/gamma/vlayer_normalization_1/beta/vdense_1/kernel/vdense_1/bias/vlayer_normalization_2/gamma/vlayer_normalization_2/beta/vdense_2/kernel/vdense_2/bias/vlayer_normalization_3/gamma/vlayer_normalization_3/beta/voutput_softmax/kernel/voutput_softmax/bias/v*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_restore_2361��
�
r
H__inference_reagents_concat_layer_call_and_return_conditional_losses_653

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������(2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:���������� :����������:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
k
A__inference_concat_0_layer_call_and_return_conditional_losses_771

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������82
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������82

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������(:����������:P L
(
_output_shapes
:����������(
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
4__inference_layer_normalization_2_layer_call_fn_1820

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
n
B__inference_concat_0_layer_call_and_return_conditional_losses_1726
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������82
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������82

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������(:����������:R N
(
_output_shapes
:����������(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
y
A__inference_concat_1_layer_call_and_return_conditional_losses_890

inputs
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*(
_output_shapes
:����������H2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������H2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:����������(:����������:����������:P L
(
_output_shapes
:����������(
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
n
B__inference_lambda_1_layer_call_and_return_conditional_losses_1967
inputs_0
inputs_1
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�P2
mul/y^
mulMulinputs_1mul/y:output:0*
T0*(
_output_shapes
:����������2
mulW
subSubinputs_0mul:z:0*
T0*(
_output_shapes
:����������2
sub\
IdentityIdentitysub:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
4__inference_layer_normalization_2_layer_call_fn_1811

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8322
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
_
C__inference_softmax_1_layer_call_and_return_conditional_losses_1992

inputs
identityX
SoftmaxSoftmaxinputs*
T0*(
_output_shapes
:����������2	
Softmaxf
IdentityIdentitySoftmax:softmax:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_977

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_concat_2_layer_call_and_return_conditional_losses_1932
inputs_0
inputs_1
inputs_2
inputs_3
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputs_0inputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������X2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:����������(:����������:����������:����������:R N
(
_output_shapes
:����������(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/3
�
l
B__inference_lambda_1_layer_call_and_return_conditional_losses_1056

inputs
inputs_1
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�P2
mul/y^
mulMulinputs_1mul/y:output:0*
T0*(
_output_shapes
:����������2
mulU
subSubinputsmul:z:0*
T0*(
_output_shapes
:����������2
sub\
IdentityIdentitysub:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
S
'__inference_concat_0_layer_call_fn_1732
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_concat_0_layer_call_and_return_conditional_losses_7712
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������82

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������(:����������:R N
(
_output_shapes
:����������(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
4__inference_layer_normalization_1_layer_call_fn_1710

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_714

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�=
�
A__inference_model_1_layer_call_and_return_conditional_losses_1093
input_fp
input_reagents
dense_0_684
dense_0_686
layer_normalization_1_759
layer_normalization_1_761
dense_1_802
dense_1_804
layer_normalization_2_877
layer_normalization_2_879
dense_2_922
dense_2_924
layer_normalization_3_997
layer_normalization_3_999
output_softmax_1043
output_softmax_1045
identity��dense_0/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�-layer_normalization_3/StatefulPartitionedCall�&output_softmax/StatefulPartitionedCall�
reagents_concat/PartitionedCallPartitionedCallinput_fpinput_reagents*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reagents_concat_layer_call_and_return_conditional_losses_6532!
reagents_concat/PartitionedCall�
dense_0/StatefulPartitionedCallStatefulPartitionedCall(reagents_concat/PartitionedCall:output:0dense_0_684dense_0_686*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_0_layer_call_and_return_conditional_losses_6732!
dense_0/StatefulPartitionedCall�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0layer_normalization_1_759layer_normalization_1_761*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7142/
-layer_normalization_1/StatefulPartitionedCall�
concat_0/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_concat_0_layer_call_and_return_conditional_losses_7712
concat_0/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall!concat_0/PartitionedCall:output:0dense_1_802dense_1_804*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_7912!
dense_1/StatefulPartitionedCall�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_2_877layer_normalization_2_879*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8322/
-layer_normalization_2/StatefulPartitionedCall�
concat_1/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_concat_1_layer_call_and_return_conditional_losses_8902
concat_1/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall!concat_1/PartitionedCall:output:0dense_2_922dense_2_924*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_9112!
dense_2/StatefulPartitionedCall�
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0layer_normalization_3_997layer_normalization_3_999*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9522/
-layer_normalization_3/StatefulPartitionedCall�
concat_2/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������X* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_concat_2_layer_call_and_return_conditional_losses_10112
concat_2/PartitionedCall�
&output_softmax/StatefulPartitionedCallStatefulPartitionedCall!concat_2/PartitionedCall:output:0output_softmax_1043output_softmax_1045*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_output_softmax_layer_call_and_return_conditional_losses_10322(
&output_softmax/StatefulPartitionedCall�
lambda_1/PartitionedCallPartitionedCall/output_softmax/StatefulPartitionedCall:output:0input_reagents*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_10562
lambda_1/PartitionedCall�
softmax_1/PartitionedCallPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_softmax_1_layer_call_and_return_conditional_losses_10842
softmax_1/PartitionedCall�
IdentityIdentity"softmax_1/PartitionedCall:output:0 ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall'^output_softmax/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2P
&output_softmax/StatefulPartitionedCall&output_softmax/StatefulPartitionedCall:R N
(
_output_shapes
:���������� 
"
_user_specified_name
Input_fp:XT
(
_output_shapes
:����������
(
_user_specified_nameInput_reagents
��
�

A__inference_model_1_layer_call_and_return_conditional_losses_1550
inputs_0
inputs_1*
&dense_0_matmul_readvariableop_resource+
'dense_0_biasadd_readvariableop_resource5
1layer_normalization_1_mul_readvariableop_resource7
3layer_normalization_1_add_1_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource5
1layer_normalization_2_mul_readvariableop_resource7
3layer_normalization_2_add_1_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource5
1layer_normalization_3_mul_readvariableop_resource7
3layer_normalization_3_add_1_readvariableop_resource1
-output_softmax_matmul_readvariableop_resource2
.output_softmax_biasadd_readvariableop_resource
identity��dense_0/BiasAdd/ReadVariableOp�dense_0/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�*layer_normalization_1/add_1/ReadVariableOp�(layer_normalization_1/mul/ReadVariableOp�*layer_normalization_2/add_1/ReadVariableOp�(layer_normalization_2/mul/ReadVariableOp�*layer_normalization_3/add_1/ReadVariableOp�(layer_normalization_3/mul/ReadVariableOp�%output_softmax/BiasAdd/ReadVariableOp�$output_softmax/MatMul/ReadVariableOp|
reagents_concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
reagents_concat/concat/axis�
reagents_concat/concatConcatV2inputs_0inputs_1$reagents_concat/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������(2
reagents_concat/concat�
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource* 
_output_shapes
:
�(�*
dtype02
dense_0/MatMul/ReadVariableOp�
dense_0/MatMulMatMulreagents_concat/concat:output:0%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/MatMul�
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_0/BiasAdd/ReadVariableOp�
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_0/Relu�
,layer_normalization_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,layer_normalization_1/Mean/reduction_indices�
layer_normalization_1/MeanMeandense_0/Relu:activations:05layer_normalization_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_1/Mean�
layer_normalization_1/subSubdense_0/Relu:activations:0#layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/sub�
layer_normalization_1/SquareSquarelayer_normalization_1/sub:z:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/Square�
.layer_normalization_1/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.layer_normalization_1/Mean_1/reduction_indices�
layer_normalization_1/Mean_1Mean layer_normalization_1/Square:y:07layer_normalization_1/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_1/Mean_1
layer_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
layer_normalization_1/add/y�
layer_normalization_1/addAddV2%layer_normalization_1/Mean_1:output:0$layer_normalization_1/add/y:output:0*
T0*'
_output_shapes
:���������2
layer_normalization_1/add
layer_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_1/Const�
layer_normalization_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2
layer_normalization_1/Const_1�
+layer_normalization_1/clip_by_value/MinimumMinimumlayer_normalization_1/add:z:0&layer_normalization_1/Const_1:output:0*
T0*'
_output_shapes
:���������2-
+layer_normalization_1/clip_by_value/Minimum�
#layer_normalization_1/clip_by_valueMaximum/layer_normalization_1/clip_by_value/Minimum:z:0$layer_normalization_1/Const:output:0*
T0*'
_output_shapes
:���������2%
#layer_normalization_1/clip_by_value�
layer_normalization_1/SqrtSqrt'layer_normalization_1/clip_by_value:z:0*
T0*'
_output_shapes
:���������2
layer_normalization_1/Sqrt�
layer_normalization_1/sub_1Subdense_0/Relu:activations:0#layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/sub_1�
layer_normalization_1/truedivRealDivlayer_normalization_1/sub_1:z:0layer_normalization_1/Sqrt:y:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/truediv�
(layer_normalization_1/mul/ReadVariableOpReadVariableOp1layer_normalization_1_mul_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(layer_normalization_1/mul/ReadVariableOp�
layer_normalization_1/mulMul!layer_normalization_1/truediv:z:00layer_normalization_1/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/mul�
*layer_normalization_1/add_1/ReadVariableOpReadVariableOp3layer_normalization_1_add_1_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*layer_normalization_1/add_1/ReadVariableOp�
layer_normalization_1/add_1AddV2layer_normalization_1/mul:z:02layer_normalization_1/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/add_1n
concat_0/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_0/concat/axis�
concat_0/concatConcatV2reagents_concat/concat:output:0layer_normalization_1/add_1:z:0concat_0/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������82
concat_0/concat�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
�8�*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMulconcat_0/concat:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_1/Relu�
,layer_normalization_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,layer_normalization_2/Mean/reduction_indices�
layer_normalization_2/MeanMeandense_1/Relu:activations:05layer_normalization_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_2/Mean�
layer_normalization_2/subSubdense_1/Relu:activations:0#layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/sub�
layer_normalization_2/SquareSquarelayer_normalization_2/sub:z:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/Square�
.layer_normalization_2/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.layer_normalization_2/Mean_1/reduction_indices�
layer_normalization_2/Mean_1Mean layer_normalization_2/Square:y:07layer_normalization_2/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_2/Mean_1
layer_normalization_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
layer_normalization_2/add/y�
layer_normalization_2/addAddV2%layer_normalization_2/Mean_1:output:0$layer_normalization_2/add/y:output:0*
T0*'
_output_shapes
:���������2
layer_normalization_2/add
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_2/Const�
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2
layer_normalization_2/Const_1�
+layer_normalization_2/clip_by_value/MinimumMinimumlayer_normalization_2/add:z:0&layer_normalization_2/Const_1:output:0*
T0*'
_output_shapes
:���������2-
+layer_normalization_2/clip_by_value/Minimum�
#layer_normalization_2/clip_by_valueMaximum/layer_normalization_2/clip_by_value/Minimum:z:0$layer_normalization_2/Const:output:0*
T0*'
_output_shapes
:���������2%
#layer_normalization_2/clip_by_value�
layer_normalization_2/SqrtSqrt'layer_normalization_2/clip_by_value:z:0*
T0*'
_output_shapes
:���������2
layer_normalization_2/Sqrt�
layer_normalization_2/sub_1Subdense_1/Relu:activations:0#layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/sub_1�
layer_normalization_2/truedivRealDivlayer_normalization_2/sub_1:z:0layer_normalization_2/Sqrt:y:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/truediv�
(layer_normalization_2/mul/ReadVariableOpReadVariableOp1layer_normalization_2_mul_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(layer_normalization_2/mul/ReadVariableOp�
layer_normalization_2/mulMul!layer_normalization_2/truediv:z:00layer_normalization_2/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/mul�
*layer_normalization_2/add_1/ReadVariableOpReadVariableOp3layer_normalization_2_add_1_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*layer_normalization_2/add_1/ReadVariableOp�
layer_normalization_2/add_1AddV2layer_normalization_2/mul:z:02layer_normalization_2/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/add_1n
concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/concat/axis�
concat_1/concatConcatV2reagents_concat/concat:output:0layer_normalization_1/add_1:z:0layer_normalization_2/add_1:z:0concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������H2
concat_1/concat�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
�H�*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulconcat_1/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_2/Relu�
,layer_normalization_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,layer_normalization_3/Mean/reduction_indices�
layer_normalization_3/MeanMeandense_2/Relu:activations:05layer_normalization_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_3/Mean�
layer_normalization_3/subSubdense_2/Relu:activations:0#layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/sub�
layer_normalization_3/SquareSquarelayer_normalization_3/sub:z:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/Square�
.layer_normalization_3/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.layer_normalization_3/Mean_1/reduction_indices�
layer_normalization_3/Mean_1Mean layer_normalization_3/Square:y:07layer_normalization_3/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_3/Mean_1
layer_normalization_3/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
layer_normalization_3/add/y�
layer_normalization_3/addAddV2%layer_normalization_3/Mean_1:output:0$layer_normalization_3/add/y:output:0*
T0*'
_output_shapes
:���������2
layer_normalization_3/add
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_3/Const�
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2
layer_normalization_3/Const_1�
+layer_normalization_3/clip_by_value/MinimumMinimumlayer_normalization_3/add:z:0&layer_normalization_3/Const_1:output:0*
T0*'
_output_shapes
:���������2-
+layer_normalization_3/clip_by_value/Minimum�
#layer_normalization_3/clip_by_valueMaximum/layer_normalization_3/clip_by_value/Minimum:z:0$layer_normalization_3/Const:output:0*
T0*'
_output_shapes
:���������2%
#layer_normalization_3/clip_by_value�
layer_normalization_3/SqrtSqrt'layer_normalization_3/clip_by_value:z:0*
T0*'
_output_shapes
:���������2
layer_normalization_3/Sqrt�
layer_normalization_3/sub_1Subdense_2/Relu:activations:0#layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/sub_1�
layer_normalization_3/truedivRealDivlayer_normalization_3/sub_1:z:0layer_normalization_3/Sqrt:y:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/truediv�
(layer_normalization_3/mul/ReadVariableOpReadVariableOp1layer_normalization_3_mul_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(layer_normalization_3/mul/ReadVariableOp�
layer_normalization_3/mulMul!layer_normalization_3/truediv:z:00layer_normalization_3/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/mul�
*layer_normalization_3/add_1/ReadVariableOpReadVariableOp3layer_normalization_3_add_1_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*layer_normalization_3/add_1/ReadVariableOp�
layer_normalization_3/add_1AddV2layer_normalization_3/mul:z:02layer_normalization_3/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/add_1n
concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/concat/axis�
concat_2/concatConcatV2reagents_concat/concat:output:0layer_normalization_1/add_1:z:0layer_normalization_2/add_1:z:0layer_normalization_3/add_1:z:0concat_2/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X2
concat_2/concat�
$output_softmax/MatMul/ReadVariableOpReadVariableOp-output_softmax_matmul_readvariableop_resource* 
_output_shapes
:
�X�*
dtype02&
$output_softmax/MatMul/ReadVariableOp�
output_softmax/MatMulMatMulconcat_2/concat:output:0,output_softmax/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
output_softmax/MatMul�
%output_softmax/BiasAdd/ReadVariableOpReadVariableOp.output_softmax_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%output_softmax/BiasAdd/ReadVariableOp�
output_softmax/BiasAddBiasAddoutput_softmax/MatMul:product:0-output_softmax/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
output_softmax/BiasAdde
lambda_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�P2
lambda_1/mul/yy
lambda_1/mulMulinputs_1lambda_1/mul/y:output:0*
T0*(
_output_shapes
:����������2
lambda_1/mul�
lambda_1/subSuboutput_softmax/BiasAdd:output:0lambda_1/mul:z:0*
T0*(
_output_shapes
:����������2
lambda_1/subv
softmax_1/SoftmaxSoftmaxlambda_1/sub:z:0*
T0*(
_output_shapes
:����������2
softmax_1/Softmax�
IdentityIdentitysoftmax_1/Softmax:softmax:0^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp+^layer_normalization_1/add_1/ReadVariableOp)^layer_normalization_1/mul/ReadVariableOp+^layer_normalization_2/add_1/ReadVariableOp)^layer_normalization_2/mul/ReadVariableOp+^layer_normalization_3/add_1/ReadVariableOp)^layer_normalization_3/mul/ReadVariableOp&^output_softmax/BiasAdd/ReadVariableOp%^output_softmax/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2X
*layer_normalization_1/add_1/ReadVariableOp*layer_normalization_1/add_1/ReadVariableOp2T
(layer_normalization_1/mul/ReadVariableOp(layer_normalization_1/mul/ReadVariableOp2X
*layer_normalization_2/add_1/ReadVariableOp*layer_normalization_2/add_1/ReadVariableOp2T
(layer_normalization_2/mul/ReadVariableOp(layer_normalization_2/mul/ReadVariableOp2X
*layer_normalization_3/add_1/ReadVariableOp*layer_normalization_3/add_1/ReadVariableOp2T
(layer_normalization_3/mul/ReadVariableOp(layer_normalization_3/mul/ReadVariableOp2N
%output_softmax/BiasAdd/ReadVariableOp%output_softmax/BiasAdd/ReadVariableOp2L
$output_softmax/MatMul/ReadVariableOp$output_softmax/MatMul/ReadVariableOp:R N
(
_output_shapes
:���������� 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
D
(__inference_softmax_1_layer_call_fn_1997

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_softmax_1_layer_call_and_return_conditional_losses_10842
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
@__inference_dense_1_layer_call_and_return_conditional_losses_791

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�8�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������8::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������8
 
_user_specified_nameinputs
�
�
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1802

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
A__inference_dense_1_layer_call_and_return_conditional_losses_1743

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�8�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������8::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������8
 
_user_specified_nameinputs
�
�
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1777

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
|
B__inference_concat_1_layer_call_and_return_conditional_losses_1828
inputs_0
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*(
_output_shapes
:����������H2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������H2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:����������(:����������:����������:R N
(
_output_shapes
:����������(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/2
�

�
&__inference_model_1_layer_call_fn_1300
input_fp
input_reagents
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_fpinput_reagentsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_12692
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:���������� 
"
_user_specified_name
Input_fp:XT
(
_output_shapes
:����������
(
_user_specified_nameInput_reagents
�
�
B__inference_concat_2_layer_call_and_return_conditional_losses_1011

inputs
inputs_1
inputs_2
inputs_3
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputsinputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������X2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:����������(:����������:����������:����������:P L
(
_output_shapes
:����������(
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
H__inference_output_softmax_layer_call_and_return_conditional_losses_1032

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�X�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������X::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������X
 
_user_specified_nameinputs
�m
�
__inference__traced_save_2186
file_prefix-
)savev2_dense_0_kernel_read_readvariableop+
'savev2_dense_0_bias_read_readvariableop:
6savev2_layer_normalization_1_gamma_read_readvariableop9
5savev2_layer_normalization_1_beta_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop:
6savev2_layer_normalization_2_gamma_read_readvariableop9
5savev2_layer_normalization_2_beta_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop:
6savev2_layer_normalization_3_gamma_read_readvariableop9
5savev2_layer_normalization_3_beta_read_readvariableop4
0savev2_output_softmax_kernel_read_readvariableop2
.savev2_output_softmax_bias_read_readvariableop#
savev2_iter_read_readvariableop	%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop/
+savev2_dense_0_kernel_m_read_readvariableop-
)savev2_dense_0_bias_m_read_readvariableop<
8savev2_layer_normalization_1_gamma_m_read_readvariableop;
7savev2_layer_normalization_1_beta_m_read_readvariableop/
+savev2_dense_1_kernel_m_read_readvariableop-
)savev2_dense_1_bias_m_read_readvariableop<
8savev2_layer_normalization_2_gamma_m_read_readvariableop;
7savev2_layer_normalization_2_beta_m_read_readvariableop/
+savev2_dense_2_kernel_m_read_readvariableop-
)savev2_dense_2_bias_m_read_readvariableop<
8savev2_layer_normalization_3_gamma_m_read_readvariableop;
7savev2_layer_normalization_3_beta_m_read_readvariableop6
2savev2_output_softmax_kernel_m_read_readvariableop4
0savev2_output_softmax_bias_m_read_readvariableop/
+savev2_dense_0_kernel_v_read_readvariableop-
)savev2_dense_0_bias_v_read_readvariableop<
8savev2_layer_normalization_1_gamma_v_read_readvariableop;
7savev2_layer_normalization_1_beta_v_read_readvariableop/
+savev2_dense_1_kernel_v_read_readvariableop-
)savev2_dense_1_bias_v_read_readvariableop<
8savev2_layer_normalization_2_gamma_v_read_readvariableop;
7savev2_layer_normalization_2_beta_v_read_readvariableop/
+savev2_dense_2_kernel_v_read_readvariableop-
)savev2_dense_2_bias_v_read_readvariableop<
8savev2_layer_normalization_3_gamma_v_read_readvariableop;
7savev2_layer_normalization_3_beta_v_read_readvariableop6
2savev2_output_softmax_kernel_v_read_readvariableop4
0savev2_output_softmax_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
value�B�8B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_0_kernel_read_readvariableop'savev2_dense_0_bias_read_readvariableop6savev2_layer_normalization_1_gamma_read_readvariableop5savev2_layer_normalization_1_beta_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop6savev2_layer_normalization_2_gamma_read_readvariableop5savev2_layer_normalization_2_beta_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop6savev2_layer_normalization_3_gamma_read_readvariableop5savev2_layer_normalization_3_beta_read_readvariableop0savev2_output_softmax_kernel_read_readvariableop.savev2_output_softmax_bias_read_readvariableopsavev2_iter_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop+savev2_dense_0_kernel_m_read_readvariableop)savev2_dense_0_bias_m_read_readvariableop8savev2_layer_normalization_1_gamma_m_read_readvariableop7savev2_layer_normalization_1_beta_m_read_readvariableop+savev2_dense_1_kernel_m_read_readvariableop)savev2_dense_1_bias_m_read_readvariableop8savev2_layer_normalization_2_gamma_m_read_readvariableop7savev2_layer_normalization_2_beta_m_read_readvariableop+savev2_dense_2_kernel_m_read_readvariableop)savev2_dense_2_bias_m_read_readvariableop8savev2_layer_normalization_3_gamma_m_read_readvariableop7savev2_layer_normalization_3_beta_m_read_readvariableop2savev2_output_softmax_kernel_m_read_readvariableop0savev2_output_softmax_bias_m_read_readvariableop+savev2_dense_0_kernel_v_read_readvariableop)savev2_dense_0_bias_v_read_readvariableop8savev2_layer_normalization_1_gamma_v_read_readvariableop7savev2_layer_normalization_1_beta_v_read_readvariableop+savev2_dense_1_kernel_v_read_readvariableop)savev2_dense_1_bias_v_read_readvariableop8savev2_layer_normalization_2_gamma_v_read_readvariableop7savev2_layer_normalization_2_beta_v_read_readvariableop+savev2_dense_2_kernel_v_read_readvariableop)savev2_dense_2_bias_v_read_readvariableop8savev2_layer_normalization_3_gamma_v_read_readvariableop7savev2_layer_normalization_3_beta_v_read_readvariableop2savev2_output_softmax_kernel_v_read_readvariableop0savev2_output_softmax_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *F
dtypes<
:28	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
�(�:�:�:�:
�8�:�:�:�:
�H�:�:�:�:
�X�:�: : : : : : : : : : : : : :
�(�:�:�:�:
�8�:�:�:�:
�H�:�:�:�:
�X�:�:
�(�:�:�:�:
�8�:�:�:�:
�H�:�:�:�:
�X�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
�(�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
�8�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
�H�:!


_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
�X�:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
�(�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:& "
 
_output_shapes
:
�8�:!!

_output_shapes	
:�:!"

_output_shapes	
:�:!#

_output_shapes	
:�:&$"
 
_output_shapes
:
�H�:!%

_output_shapes	
:�:!&

_output_shapes	
:�:!'

_output_shapes	
:�:&("
 
_output_shapes
:
�X�:!)

_output_shapes	
:�:&*"
 
_output_shapes
:
�(�:!+

_output_shapes	
:�:!,

_output_shapes	
:�:!-

_output_shapes	
:�:&."
 
_output_shapes
:
�8�:!/

_output_shapes	
:�:!0

_output_shapes	
:�:!1

_output_shapes	
:�:&2"
 
_output_shapes
:
�H�:!3

_output_shapes	
:�:!4

_output_shapes	
:�:!5

_output_shapes	
:�:&6"
 
_output_shapes
:
�X�:!7

_output_shapes	
:�:8

_output_shapes
: 
�

�
&__inference_model_1_layer_call_fn_1618
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_12692
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:���������� 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
S
'__inference_lambda_1_layer_call_fn_1981
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_10562
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
��
�
__inference__wrapped_model_641
input_fp
input_reagents2
.model_1_dense_0_matmul_readvariableop_resource3
/model_1_dense_0_biasadd_readvariableop_resource=
9model_1_layer_normalization_1_mul_readvariableop_resource?
;model_1_layer_normalization_1_add_1_readvariableop_resource2
.model_1_dense_1_matmul_readvariableop_resource3
/model_1_dense_1_biasadd_readvariableop_resource=
9model_1_layer_normalization_2_mul_readvariableop_resource?
;model_1_layer_normalization_2_add_1_readvariableop_resource2
.model_1_dense_2_matmul_readvariableop_resource3
/model_1_dense_2_biasadd_readvariableop_resource=
9model_1_layer_normalization_3_mul_readvariableop_resource?
;model_1_layer_normalization_3_add_1_readvariableop_resource9
5model_1_output_softmax_matmul_readvariableop_resource:
6model_1_output_softmax_biasadd_readvariableop_resource
identity��&model_1/dense_0/BiasAdd/ReadVariableOp�%model_1/dense_0/MatMul/ReadVariableOp�&model_1/dense_1/BiasAdd/ReadVariableOp�%model_1/dense_1/MatMul/ReadVariableOp�&model_1/dense_2/BiasAdd/ReadVariableOp�%model_1/dense_2/MatMul/ReadVariableOp�2model_1/layer_normalization_1/add_1/ReadVariableOp�0model_1/layer_normalization_1/mul/ReadVariableOp�2model_1/layer_normalization_2/add_1/ReadVariableOp�0model_1/layer_normalization_2/mul/ReadVariableOp�2model_1/layer_normalization_3/add_1/ReadVariableOp�0model_1/layer_normalization_3/mul/ReadVariableOp�-model_1/output_softmax/BiasAdd/ReadVariableOp�,model_1/output_softmax/MatMul/ReadVariableOp�
#model_1/reagents_concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_1/reagents_concat/concat/axis�
model_1/reagents_concat/concatConcatV2input_fpinput_reagents,model_1/reagents_concat/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������(2 
model_1/reagents_concat/concat�
%model_1/dense_0/MatMul/ReadVariableOpReadVariableOp.model_1_dense_0_matmul_readvariableop_resource* 
_output_shapes
:
�(�*
dtype02'
%model_1/dense_0/MatMul/ReadVariableOp�
model_1/dense_0/MatMulMatMul'model_1/reagents_concat/concat:output:0-model_1/dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/dense_0/MatMul�
&model_1/dense_0/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02(
&model_1/dense_0/BiasAdd/ReadVariableOp�
model_1/dense_0/BiasAddBiasAdd model_1/dense_0/MatMul:product:0.model_1/dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/dense_0/BiasAdd�
model_1/dense_0/ReluRelu model_1/dense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
model_1/dense_0/Relu�
4model_1/layer_normalization_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������26
4model_1/layer_normalization_1/Mean/reduction_indices�
"model_1/layer_normalization_1/MeanMean"model_1/dense_0/Relu:activations:0=model_1/layer_normalization_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2$
"model_1/layer_normalization_1/Mean�
!model_1/layer_normalization_1/subSub"model_1/dense_0/Relu:activations:0+model_1/layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:����������2#
!model_1/layer_normalization_1/sub�
$model_1/layer_normalization_1/SquareSquare%model_1/layer_normalization_1/sub:z:0*
T0*(
_output_shapes
:����������2&
$model_1/layer_normalization_1/Square�
6model_1/layer_normalization_1/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������28
6model_1/layer_normalization_1/Mean_1/reduction_indices�
$model_1/layer_normalization_1/Mean_1Mean(model_1/layer_normalization_1/Square:y:0?model_1/layer_normalization_1/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2&
$model_1/layer_normalization_1/Mean_1�
#model_1/layer_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2%
#model_1/layer_normalization_1/add/y�
!model_1/layer_normalization_1/addAddV2-model_1/layer_normalization_1/Mean_1:output:0,model_1/layer_normalization_1/add/y:output:0*
T0*'
_output_shapes
:���������2#
!model_1/layer_normalization_1/add�
#model_1/layer_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#model_1/layer_normalization_1/Const�
%model_1/layer_normalization_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2'
%model_1/layer_normalization_1/Const_1�
3model_1/layer_normalization_1/clip_by_value/MinimumMinimum%model_1/layer_normalization_1/add:z:0.model_1/layer_normalization_1/Const_1:output:0*
T0*'
_output_shapes
:���������25
3model_1/layer_normalization_1/clip_by_value/Minimum�
+model_1/layer_normalization_1/clip_by_valueMaximum7model_1/layer_normalization_1/clip_by_value/Minimum:z:0,model_1/layer_normalization_1/Const:output:0*
T0*'
_output_shapes
:���������2-
+model_1/layer_normalization_1/clip_by_value�
"model_1/layer_normalization_1/SqrtSqrt/model_1/layer_normalization_1/clip_by_value:z:0*
T0*'
_output_shapes
:���������2$
"model_1/layer_normalization_1/Sqrt�
#model_1/layer_normalization_1/sub_1Sub"model_1/dense_0/Relu:activations:0+model_1/layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:����������2%
#model_1/layer_normalization_1/sub_1�
%model_1/layer_normalization_1/truedivRealDiv'model_1/layer_normalization_1/sub_1:z:0&model_1/layer_normalization_1/Sqrt:y:0*
T0*(
_output_shapes
:����������2'
%model_1/layer_normalization_1/truediv�
0model_1/layer_normalization_1/mul/ReadVariableOpReadVariableOp9model_1_layer_normalization_1_mul_readvariableop_resource*
_output_shapes	
:�*
dtype022
0model_1/layer_normalization_1/mul/ReadVariableOp�
!model_1/layer_normalization_1/mulMul)model_1/layer_normalization_1/truediv:z:08model_1/layer_normalization_1/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!model_1/layer_normalization_1/mul�
2model_1/layer_normalization_1/add_1/ReadVariableOpReadVariableOp;model_1_layer_normalization_1_add_1_readvariableop_resource*
_output_shapes	
:�*
dtype024
2model_1/layer_normalization_1/add_1/ReadVariableOp�
#model_1/layer_normalization_1/add_1AddV2%model_1/layer_normalization_1/mul:z:0:model_1/layer_normalization_1/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#model_1/layer_normalization_1/add_1~
model_1/concat_0/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model_1/concat_0/concat/axis�
model_1/concat_0/concatConcatV2'model_1/reagents_concat/concat:output:0'model_1/layer_normalization_1/add_1:z:0%model_1/concat_0/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������82
model_1/concat_0/concat�
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
�8�*
dtype02'
%model_1/dense_1/MatMul/ReadVariableOp�
model_1/dense_1/MatMulMatMul model_1/concat_0/concat:output:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/dense_1/MatMul�
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02(
&model_1/dense_1/BiasAdd/ReadVariableOp�
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/dense_1/BiasAdd�
model_1/dense_1/ReluRelu model_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
model_1/dense_1/Relu�
4model_1/layer_normalization_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������26
4model_1/layer_normalization_2/Mean/reduction_indices�
"model_1/layer_normalization_2/MeanMean"model_1/dense_1/Relu:activations:0=model_1/layer_normalization_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2$
"model_1/layer_normalization_2/Mean�
!model_1/layer_normalization_2/subSub"model_1/dense_1/Relu:activations:0+model_1/layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:����������2#
!model_1/layer_normalization_2/sub�
$model_1/layer_normalization_2/SquareSquare%model_1/layer_normalization_2/sub:z:0*
T0*(
_output_shapes
:����������2&
$model_1/layer_normalization_2/Square�
6model_1/layer_normalization_2/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������28
6model_1/layer_normalization_2/Mean_1/reduction_indices�
$model_1/layer_normalization_2/Mean_1Mean(model_1/layer_normalization_2/Square:y:0?model_1/layer_normalization_2/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2&
$model_1/layer_normalization_2/Mean_1�
#model_1/layer_normalization_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2%
#model_1/layer_normalization_2/add/y�
!model_1/layer_normalization_2/addAddV2-model_1/layer_normalization_2/Mean_1:output:0,model_1/layer_normalization_2/add/y:output:0*
T0*'
_output_shapes
:���������2#
!model_1/layer_normalization_2/add�
#model_1/layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#model_1/layer_normalization_2/Const�
%model_1/layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2'
%model_1/layer_normalization_2/Const_1�
3model_1/layer_normalization_2/clip_by_value/MinimumMinimum%model_1/layer_normalization_2/add:z:0.model_1/layer_normalization_2/Const_1:output:0*
T0*'
_output_shapes
:���������25
3model_1/layer_normalization_2/clip_by_value/Minimum�
+model_1/layer_normalization_2/clip_by_valueMaximum7model_1/layer_normalization_2/clip_by_value/Minimum:z:0,model_1/layer_normalization_2/Const:output:0*
T0*'
_output_shapes
:���������2-
+model_1/layer_normalization_2/clip_by_value�
"model_1/layer_normalization_2/SqrtSqrt/model_1/layer_normalization_2/clip_by_value:z:0*
T0*'
_output_shapes
:���������2$
"model_1/layer_normalization_2/Sqrt�
#model_1/layer_normalization_2/sub_1Sub"model_1/dense_1/Relu:activations:0+model_1/layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:����������2%
#model_1/layer_normalization_2/sub_1�
%model_1/layer_normalization_2/truedivRealDiv'model_1/layer_normalization_2/sub_1:z:0&model_1/layer_normalization_2/Sqrt:y:0*
T0*(
_output_shapes
:����������2'
%model_1/layer_normalization_2/truediv�
0model_1/layer_normalization_2/mul/ReadVariableOpReadVariableOp9model_1_layer_normalization_2_mul_readvariableop_resource*
_output_shapes	
:�*
dtype022
0model_1/layer_normalization_2/mul/ReadVariableOp�
!model_1/layer_normalization_2/mulMul)model_1/layer_normalization_2/truediv:z:08model_1/layer_normalization_2/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!model_1/layer_normalization_2/mul�
2model_1/layer_normalization_2/add_1/ReadVariableOpReadVariableOp;model_1_layer_normalization_2_add_1_readvariableop_resource*
_output_shapes	
:�*
dtype024
2model_1/layer_normalization_2/add_1/ReadVariableOp�
#model_1/layer_normalization_2/add_1AddV2%model_1/layer_normalization_2/mul:z:0:model_1/layer_normalization_2/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#model_1/layer_normalization_2/add_1~
model_1/concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model_1/concat_1/concat/axis�
model_1/concat_1/concatConcatV2'model_1/reagents_concat/concat:output:0'model_1/layer_normalization_1/add_1:z:0'model_1/layer_normalization_2/add_1:z:0%model_1/concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������H2
model_1/concat_1/concat�
%model_1/dense_2/MatMul/ReadVariableOpReadVariableOp.model_1_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
�H�*
dtype02'
%model_1/dense_2/MatMul/ReadVariableOp�
model_1/dense_2/MatMulMatMul model_1/concat_1/concat:output:0-model_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/dense_2/MatMul�
&model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02(
&model_1/dense_2/BiasAdd/ReadVariableOp�
model_1/dense_2/BiasAddBiasAdd model_1/dense_2/MatMul:product:0.model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/dense_2/BiasAdd�
model_1/dense_2/ReluRelu model_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
model_1/dense_2/Relu�
4model_1/layer_normalization_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������26
4model_1/layer_normalization_3/Mean/reduction_indices�
"model_1/layer_normalization_3/MeanMean"model_1/dense_2/Relu:activations:0=model_1/layer_normalization_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2$
"model_1/layer_normalization_3/Mean�
!model_1/layer_normalization_3/subSub"model_1/dense_2/Relu:activations:0+model_1/layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:����������2#
!model_1/layer_normalization_3/sub�
$model_1/layer_normalization_3/SquareSquare%model_1/layer_normalization_3/sub:z:0*
T0*(
_output_shapes
:����������2&
$model_1/layer_normalization_3/Square�
6model_1/layer_normalization_3/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������28
6model_1/layer_normalization_3/Mean_1/reduction_indices�
$model_1/layer_normalization_3/Mean_1Mean(model_1/layer_normalization_3/Square:y:0?model_1/layer_normalization_3/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2&
$model_1/layer_normalization_3/Mean_1�
#model_1/layer_normalization_3/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2%
#model_1/layer_normalization_3/add/y�
!model_1/layer_normalization_3/addAddV2-model_1/layer_normalization_3/Mean_1:output:0,model_1/layer_normalization_3/add/y:output:0*
T0*'
_output_shapes
:���������2#
!model_1/layer_normalization_3/add�
#model_1/layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#model_1/layer_normalization_3/Const�
%model_1/layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2'
%model_1/layer_normalization_3/Const_1�
3model_1/layer_normalization_3/clip_by_value/MinimumMinimum%model_1/layer_normalization_3/add:z:0.model_1/layer_normalization_3/Const_1:output:0*
T0*'
_output_shapes
:���������25
3model_1/layer_normalization_3/clip_by_value/Minimum�
+model_1/layer_normalization_3/clip_by_valueMaximum7model_1/layer_normalization_3/clip_by_value/Minimum:z:0,model_1/layer_normalization_3/Const:output:0*
T0*'
_output_shapes
:���������2-
+model_1/layer_normalization_3/clip_by_value�
"model_1/layer_normalization_3/SqrtSqrt/model_1/layer_normalization_3/clip_by_value:z:0*
T0*'
_output_shapes
:���������2$
"model_1/layer_normalization_3/Sqrt�
#model_1/layer_normalization_3/sub_1Sub"model_1/dense_2/Relu:activations:0+model_1/layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:����������2%
#model_1/layer_normalization_3/sub_1�
%model_1/layer_normalization_3/truedivRealDiv'model_1/layer_normalization_3/sub_1:z:0&model_1/layer_normalization_3/Sqrt:y:0*
T0*(
_output_shapes
:����������2'
%model_1/layer_normalization_3/truediv�
0model_1/layer_normalization_3/mul/ReadVariableOpReadVariableOp9model_1_layer_normalization_3_mul_readvariableop_resource*
_output_shapes	
:�*
dtype022
0model_1/layer_normalization_3/mul/ReadVariableOp�
!model_1/layer_normalization_3/mulMul)model_1/layer_normalization_3/truediv:z:08model_1/layer_normalization_3/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!model_1/layer_normalization_3/mul�
2model_1/layer_normalization_3/add_1/ReadVariableOpReadVariableOp;model_1_layer_normalization_3_add_1_readvariableop_resource*
_output_shapes	
:�*
dtype024
2model_1/layer_normalization_3/add_1/ReadVariableOp�
#model_1/layer_normalization_3/add_1AddV2%model_1/layer_normalization_3/mul:z:0:model_1/layer_normalization_3/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#model_1/layer_normalization_3/add_1~
model_1/concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model_1/concat_2/concat/axis�
model_1/concat_2/concatConcatV2'model_1/reagents_concat/concat:output:0'model_1/layer_normalization_1/add_1:z:0'model_1/layer_normalization_2/add_1:z:0'model_1/layer_normalization_3/add_1:z:0%model_1/concat_2/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X2
model_1/concat_2/concat�
,model_1/output_softmax/MatMul/ReadVariableOpReadVariableOp5model_1_output_softmax_matmul_readvariableop_resource* 
_output_shapes
:
�X�*
dtype02.
,model_1/output_softmax/MatMul/ReadVariableOp�
model_1/output_softmax/MatMulMatMul model_1/concat_2/concat:output:04model_1/output_softmax/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/output_softmax/MatMul�
-model_1/output_softmax/BiasAdd/ReadVariableOpReadVariableOp6model_1_output_softmax_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-model_1/output_softmax/BiasAdd/ReadVariableOp�
model_1/output_softmax/BiasAddBiasAdd'model_1/output_softmax/MatMul:product:05model_1/output_softmax/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
model_1/output_softmax/BiasAddu
model_1/lambda_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�P2
model_1/lambda_1/mul/y�
model_1/lambda_1/mulMulinput_reagentsmodel_1/lambda_1/mul/y:output:0*
T0*(
_output_shapes
:����������2
model_1/lambda_1/mul�
model_1/lambda_1/subSub'model_1/output_softmax/BiasAdd:output:0model_1/lambda_1/mul:z:0*
T0*(
_output_shapes
:����������2
model_1/lambda_1/sub�
model_1/softmax_1/SoftmaxSoftmaxmodel_1/lambda_1/sub:z:0*
T0*(
_output_shapes
:����������2
model_1/softmax_1/Softmax�
IdentityIdentity#model_1/softmax_1/Softmax:softmax:0'^model_1/dense_0/BiasAdd/ReadVariableOp&^model_1/dense_0/MatMul/ReadVariableOp'^model_1/dense_1/BiasAdd/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp'^model_1/dense_2/BiasAdd/ReadVariableOp&^model_1/dense_2/MatMul/ReadVariableOp3^model_1/layer_normalization_1/add_1/ReadVariableOp1^model_1/layer_normalization_1/mul/ReadVariableOp3^model_1/layer_normalization_2/add_1/ReadVariableOp1^model_1/layer_normalization_2/mul/ReadVariableOp3^model_1/layer_normalization_3/add_1/ReadVariableOp1^model_1/layer_normalization_3/mul/ReadVariableOp.^model_1/output_softmax/BiasAdd/ReadVariableOp-^model_1/output_softmax/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::2P
&model_1/dense_0/BiasAdd/ReadVariableOp&model_1/dense_0/BiasAdd/ReadVariableOp2N
%model_1/dense_0/MatMul/ReadVariableOp%model_1/dense_0/MatMul/ReadVariableOp2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp2P
&model_1/dense_2/BiasAdd/ReadVariableOp&model_1/dense_2/BiasAdd/ReadVariableOp2N
%model_1/dense_2/MatMul/ReadVariableOp%model_1/dense_2/MatMul/ReadVariableOp2h
2model_1/layer_normalization_1/add_1/ReadVariableOp2model_1/layer_normalization_1/add_1/ReadVariableOp2d
0model_1/layer_normalization_1/mul/ReadVariableOp0model_1/layer_normalization_1/mul/ReadVariableOp2h
2model_1/layer_normalization_2/add_1/ReadVariableOp2model_1/layer_normalization_2/add_1/ReadVariableOp2d
0model_1/layer_normalization_2/mul/ReadVariableOp0model_1/layer_normalization_2/mul/ReadVariableOp2h
2model_1/layer_normalization_3/add_1/ReadVariableOp2model_1/layer_normalization_3/add_1/ReadVariableOp2d
0model_1/layer_normalization_3/mul/ReadVariableOp0model_1/layer_normalization_3/mul/ReadVariableOp2^
-model_1/output_softmax/BiasAdd/ReadVariableOp-model_1/output_softmax/BiasAdd/ReadVariableOp2\
,model_1/output_softmax/MatMul/ReadVariableOp,model_1/output_softmax/MatMul/ReadVariableOp:R N
(
_output_shapes
:���������� 
"
_user_specified_name
Input_fp:XT
(
_output_shapes
:����������
(
_user_specified_nameInput_reagents
�
�
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_952

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
Z
.__inference_reagents_concat_layer_call_fn_1631
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reagents_concat_layer_call_and_return_conditional_losses_6532
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:���������� :����������:R N
(
_output_shapes
:���������� 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1676

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
H__inference_output_softmax_layer_call_and_return_conditional_losses_1950

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�X�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������X::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������X
 
_user_specified_nameinputs
��
�

A__inference_model_1_layer_call_and_return_conditional_losses_1443
inputs_0
inputs_1*
&dense_0_matmul_readvariableop_resource+
'dense_0_biasadd_readvariableop_resource5
1layer_normalization_1_mul_readvariableop_resource7
3layer_normalization_1_add_1_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource5
1layer_normalization_2_mul_readvariableop_resource7
3layer_normalization_2_add_1_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource5
1layer_normalization_3_mul_readvariableop_resource7
3layer_normalization_3_add_1_readvariableop_resource1
-output_softmax_matmul_readvariableop_resource2
.output_softmax_biasadd_readvariableop_resource
identity��dense_0/BiasAdd/ReadVariableOp�dense_0/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�*layer_normalization_1/add_1/ReadVariableOp�(layer_normalization_1/mul/ReadVariableOp�*layer_normalization_2/add_1/ReadVariableOp�(layer_normalization_2/mul/ReadVariableOp�*layer_normalization_3/add_1/ReadVariableOp�(layer_normalization_3/mul/ReadVariableOp�%output_softmax/BiasAdd/ReadVariableOp�$output_softmax/MatMul/ReadVariableOp|
reagents_concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
reagents_concat/concat/axis�
reagents_concat/concatConcatV2inputs_0inputs_1$reagents_concat/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������(2
reagents_concat/concat�
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource* 
_output_shapes
:
�(�*
dtype02
dense_0/MatMul/ReadVariableOp�
dense_0/MatMulMatMulreagents_concat/concat:output:0%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/MatMul�
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_0/BiasAdd/ReadVariableOp�
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_0/Relu�
,layer_normalization_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,layer_normalization_1/Mean/reduction_indices�
layer_normalization_1/MeanMeandense_0/Relu:activations:05layer_normalization_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_1/Mean�
layer_normalization_1/subSubdense_0/Relu:activations:0#layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/sub�
layer_normalization_1/SquareSquarelayer_normalization_1/sub:z:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/Square�
.layer_normalization_1/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.layer_normalization_1/Mean_1/reduction_indices�
layer_normalization_1/Mean_1Mean layer_normalization_1/Square:y:07layer_normalization_1/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_1/Mean_1
layer_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
layer_normalization_1/add/y�
layer_normalization_1/addAddV2%layer_normalization_1/Mean_1:output:0$layer_normalization_1/add/y:output:0*
T0*'
_output_shapes
:���������2
layer_normalization_1/add
layer_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_1/Const�
layer_normalization_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2
layer_normalization_1/Const_1�
+layer_normalization_1/clip_by_value/MinimumMinimumlayer_normalization_1/add:z:0&layer_normalization_1/Const_1:output:0*
T0*'
_output_shapes
:���������2-
+layer_normalization_1/clip_by_value/Minimum�
#layer_normalization_1/clip_by_valueMaximum/layer_normalization_1/clip_by_value/Minimum:z:0$layer_normalization_1/Const:output:0*
T0*'
_output_shapes
:���������2%
#layer_normalization_1/clip_by_value�
layer_normalization_1/SqrtSqrt'layer_normalization_1/clip_by_value:z:0*
T0*'
_output_shapes
:���������2
layer_normalization_1/Sqrt�
layer_normalization_1/sub_1Subdense_0/Relu:activations:0#layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/sub_1�
layer_normalization_1/truedivRealDivlayer_normalization_1/sub_1:z:0layer_normalization_1/Sqrt:y:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/truediv�
(layer_normalization_1/mul/ReadVariableOpReadVariableOp1layer_normalization_1_mul_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(layer_normalization_1/mul/ReadVariableOp�
layer_normalization_1/mulMul!layer_normalization_1/truediv:z:00layer_normalization_1/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/mul�
*layer_normalization_1/add_1/ReadVariableOpReadVariableOp3layer_normalization_1_add_1_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*layer_normalization_1/add_1/ReadVariableOp�
layer_normalization_1/add_1AddV2layer_normalization_1/mul:z:02layer_normalization_1/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_1/add_1n
concat_0/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_0/concat/axis�
concat_0/concatConcatV2reagents_concat/concat:output:0layer_normalization_1/add_1:z:0concat_0/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������82
concat_0/concat�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
�8�*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMulconcat_0/concat:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_1/Relu�
,layer_normalization_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,layer_normalization_2/Mean/reduction_indices�
layer_normalization_2/MeanMeandense_1/Relu:activations:05layer_normalization_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_2/Mean�
layer_normalization_2/subSubdense_1/Relu:activations:0#layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/sub�
layer_normalization_2/SquareSquarelayer_normalization_2/sub:z:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/Square�
.layer_normalization_2/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.layer_normalization_2/Mean_1/reduction_indices�
layer_normalization_2/Mean_1Mean layer_normalization_2/Square:y:07layer_normalization_2/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_2/Mean_1
layer_normalization_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
layer_normalization_2/add/y�
layer_normalization_2/addAddV2%layer_normalization_2/Mean_1:output:0$layer_normalization_2/add/y:output:0*
T0*'
_output_shapes
:���������2
layer_normalization_2/add
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_2/Const�
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2
layer_normalization_2/Const_1�
+layer_normalization_2/clip_by_value/MinimumMinimumlayer_normalization_2/add:z:0&layer_normalization_2/Const_1:output:0*
T0*'
_output_shapes
:���������2-
+layer_normalization_2/clip_by_value/Minimum�
#layer_normalization_2/clip_by_valueMaximum/layer_normalization_2/clip_by_value/Minimum:z:0$layer_normalization_2/Const:output:0*
T0*'
_output_shapes
:���������2%
#layer_normalization_2/clip_by_value�
layer_normalization_2/SqrtSqrt'layer_normalization_2/clip_by_value:z:0*
T0*'
_output_shapes
:���������2
layer_normalization_2/Sqrt�
layer_normalization_2/sub_1Subdense_1/Relu:activations:0#layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/sub_1�
layer_normalization_2/truedivRealDivlayer_normalization_2/sub_1:z:0layer_normalization_2/Sqrt:y:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/truediv�
(layer_normalization_2/mul/ReadVariableOpReadVariableOp1layer_normalization_2_mul_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(layer_normalization_2/mul/ReadVariableOp�
layer_normalization_2/mulMul!layer_normalization_2/truediv:z:00layer_normalization_2/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/mul�
*layer_normalization_2/add_1/ReadVariableOpReadVariableOp3layer_normalization_2_add_1_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*layer_normalization_2/add_1/ReadVariableOp�
layer_normalization_2/add_1AddV2layer_normalization_2/mul:z:02layer_normalization_2/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_2/add_1n
concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/concat/axis�
concat_1/concatConcatV2reagents_concat/concat:output:0layer_normalization_1/add_1:z:0layer_normalization_2/add_1:z:0concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������H2
concat_1/concat�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
�H�*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulconcat_1/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_2/Relu�
,layer_normalization_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,layer_normalization_3/Mean/reduction_indices�
layer_normalization_3/MeanMeandense_2/Relu:activations:05layer_normalization_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_3/Mean�
layer_normalization_3/subSubdense_2/Relu:activations:0#layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/sub�
layer_normalization_3/SquareSquarelayer_normalization_3/sub:z:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/Square�
.layer_normalization_3/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.layer_normalization_3/Mean_1/reduction_indices�
layer_normalization_3/Mean_1Mean layer_normalization_3/Square:y:07layer_normalization_3/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
layer_normalization_3/Mean_1
layer_normalization_3/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
layer_normalization_3/add/y�
layer_normalization_3/addAddV2%layer_normalization_3/Mean_1:output:0$layer_normalization_3/add/y:output:0*
T0*'
_output_shapes
:���������2
layer_normalization_3/add
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_3/Const�
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2
layer_normalization_3/Const_1�
+layer_normalization_3/clip_by_value/MinimumMinimumlayer_normalization_3/add:z:0&layer_normalization_3/Const_1:output:0*
T0*'
_output_shapes
:���������2-
+layer_normalization_3/clip_by_value/Minimum�
#layer_normalization_3/clip_by_valueMaximum/layer_normalization_3/clip_by_value/Minimum:z:0$layer_normalization_3/Const:output:0*
T0*'
_output_shapes
:���������2%
#layer_normalization_3/clip_by_value�
layer_normalization_3/SqrtSqrt'layer_normalization_3/clip_by_value:z:0*
T0*'
_output_shapes
:���������2
layer_normalization_3/Sqrt�
layer_normalization_3/sub_1Subdense_2/Relu:activations:0#layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/sub_1�
layer_normalization_3/truedivRealDivlayer_normalization_3/sub_1:z:0layer_normalization_3/Sqrt:y:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/truediv�
(layer_normalization_3/mul/ReadVariableOpReadVariableOp1layer_normalization_3_mul_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(layer_normalization_3/mul/ReadVariableOp�
layer_normalization_3/mulMul!layer_normalization_3/truediv:z:00layer_normalization_3/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/mul�
*layer_normalization_3/add_1/ReadVariableOpReadVariableOp3layer_normalization_3_add_1_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*layer_normalization_3/add_1/ReadVariableOp�
layer_normalization_3/add_1AddV2layer_normalization_3/mul:z:02layer_normalization_3/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
layer_normalization_3/add_1n
concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/concat/axis�
concat_2/concatConcatV2reagents_concat/concat:output:0layer_normalization_1/add_1:z:0layer_normalization_2/add_1:z:0layer_normalization_3/add_1:z:0concat_2/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X2
concat_2/concat�
$output_softmax/MatMul/ReadVariableOpReadVariableOp-output_softmax_matmul_readvariableop_resource* 
_output_shapes
:
�X�*
dtype02&
$output_softmax/MatMul/ReadVariableOp�
output_softmax/MatMulMatMulconcat_2/concat:output:0,output_softmax/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
output_softmax/MatMul�
%output_softmax/BiasAdd/ReadVariableOpReadVariableOp.output_softmax_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%output_softmax/BiasAdd/ReadVariableOp�
output_softmax/BiasAddBiasAddoutput_softmax/MatMul:product:0-output_softmax/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
output_softmax/BiasAdde
lambda_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�P2
lambda_1/mul/yy
lambda_1/mulMulinputs_1lambda_1/mul/y:output:0*
T0*(
_output_shapes
:����������2
lambda_1/mul�
lambda_1/subSuboutput_softmax/BiasAdd:output:0lambda_1/mul:z:0*
T0*(
_output_shapes
:����������2
lambda_1/subv
softmax_1/SoftmaxSoftmaxlambda_1/sub:z:0*
T0*(
_output_shapes
:����������2
softmax_1/Softmax�
IdentityIdentitysoftmax_1/Softmax:softmax:0^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp+^layer_normalization_1/add_1/ReadVariableOp)^layer_normalization_1/mul/ReadVariableOp+^layer_normalization_2/add_1/ReadVariableOp)^layer_normalization_2/mul/ReadVariableOp+^layer_normalization_3/add_1/ReadVariableOp)^layer_normalization_3/mul/ReadVariableOp&^output_softmax/BiasAdd/ReadVariableOp%^output_softmax/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2X
*layer_normalization_1/add_1/ReadVariableOp*layer_normalization_1/add_1/ReadVariableOp2T
(layer_normalization_1/mul/ReadVariableOp(layer_normalization_1/mul/ReadVariableOp2X
*layer_normalization_2/add_1/ReadVariableOp*layer_normalization_2/add_1/ReadVariableOp2T
(layer_normalization_2/mul/ReadVariableOp(layer_normalization_2/mul/ReadVariableOp2X
*layer_normalization_3/add_1/ReadVariableOp*layer_normalization_3/add_1/ReadVariableOp2T
(layer_normalization_3/mul/ReadVariableOp(layer_normalization_3/mul/ReadVariableOp2N
%output_softmax/BiasAdd/ReadVariableOp%output_softmax/BiasAdd/ReadVariableOp2L
$output_softmax/MatMul/ReadVariableOp$output_softmax/MatMul/ReadVariableOp:R N
(
_output_shapes
:���������� 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
a
'__inference_concat_1_layer_call_fn_1835
inputs_0
inputs_1
inputs_2
identity�
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_concat_1_layer_call_and_return_conditional_losses_8902
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������H2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:����������(:����������:����������:R N
(
_output_shapes
:����������(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/2
�

�
&__inference_model_1_layer_call_fn_1220
input_fp
input_reagents
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_fpinput_reagentsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_11892
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:���������� 
"
_user_specified_name
Input_fp:XT
(
_output_shapes
:����������
(
_user_specified_nameInput_reagents
�
l
B__inference_lambda_1_layer_call_and_return_conditional_losses_1064

inputs
inputs_1
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�P2
mul/y^
mulMulinputs_1mul/y:output:0*
T0*(
_output_shapes
:����������2
mulU
subSubinputsmul:z:0*
T0*(
_output_shapes
:����������2
sub\
IdentityIdentitysub:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
"__inference_signature_wrapper_1336
input_fp
input_reagents
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_fpinput_reagentsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__wrapped_model_6412
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:���������� 
"
_user_specified_name
Input_fp:XT
(
_output_shapes
:����������
(
_user_specified_nameInput_reagents
�
{
&__inference_dense_2_layer_call_fn_1855

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_9112
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������H::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������H
 
_user_specified_nameinputs
�	
�
@__inference_dense_0_layer_call_and_return_conditional_losses_673

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�(�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������(::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������(
 
_user_specified_nameinputs
�=
�
A__inference_model_1_layer_call_and_return_conditional_losses_1139
input_fp
input_reagents
dense_0_1098
dense_0_1100
layer_normalization_1_1103
layer_normalization_1_1105
dense_1_1109
dense_1_1111
layer_normalization_2_1114
layer_normalization_2_1116
dense_2_1120
dense_2_1122
layer_normalization_3_1125
layer_normalization_3_1127
output_softmax_1131
output_softmax_1133
identity��dense_0/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�-layer_normalization_3/StatefulPartitionedCall�&output_softmax/StatefulPartitionedCall�
reagents_concat/PartitionedCallPartitionedCallinput_fpinput_reagents*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reagents_concat_layer_call_and_return_conditional_losses_6532!
reagents_concat/PartitionedCall�
dense_0/StatefulPartitionedCallStatefulPartitionedCall(reagents_concat/PartitionedCall:output:0dense_0_1098dense_0_1100*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_0_layer_call_and_return_conditional_losses_6732!
dense_0/StatefulPartitionedCall�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0layer_normalization_1_1103layer_normalization_1_1105*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7392/
-layer_normalization_1/StatefulPartitionedCall�
concat_0/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_concat_0_layer_call_and_return_conditional_losses_7712
concat_0/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall!concat_0/PartitionedCall:output:0dense_1_1109dense_1_1111*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_7912!
dense_1/StatefulPartitionedCall�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_2_1114layer_normalization_2_1116*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8572/
-layer_normalization_2/StatefulPartitionedCall�
concat_1/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_concat_1_layer_call_and_return_conditional_losses_8902
concat_1/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall!concat_1/PartitionedCall:output:0dense_2_1120dense_2_1122*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_9112!
dense_2/StatefulPartitionedCall�
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0layer_normalization_3_1125layer_normalization_3_1127*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9772/
-layer_normalization_3/StatefulPartitionedCall�
concat_2/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������X* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_concat_2_layer_call_and_return_conditional_losses_10112
concat_2/PartitionedCall�
&output_softmax/StatefulPartitionedCallStatefulPartitionedCall!concat_2/PartitionedCall:output:0output_softmax_1131output_softmax_1133*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_output_softmax_layer_call_and_return_conditional_losses_10322(
&output_softmax/StatefulPartitionedCall�
lambda_1/PartitionedCallPartitionedCall/output_softmax/StatefulPartitionedCall:output:0input_reagents*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_10642
lambda_1/PartitionedCall�
softmax_1/PartitionedCallPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_softmax_1_layer_call_and_return_conditional_losses_10842
softmax_1/PartitionedCall�
IdentityIdentity"softmax_1/PartitionedCall:output:0 ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall'^output_softmax/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2P
&output_softmax/StatefulPartitionedCall&output_softmax/StatefulPartitionedCall:R N
(
_output_shapes
:���������� 
"
_user_specified_name
Input_fp:XT
(
_output_shapes
:����������
(
_user_specified_nameInput_reagents
�	
�
A__inference_dense_2_layer_call_and_return_conditional_losses_1846

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�H�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������H::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������H
 
_user_specified_nameinputs
�=
�
A__inference_model_1_layer_call_and_return_conditional_losses_1269

inputs
inputs_1
dense_0_1228
dense_0_1230
layer_normalization_1_1233
layer_normalization_1_1235
dense_1_1239
dense_1_1241
layer_normalization_2_1244
layer_normalization_2_1246
dense_2_1250
dense_2_1252
layer_normalization_3_1255
layer_normalization_3_1257
output_softmax_1261
output_softmax_1263
identity��dense_0/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�-layer_normalization_3/StatefulPartitionedCall�&output_softmax/StatefulPartitionedCall�
reagents_concat/PartitionedCallPartitionedCallinputsinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reagents_concat_layer_call_and_return_conditional_losses_6532!
reagents_concat/PartitionedCall�
dense_0/StatefulPartitionedCallStatefulPartitionedCall(reagents_concat/PartitionedCall:output:0dense_0_1228dense_0_1230*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_0_layer_call_and_return_conditional_losses_6732!
dense_0/StatefulPartitionedCall�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0layer_normalization_1_1233layer_normalization_1_1235*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7392/
-layer_normalization_1/StatefulPartitionedCall�
concat_0/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_concat_0_layer_call_and_return_conditional_losses_7712
concat_0/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall!concat_0/PartitionedCall:output:0dense_1_1239dense_1_1241*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_7912!
dense_1/StatefulPartitionedCall�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_2_1244layer_normalization_2_1246*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8572/
-layer_normalization_2/StatefulPartitionedCall�
concat_1/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_concat_1_layer_call_and_return_conditional_losses_8902
concat_1/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall!concat_1/PartitionedCall:output:0dense_2_1250dense_2_1252*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_9112!
dense_2/StatefulPartitionedCall�
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0layer_normalization_3_1255layer_normalization_3_1257*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9772/
-layer_normalization_3/StatefulPartitionedCall�
concat_2/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������X* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_concat_2_layer_call_and_return_conditional_losses_10112
concat_2/PartitionedCall�
&output_softmax/StatefulPartitionedCallStatefulPartitionedCall!concat_2/PartitionedCall:output:0output_softmax_1261output_softmax_1263*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_output_softmax_layer_call_and_return_conditional_losses_10322(
&output_softmax/StatefulPartitionedCall�
lambda_1/PartitionedCallPartitionedCall/output_softmax/StatefulPartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_10642
lambda_1/PartitionedCall�
softmax_1/PartitionedCallPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_softmax_1_layer_call_and_return_conditional_losses_10842
softmax_1/PartitionedCall�
IdentityIdentity"softmax_1/PartitionedCall:output:0 ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall'^output_softmax/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2P
&output_softmax/StatefulPartitionedCall&output_softmax/StatefulPartitionedCall:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_output_softmax_layer_call_fn_1959

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_output_softmax_layer_call_and_return_conditional_losses_10322
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������X::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������X
 
_user_specified_nameinputs
�
�
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_857

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1701

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
@__inference_dense_2_layer_call_and_return_conditional_losses_911

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�H�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������H::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������H
 
_user_specified_nameinputs
�
n
B__inference_lambda_1_layer_call_and_return_conditional_losses_1975
inputs_0
inputs_1
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�P2
mul/y^
mulMulinputs_1mul/y:output:0*
T0*(
_output_shapes
:����������2
mulW
subSubinputs_0mul:z:0*
T0*(
_output_shapes
:����������2
sub\
IdentityIdentitysub:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
u
I__inference_reagents_concat_layer_call_and_return_conditional_losses_1625
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������(2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:���������� :����������:R N
(
_output_shapes
:���������� 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
4__inference_layer_normalization_3_layer_call_fn_1914

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9522
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_739

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1880

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
_
C__inference_softmax_1_layer_call_and_return_conditional_losses_1084

inputs
identityX
SoftmaxSoftmaxinputs*
T0*(
_output_shapes
:����������2	
Softmaxf
IdentityIdentitySoftmax:softmax:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_832

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
4__inference_layer_normalization_1_layer_call_fn_1719

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
S
'__inference_lambda_1_layer_call_fn_1987
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_10642
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
��
�
 __inference__traced_restore_2361
file_prefix#
assignvariableop_dense_0_kernel#
assignvariableop_1_dense_0_bias2
.assignvariableop_2_layer_normalization_1_gamma1
-assignvariableop_3_layer_normalization_1_beta%
!assignvariableop_4_dense_1_kernel#
assignvariableop_5_dense_1_bias2
.assignvariableop_6_layer_normalization_2_gamma1
-assignvariableop_7_layer_normalization_2_beta%
!assignvariableop_8_dense_2_kernel#
assignvariableop_9_dense_2_bias3
/assignvariableop_10_layer_normalization_3_gamma2
.assignvariableop_11_layer_normalization_3_beta-
)assignvariableop_12_output_softmax_kernel+
'assignvariableop_13_output_softmax_bias
assignvariableop_14_iter
assignvariableop_15_beta_1
assignvariableop_16_beta_2
assignvariableop_17_decay%
!assignvariableop_18_learning_rate
assignvariableop_19_total
assignvariableop_20_count
assignvariableop_21_total_1
assignvariableop_22_count_1
assignvariableop_23_total_2
assignvariableop_24_count_2
assignvariableop_25_total_3
assignvariableop_26_count_3(
$assignvariableop_27_dense_0_kernel_m&
"assignvariableop_28_dense_0_bias_m5
1assignvariableop_29_layer_normalization_1_gamma_m4
0assignvariableop_30_layer_normalization_1_beta_m(
$assignvariableop_31_dense_1_kernel_m&
"assignvariableop_32_dense_1_bias_m5
1assignvariableop_33_layer_normalization_2_gamma_m4
0assignvariableop_34_layer_normalization_2_beta_m(
$assignvariableop_35_dense_2_kernel_m&
"assignvariableop_36_dense_2_bias_m5
1assignvariableop_37_layer_normalization_3_gamma_m4
0assignvariableop_38_layer_normalization_3_beta_m/
+assignvariableop_39_output_softmax_kernel_m-
)assignvariableop_40_output_softmax_bias_m(
$assignvariableop_41_dense_0_kernel_v&
"assignvariableop_42_dense_0_bias_v5
1assignvariableop_43_layer_normalization_1_gamma_v4
0assignvariableop_44_layer_normalization_1_beta_v(
$assignvariableop_45_dense_1_kernel_v&
"assignvariableop_46_dense_1_bias_v5
1assignvariableop_47_layer_normalization_2_gamma_v4
0assignvariableop_48_layer_normalization_2_beta_v(
$assignvariableop_49_dense_2_kernel_v&
"assignvariableop_50_dense_2_bias_v5
1assignvariableop_51_layer_normalization_3_gamma_v4
0assignvariableop_52_layer_normalization_3_beta_v/
+assignvariableop_53_output_softmax_kernel_v-
)assignvariableop_54_output_softmax_bias_v
identity_56��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
value�B�8B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_dense_0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp.assignvariableop_2_layer_normalization_1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp-assignvariableop_3_layer_normalization_1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp.assignvariableop_6_layer_normalization_2_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp-assignvariableop_7_layer_normalization_2_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_layer_normalization_3_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp.assignvariableop_11_layer_normalization_3_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp)assignvariableop_12_output_softmax_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp'assignvariableop_13_output_softmax_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp!assignvariableop_18_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_2Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_3Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_3Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp$assignvariableop_27_dense_0_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp"assignvariableop_28_dense_0_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp1assignvariableop_29_layer_normalization_1_gamma_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp0assignvariableop_30_layer_normalization_1_beta_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp$assignvariableop_31_dense_1_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp"assignvariableop_32_dense_1_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp1assignvariableop_33_layer_normalization_2_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp0assignvariableop_34_layer_normalization_2_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp$assignvariableop_35_dense_2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp"assignvariableop_36_dense_2_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp1assignvariableop_37_layer_normalization_3_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp0assignvariableop_38_layer_normalization_3_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp+assignvariableop_39_output_softmax_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp)assignvariableop_40_output_softmax_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp$assignvariableop_41_dense_0_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp"assignvariableop_42_dense_0_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp1assignvariableop_43_layer_normalization_1_gamma_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp0assignvariableop_44_layer_normalization_1_beta_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp$assignvariableop_45_dense_1_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp"assignvariableop_46_dense_1_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp1assignvariableop_47_layer_normalization_2_gamma_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp0assignvariableop_48_layer_normalization_2_beta_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp$assignvariableop_49_dense_2_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOp"assignvariableop_50_dense_2_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51�
AssignVariableOp_51AssignVariableOp1assignvariableop_51_layer_normalization_3_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52�
AssignVariableOp_52AssignVariableOp0assignvariableop_52_layer_normalization_3_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53�
AssignVariableOp_53AssignVariableOp+assignvariableop_53_output_softmax_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54�
AssignVariableOp_54AssignVariableOp)assignvariableop_54_output_softmax_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_549
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_55Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_55�

Identity_56IdentityIdentity_55:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_56"#
identity_56Identity_56:output:0*�
_input_shapes�
�: :::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
�
A__inference_dense_0_layer_call_and_return_conditional_losses_1642

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�(�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������(::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������(
 
_user_specified_nameinputs
�
o
'__inference_concat_2_layer_call_fn_1940
inputs_0
inputs_1
inputs_2
inputs_3
identity�
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������X* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_concat_2_layer_call_and_return_conditional_losses_10112
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������X2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:����������(:����������:����������:����������:R N
(
_output_shapes
:����������(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/3
�
�
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1905

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identity��add_1/ReadVariableOp�mul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean/reduction_indices�
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indices�
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:���������2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �2	
Const_1�
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:���������2
clip_by_value/Minimum�
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:���������2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:���������2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:����������2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:����������2	
truediv�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:�*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
mul�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
add_1�
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
&__inference_model_1_layer_call_fn_1584
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_11892
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:���������� 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
{
&__inference_dense_1_layer_call_fn_1752

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_7912
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������8::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������8
 
_user_specified_nameinputs
�=
�
A__inference_model_1_layer_call_and_return_conditional_losses_1189

inputs
inputs_1
dense_0_1148
dense_0_1150
layer_normalization_1_1153
layer_normalization_1_1155
dense_1_1159
dense_1_1161
layer_normalization_2_1164
layer_normalization_2_1166
dense_2_1170
dense_2_1172
layer_normalization_3_1175
layer_normalization_3_1177
output_softmax_1181
output_softmax_1183
identity��dense_0/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�-layer_normalization_3/StatefulPartitionedCall�&output_softmax/StatefulPartitionedCall�
reagents_concat/PartitionedCallPartitionedCallinputsinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reagents_concat_layer_call_and_return_conditional_losses_6532!
reagents_concat/PartitionedCall�
dense_0/StatefulPartitionedCallStatefulPartitionedCall(reagents_concat/PartitionedCall:output:0dense_0_1148dense_0_1150*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_0_layer_call_and_return_conditional_losses_6732!
dense_0/StatefulPartitionedCall�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0layer_normalization_1_1153layer_normalization_1_1155*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7142/
-layer_normalization_1/StatefulPartitionedCall�
concat_0/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_concat_0_layer_call_and_return_conditional_losses_7712
concat_0/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall!concat_0/PartitionedCall:output:0dense_1_1159dense_1_1161*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_7912!
dense_1/StatefulPartitionedCall�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_2_1164layer_normalization_2_1166*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8322/
-layer_normalization_2/StatefulPartitionedCall�
concat_1/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_concat_1_layer_call_and_return_conditional_losses_8902
concat_1/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall!concat_1/PartitionedCall:output:0dense_2_1170dense_2_1172*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_9112!
dense_2/StatefulPartitionedCall�
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0layer_normalization_3_1175layer_normalization_3_1177*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9522/
-layer_normalization_3/StatefulPartitionedCall�
concat_2/PartitionedCallPartitionedCall(reagents_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������X* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_concat_2_layer_call_and_return_conditional_losses_10112
concat_2/PartitionedCall�
&output_softmax/StatefulPartitionedCallStatefulPartitionedCall!concat_2/PartitionedCall:output:0output_softmax_1181output_softmax_1183*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_output_softmax_layer_call_and_return_conditional_losses_10322(
&output_softmax/StatefulPartitionedCall�
lambda_1/PartitionedCallPartitionedCall/output_softmax/StatefulPartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_10562
lambda_1/PartitionedCall�
softmax_1/PartitionedCallPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_softmax_1_layer_call_and_return_conditional_losses_10842
softmax_1/PartitionedCall�
IdentityIdentity"softmax_1/PartitionedCall:output:0 ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall'^output_softmax/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:���������� :����������::::::::::::::2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2P
&output_softmax/StatefulPartitionedCall&output_softmax/StatefulPartitionedCall:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
4__inference_layer_normalization_3_layer_call_fn_1923

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9772
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
{
&__inference_dense_0_layer_call_fn_1651

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_0_layer_call_and_return_conditional_losses_6732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������(::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������(
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
>
Input_fp2
serving_default_Input_fp:0���������� 
J
Input_reagents8
 serving_default_Input_reagents:0����������>
	softmax_11
StatefulPartitionedCall:0����������tensorflow/serving/predict:�
�k
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
layer-13
layer-14
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
+�&call_and_return_all_conditional_losses
�__call__
�_default_save_signature"�g
_tf_keras_network�f{"class_name": "Functional", "name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4096]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_fp"}, "name": "Input_fp", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1027]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_reagents"}, "name": "Input_reagents", "inbound_nodes": []}, {"class_name": "Concatenate", "config": {"name": "reagents_concat", "trainable": true, "dtype": "float32", "axis": -1}, "name": "reagents_concat", "inbound_nodes": [[["Input_fp", 0, 0, {}], ["Input_reagents", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_0", "inbound_nodes": [[["reagents_concat", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_1", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_1", "inbound_nodes": [[["dense_0", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_0", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_0", "inbound_nodes": [[["reagents_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["concat_0", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_2", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_1", "inbound_nodes": [[["reagents_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}], ["layer_normalization_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["concat_1", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_3", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_2", "inbound_nodes": [[["reagents_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}], ["layer_normalization_2", 0, 0, {}], ["layer_normalization_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_softmax", "trainable": true, "dtype": "float32", "units": 1027, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_softmax", "inbound_nodes": [[["concat_2", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAMAAABTAAAAcxQAAAB8AGQBGQB8AGQCGQBkAxQAGABTACkETukAAAAA6QEA\nAABnAAAAIF+gAkKpACkB2gF4cgMAAAByAwAAAPpOL3dvcmsvamlhbm5hbmwvY29uZGl0aW9uX3Jl\ndHJhaW5fbmV3ZGF0YTJfbmV3bGF5ZXJfbm9ybWxheWVyL21vZGVsX2Jhc2VsaW5lLnB52gg8bGFt\nYmRhPp8AAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "tensorflow.python.keras.layers.core", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_1", "inbound_nodes": [[["output_softmax", 0, 0, {}], ["Input_reagents", 0, 0, {}]]]}, {"class_name": "Softmax", "config": {"name": "softmax_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "softmax_1", "inbound_nodes": [[["lambda_1", 0, 0, {}]]]}], "input_layers": [["Input_fp", 0, 0], ["Input_reagents", 0, 0]], "output_layers": [["softmax_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 4096]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1027]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 4096]}, {"class_name": "TensorShape", "items": [null, 1027]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4096]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_fp"}, "name": "Input_fp", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1027]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_reagents"}, "name": "Input_reagents", "inbound_nodes": []}, {"class_name": "Concatenate", "config": {"name": "reagents_concat", "trainable": true, "dtype": "float32", "axis": -1}, "name": "reagents_concat", "inbound_nodes": [[["Input_fp", 0, 0, {}], ["Input_reagents", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_0", "inbound_nodes": [[["reagents_concat", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_1", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_1", "inbound_nodes": [[["dense_0", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_0", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_0", "inbound_nodes": [[["reagents_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["concat_0", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_2", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_1", "inbound_nodes": [[["reagents_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}], ["layer_normalization_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["concat_1", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_3", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_2", "inbound_nodes": [[["reagents_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}], ["layer_normalization_2", 0, 0, {}], ["layer_normalization_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_softmax", "trainable": true, "dtype": "float32", "units": 1027, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_softmax", "inbound_nodes": [[["concat_2", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAMAAABTAAAAcxQAAAB8AGQBGQB8AGQCGQBkAxQAGABTACkETukAAAAA6QEA\nAABnAAAAIF+gAkKpACkB2gF4cgMAAAByAwAAAPpOL3dvcmsvamlhbm5hbmwvY29uZGl0aW9uX3Jl\ndHJhaW5fbmV3ZGF0YTJfbmV3bGF5ZXJfbm9ybWxheWVyL21vZGVsX2Jhc2VsaW5lLnB52gg8bGFt\nYmRhPp8AAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "tensorflow.python.keras.layers.core", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_1", "inbound_nodes": [[["output_softmax", 0, 0, {}], ["Input_reagents", 0, 0, {}]]]}, {"class_name": "Softmax", "config": {"name": "softmax_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "softmax_1", "inbound_nodes": [[["lambda_1", 0, 0, {}]]]}], "input_layers": [["Input_fp", 0, 0], ["Input_reagents", 0, 0]], "output_layers": [["softmax_1", 0, 0]]}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "Input_fp", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 4096]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4096]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_fp"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "Input_reagents", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1027]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1027]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_reagents"}}
�
	variables
regularization_losses
trainable_variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Concatenate", "name": "reagents_concat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reagents_concat", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 4096]}, {"class_name": "TensorShape", "items": [null, 1027]}]}
�

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5123}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5123]}}
�
	 gamma
!beta
"	variables
#regularization_losses
$trainable_variables
%	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "LayerNormalization", "name": "layer_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_1", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2048]}}
�
&	variables
'regularization_losses
(trainable_variables
)	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Concatenate", "name": "concat_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concat_0", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 5123]}, {"class_name": "TensorShape", "items": [null, 2048]}]}
�

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 7171}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7171]}}
�
	0gamma
1beta
2	variables
3regularization_losses
4trainable_variables
5	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "LayerNormalization", "name": "layer_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_2", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2048]}}
�
6	variables
7regularization_losses
8trainable_variables
9	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Concatenate", "name": "concat_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concat_1", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 5123]}, {"class_name": "TensorShape", "items": [null, 2048]}, {"class_name": "TensorShape", "items": [null, 2048]}]}
�

:kernel
;bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9219}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9219]}}
�
	@gamma
Abeta
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "LayerNormalization", "name": "layer_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_3", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2048]}}
�
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Concatenate", "name": "concat_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concat_2", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 5123]}, {"class_name": "TensorShape", "items": [null, 2048]}, {"class_name": "TensorShape", "items": [null, 2048]}, {"class_name": "TensorShape", "items": [null, 2048]}]}
�

Jkernel
Kbias
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "output_softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output_softmax", "trainable": true, "dtype": "float32", "units": 1027, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 11267}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11267]}}
�
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Lambda", "name": "lambda_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAMAAABTAAAAcxQAAAB8AGQBGQB8AGQCGQBkAxQAGABTACkETukAAAAA6QEA\nAABnAAAAIF+gAkKpACkB2gF4cgMAAAByAwAAAPpOL3dvcmsvamlhbm5hbmwvY29uZGl0aW9uX3Jl\ndHJhaW5fbmV3ZGF0YTJfbmV3bGF5ZXJfbm9ybWxheWVyL21vZGVsX2Jhc2VsaW5lLnB52gg8bGFt\nYmRhPp8AAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "tensorflow.python.keras.layers.core", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
�
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Softmax", "name": "softmax_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "softmax_1", "trainable": true, "dtype": "float32", "axis": -1}}
�
Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_ratem�m� m�!m�*m�+m�0m�1m�:m�;m�@m�Am�Jm�Km�v�v� v�!v�*v�+v�0v�1v�:v�;v�@v�Av�Jv�Kv�"
	optimizer
�
0
1
 2
!3
*4
+5
06
17
:8
;9
@10
A11
J12
K13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
 2
!3
*4
+5
06
17
:8
;9
@10
A11
J12
K13"
trackable_list_wrapper
�
]metrics
	variables
regularization_losses

^layers
_layer_metrics
`non_trainable_variables
trainable_variables
alayer_regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
bmetrics
	variables
regularization_losses

clayers
dlayer_metrics
enon_trainable_variables
trainable_variables
flayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 
�(�2dense_0/kernel
:�2dense_0/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
gmetrics
	variables
regularization_losses

hlayers
ilayer_metrics
jnon_trainable_variables
trainable_variables
klayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(�2layer_normalization_1/gamma
):'�2layer_normalization_1/beta
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
�
lmetrics
"	variables
#regularization_losses

mlayers
nlayer_metrics
onon_trainable_variables
$trainable_variables
player_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
qmetrics
&	variables
'regularization_losses

rlayers
slayer_metrics
tnon_trainable_variables
(trainable_variables
ulayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 
�8�2dense_1/kernel
:�2dense_1/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
�
vmetrics
,	variables
-regularization_losses

wlayers
xlayer_metrics
ynon_trainable_variables
.trainable_variables
zlayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(�2layer_normalization_2/gamma
):'�2layer_normalization_2/beta
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
�
{metrics
2	variables
3regularization_losses

|layers
}layer_metrics
~non_trainable_variables
4trainable_variables
layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
6	variables
7regularization_losses
�layers
�layer_metrics
�non_trainable_variables
8trainable_variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 
�H�2dense_2/kernel
:�2dense_2/bias
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
�
�metrics
<	variables
=regularization_losses
�layers
�layer_metrics
�non_trainable_variables
>trainable_variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(�2layer_normalization_3/gamma
):'�2layer_normalization_3/beta
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
�
�metrics
B	variables
Cregularization_losses
�layers
�layer_metrics
�non_trainable_variables
Dtrainable_variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
F	variables
Gregularization_losses
�layers
�layer_metrics
�non_trainable_variables
Htrainable_variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'
�X�2output_softmax/kernel
": �2output_softmax/bias
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
�
�metrics
L	variables
Mregularization_losses
�layers
�layer_metrics
�non_trainable_variables
Ntrainable_variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
P	variables
Qregularization_losses
�layers
�layer_metrics
�non_trainable_variables
Rtrainable_variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
T	variables
Uregularization_losses
�layers
�layer_metrics
�non_trainable_variables
Vtrainable_variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2iter
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
@
�0
�1
�2
�3"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "multicategorical_accuracy", "dtype": "float32", "config": {"name": "multicategorical_accuracy", "dtype": "float32", "fn": "multicategorical_accuracy"}}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "top_3_multicategorical_accuracy", "dtype": "float32", "config": {"name": "top_3_multicategorical_accuracy", "dtype": "float32", "fn": "top_3_multicategorical_accuracy"}}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "top_10_multicategorical_accuracy", "dtype": "float32", "config": {"name": "top_10_multicategorical_accuracy", "dtype": "float32", "fn": "top_10_multicategorical_accuracy"}}
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
": 
�(�2dense_0/kernel/m
:�2dense_0/bias/m
*:(�2layer_normalization_1/gamma/m
):'�2layer_normalization_1/beta/m
": 
�8�2dense_1/kernel/m
:�2dense_1/bias/m
*:(�2layer_normalization_2/gamma/m
):'�2layer_normalization_2/beta/m
": 
�H�2dense_2/kernel/m
:�2dense_2/bias/m
*:(�2layer_normalization_3/gamma/m
):'�2layer_normalization_3/beta/m
):'
�X�2output_softmax/kernel/m
": �2output_softmax/bias/m
": 
�(�2dense_0/kernel/v
:�2dense_0/bias/v
*:(�2layer_normalization_1/gamma/v
):'�2layer_normalization_1/beta/v
": 
�8�2dense_1/kernel/v
:�2dense_1/bias/v
*:(�2layer_normalization_2/gamma/v
):'�2layer_normalization_2/beta/v
": 
�H�2dense_2/kernel/v
:�2dense_2/bias/v
*:(�2layer_normalization_3/gamma/v
):'�2layer_normalization_3/beta/v
):'
�X�2output_softmax/kernel/v
": �2output_softmax/bias/v
�2�
A__inference_model_1_layer_call_and_return_conditional_losses_1443
A__inference_model_1_layer_call_and_return_conditional_losses_1093
A__inference_model_1_layer_call_and_return_conditional_losses_1139
A__inference_model_1_layer_call_and_return_conditional_losses_1550�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_model_1_layer_call_fn_1618
&__inference_model_1_layer_call_fn_1584
&__inference_model_1_layer_call_fn_1300
&__inference_model_1_layer_call_fn_1220�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
__inference__wrapped_model_641�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *X�U
S�P
#� 
Input_fp���������� 
)�&
Input_reagents����������
�2�
I__inference_reagents_concat_layer_call_and_return_conditional_losses_1625�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_reagents_concat_layer_call_fn_1631�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_0_layer_call_and_return_conditional_losses_1642�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_0_layer_call_fn_1651�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1676
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1701�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
4__inference_layer_normalization_1_layer_call_fn_1710
4__inference_layer_normalization_1_layer_call_fn_1719�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_concat_0_layer_call_and_return_conditional_losses_1726�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_concat_0_layer_call_fn_1732�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_1_layer_call_and_return_conditional_losses_1743�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_1_layer_call_fn_1752�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1777
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1802�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
4__inference_layer_normalization_2_layer_call_fn_1811
4__inference_layer_normalization_2_layer_call_fn_1820�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_concat_1_layer_call_and_return_conditional_losses_1828�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_concat_1_layer_call_fn_1835�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_2_layer_call_and_return_conditional_losses_1846�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_2_layer_call_fn_1855�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1880
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1905�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
4__inference_layer_normalization_3_layer_call_fn_1914
4__inference_layer_normalization_3_layer_call_fn_1923�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_concat_2_layer_call_and_return_conditional_losses_1932�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_concat_2_layer_call_fn_1940�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_output_softmax_layer_call_and_return_conditional_losses_1950�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_output_softmax_layer_call_fn_1959�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_lambda_1_layer_call_and_return_conditional_losses_1967
B__inference_lambda_1_layer_call_and_return_conditional_losses_1975�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_lambda_1_layer_call_fn_1981
'__inference_lambda_1_layer_call_fn_1987�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_softmax_1_layer_call_and_return_conditional_losses_1992�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_softmax_1_layer_call_fn_1997�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_signature_wrapper_1336Input_fpInput_reagents"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
__inference__wrapped_model_641� !*+01:;@AJKb�_
X�U
S�P
#� 
Input_fp���������� 
)�&
Input_reagents����������
� "6�3
1
	softmax_1$�!
	softmax_1�����������
B__inference_concat_0_layer_call_and_return_conditional_losses_1726�\�Y
R�O
M�J
#� 
inputs/0����������(
#� 
inputs/1����������
� "&�#
�
0����������8
� �
'__inference_concat_0_layer_call_fn_1732y\�Y
R�O
M�J
#� 
inputs/0����������(
#� 
inputs/1����������
� "�����������8�
B__inference_concat_1_layer_call_and_return_conditional_losses_1828���~
w�t
r�o
#� 
inputs/0����������(
#� 
inputs/1����������
#� 
inputs/2����������
� "&�#
�
0����������H
� �
'__inference_concat_1_layer_call_fn_1835���~
w�t
r�o
#� 
inputs/0����������(
#� 
inputs/1����������
#� 
inputs/2����������
� "�����������H�
B__inference_concat_2_layer_call_and_return_conditional_losses_1932����
���
���
#� 
inputs/0����������(
#� 
inputs/1����������
#� 
inputs/2����������
#� 
inputs/3����������
� "&�#
�
0����������X
� �
'__inference_concat_2_layer_call_fn_1940����
���
���
#� 
inputs/0����������(
#� 
inputs/1����������
#� 
inputs/2����������
#� 
inputs/3����������
� "�����������X�
A__inference_dense_0_layer_call_and_return_conditional_losses_1642^0�-
&�#
!�
inputs����������(
� "&�#
�
0����������
� {
&__inference_dense_0_layer_call_fn_1651Q0�-
&�#
!�
inputs����������(
� "������������
A__inference_dense_1_layer_call_and_return_conditional_losses_1743^*+0�-
&�#
!�
inputs����������8
� "&�#
�
0����������
� {
&__inference_dense_1_layer_call_fn_1752Q*+0�-
&�#
!�
inputs����������8
� "������������
A__inference_dense_2_layer_call_and_return_conditional_losses_1846^:;0�-
&�#
!�
inputs����������H
� "&�#
�
0����������
� {
&__inference_dense_2_layer_call_fn_1855Q:;0�-
&�#
!�
inputs����������H
� "������������
B__inference_lambda_1_layer_call_and_return_conditional_losses_1967�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p
� "&�#
�
0����������
� �
B__inference_lambda_1_layer_call_and_return_conditional_losses_1975�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p 
� "&�#
�
0����������
� �
'__inference_lambda_1_layer_call_fn_1981�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p
� "������������
'__inference_lambda_1_layer_call_fn_1987�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p 
� "������������
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1676b !4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1701b !4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
4__inference_layer_normalization_1_layer_call_fn_1710U !4�1
*�'
!�
inputs����������
p
� "������������
4__inference_layer_normalization_1_layer_call_fn_1719U !4�1
*�'
!�
inputs����������
p 
� "������������
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1777b014�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1802b014�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
4__inference_layer_normalization_2_layer_call_fn_1811U014�1
*�'
!�
inputs����������
p
� "������������
4__inference_layer_normalization_2_layer_call_fn_1820U014�1
*�'
!�
inputs����������
p 
� "������������
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1880b@A4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1905b@A4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
4__inference_layer_normalization_3_layer_call_fn_1914U@A4�1
*�'
!�
inputs����������
p
� "������������
4__inference_layer_normalization_3_layer_call_fn_1923U@A4�1
*�'
!�
inputs����������
p 
� "������������
A__inference_model_1_layer_call_and_return_conditional_losses_1093� !*+01:;@AJKj�g
`�]
S�P
#� 
Input_fp���������� 
)�&
Input_reagents����������
p

 
� "&�#
�
0����������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_1139� !*+01:;@AJKj�g
`�]
S�P
#� 
Input_fp���������� 
)�&
Input_reagents����������
p 

 
� "&�#
�
0����������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_1443� !*+01:;@AJKd�a
Z�W
M�J
#� 
inputs/0���������� 
#� 
inputs/1����������
p

 
� "&�#
�
0����������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_1550� !*+01:;@AJKd�a
Z�W
M�J
#� 
inputs/0���������� 
#� 
inputs/1����������
p 

 
� "&�#
�
0����������
� �
&__inference_model_1_layer_call_fn_1220� !*+01:;@AJKj�g
`�]
S�P
#� 
Input_fp���������� 
)�&
Input_reagents����������
p

 
� "������������
&__inference_model_1_layer_call_fn_1300� !*+01:;@AJKj�g
`�]
S�P
#� 
Input_fp���������� 
)�&
Input_reagents����������
p 

 
� "������������
&__inference_model_1_layer_call_fn_1584� !*+01:;@AJKd�a
Z�W
M�J
#� 
inputs/0���������� 
#� 
inputs/1����������
p

 
� "������������
&__inference_model_1_layer_call_fn_1618� !*+01:;@AJKd�a
Z�W
M�J
#� 
inputs/0���������� 
#� 
inputs/1����������
p 

 
� "������������
H__inference_output_softmax_layer_call_and_return_conditional_losses_1950^JK0�-
&�#
!�
inputs����������X
� "&�#
�
0����������
� �
-__inference_output_softmax_layer_call_fn_1959QJK0�-
&�#
!�
inputs����������X
� "������������
I__inference_reagents_concat_layer_call_and_return_conditional_losses_1625�\�Y
R�O
M�J
#� 
inputs/0���������� 
#� 
inputs/1����������
� "&�#
�
0����������(
� �
.__inference_reagents_concat_layer_call_fn_1631y\�Y
R�O
M�J
#� 
inputs/0���������� 
#� 
inputs/1����������
� "�����������(�
"__inference_signature_wrapper_1336� !*+01:;@AJK{�x
� 
q�n
/
Input_fp#� 
Input_fp���������� 
;
Input_reagents)�&
Input_reagents����������"6�3
1
	softmax_1$�!
	softmax_1�����������
C__inference_softmax_1_layer_call_and_return_conditional_losses_1992^4�1
*�'
!�
inputs����������

 
� "&�#
�
0����������
� }
(__inference_softmax_1_layer_call_fn_1997Q4�1
*�'
!�
inputs����������

 
� "�����������