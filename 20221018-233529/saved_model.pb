??%
?!?!
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
q
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
?
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
?
SparseSegmentMean	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??"
?
 Adam/sequential_1/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/dense_7/bias/v
?
4Adam/sequential_1/dense_7/bias/v/Read/ReadVariableOpReadVariableOp Adam/sequential_1/dense_7/bias/v*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/sequential_1/dense_7/kernel/v
?
6Adam/sequential_1/dense_7/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/dense_7/kernel/v*
_output_shapes

:*
dtype0
?
 Adam/sequential_1/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/dense_6/bias/v
?
4Adam/sequential_1/dense_6/bias/v/Read/ReadVariableOpReadVariableOp Adam/sequential_1/dense_6/bias/v*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/sequential_1/dense_6/kernel/v
?
6Adam/sequential_1/dense_6/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/dense_6/kernel/v*
_output_shapes

:*
dtype0
?
 Adam/sequential_1/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/dense_5/bias/v
?
4Adam/sequential_1/dense_5/bias/v/Read/ReadVariableOpReadVariableOp Adam/sequential_1/dense_5/bias/v*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/sequential_1/dense_5/kernel/v
?
6Adam/sequential_1/dense_5/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/dense_5/kernel/v*
_output_shapes

:*
dtype0
?
 Adam/sequential_1/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/dense_4/bias/v
?
4Adam/sequential_1/dense_4/bias/v/Read/ReadVariableOpReadVariableOp Adam/sequential_1/dense_4/bias/v*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/sequential_1/dense_4/kernel/v
?
6Adam/sequential_1/dense_4/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/dense_4/kernel/v*
_output_shapes

:*
dtype0
?
PAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*a
shared_nameRPAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/v
?
dAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/v/Read/ReadVariableOpReadVariableOpPAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/v*
_output_shapes

:*
dtype0
?
GAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*X
shared_nameIGAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/v
?
[Adam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/v/Read/ReadVariableOpReadVariableOpGAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/v*
_output_shapes

:8*
dtype0
?
 Adam/sequential_1/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/dense_7/bias/m
?
4Adam/sequential_1/dense_7/bias/m/Read/ReadVariableOpReadVariableOp Adam/sequential_1/dense_7/bias/m*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/sequential_1/dense_7/kernel/m
?
6Adam/sequential_1/dense_7/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/dense_7/kernel/m*
_output_shapes

:*
dtype0
?
 Adam/sequential_1/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/dense_6/bias/m
?
4Adam/sequential_1/dense_6/bias/m/Read/ReadVariableOpReadVariableOp Adam/sequential_1/dense_6/bias/m*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/sequential_1/dense_6/kernel/m
?
6Adam/sequential_1/dense_6/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/dense_6/kernel/m*
_output_shapes

:*
dtype0
?
 Adam/sequential_1/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/dense_5/bias/m
?
4Adam/sequential_1/dense_5/bias/m/Read/ReadVariableOpReadVariableOp Adam/sequential_1/dense_5/bias/m*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/sequential_1/dense_5/kernel/m
?
6Adam/sequential_1/dense_5/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/dense_5/kernel/m*
_output_shapes

:*
dtype0
?
 Adam/sequential_1/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/dense_4/bias/m
?
4Adam/sequential_1/dense_4/bias/m/Read/ReadVariableOpReadVariableOp Adam/sequential_1/dense_4/bias/m*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/sequential_1/dense_4/kernel/m
?
6Adam/sequential_1/dense_4/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/dense_4/kernel/m*
_output_shapes

:*
dtype0
?
PAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*a
shared_nameRPAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/m
?
dAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOpPAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/m*
_output_shapes

:*
dtype0
?
GAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*X
shared_nameIGAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/m
?
[Adam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOpGAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/m*
_output_shapes

:8*
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
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name91944*
value_dtype0	
o
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name91854*
value_dtype0	
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
?
sequential_1/dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namesequential_1/dense_7/bias
?
-sequential_1/dense_7/bias/Read/ReadVariableOpReadVariableOpsequential_1/dense_7/bias*
_output_shapes
:*
dtype0
?
sequential_1/dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namesequential_1/dense_7/kernel
?
/sequential_1/dense_7/kernel/Read/ReadVariableOpReadVariableOpsequential_1/dense_7/kernel*
_output_shapes

:*
dtype0
?
sequential_1/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namesequential_1/dense_6/bias
?
-sequential_1/dense_6/bias/Read/ReadVariableOpReadVariableOpsequential_1/dense_6/bias*
_output_shapes
:*
dtype0
?
sequential_1/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namesequential_1/dense_6/kernel
?
/sequential_1/dense_6/kernel/Read/ReadVariableOpReadVariableOpsequential_1/dense_6/kernel*
_output_shapes

:*
dtype0
?
sequential_1/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namesequential_1/dense_5/bias
?
-sequential_1/dense_5/bias/Read/ReadVariableOpReadVariableOpsequential_1/dense_5/bias*
_output_shapes
:*
dtype0
?
sequential_1/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namesequential_1/dense_5/kernel
?
/sequential_1/dense_5/kernel/Read/ReadVariableOpReadVariableOpsequential_1/dense_5/kernel*
_output_shapes

:*
dtype0
?
sequential_1/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namesequential_1/dense_4/bias
?
-sequential_1/dense_4/bias/Read/ReadVariableOpReadVariableOpsequential_1/dense_4/bias*
_output_shapes
:*
dtype0
?
sequential_1/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namesequential_1/dense_4/kernel
?
/sequential_1/dense_4/kernel/Read/ReadVariableOpReadVariableOpsequential_1/dense_4/kernel*
_output_shapes

:*
dtype0
?
Isequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*Z
shared_nameKIsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights
?
]sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/Read/ReadVariableOpReadVariableOpIsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights*
_output_shapes

:*
dtype0
?
@sequential_1/dense_features_2/ATP_2D_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*Q
shared_nameB@sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights
?
Tsequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp@sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights*
_output_shapes

:8*
dtype0
P
ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
Const_2Const*
_output_shapes
:8*
dtype0*?
value?B?8B
D51-0-BAW1B
F49-1-AFR1B
F49-1-0003B
D51-0-THY1B
D51-0-ETH2B
D51-0-VIR2B
F49-1-BAG1B
J29-0-1164B
D51-0-IBE2B
D51-0-QTR4BD51-0-FBU-BB
D51-0-AFR1B
F49-1-0008B
F49-1-JBU1B
F49-1-AZO1BJ29-0-BASELINEB
D51-0-SJX1B
D51-0-FIN3B
N21-0-1016B
F49-3-0002B
D51-0-CCA2B
D51-0-QTR5B
D51-0-CSN2B
F49-1-REU1B
F49-1-ACA1B
F49-1-0004B
D51-0-CSC2B
J29-0-1108B
F49-1-IAW1B
F49-1-0005B
D51-0-FWI2B
F49-1-ATC2B
F49-1-BTI4B
F49-1-ATC1B B
D51-1-0173B
F49-1-MSR1B
D51-0-SIA6B
F49-1-BTI3B
F49-1-BAG3B
F49-1-0009B
D51-0-AFL2B
D51-0-SJX2B
F49-1-AVN1B
F49-1-CSA1B
F49-1-ACJ1BD51-0-C8J31B
F49-1-0002B
D51-0-SAS1B
F49-1-SZN1BF49-01-AFR1BF49-1-AFR01B
F49-1-RWZ1B
F49-1-ACA2B
D51-0-0713B
F42-1-ATC2
?
Const_3Const*
_output_shapes
:8*
dtype0	*?
value?B?	8"?                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       
?
Const_4Const*
_output_shapes
:*
dtype0*c
valueZBXBINBMPBNMBSABBSBSMBEXBVFBPLBTABELBDABIMBCCBLUBKLBMLBSCBAMBPB
?
Const_5Const*
_output_shapes
:*
dtype0	*?
value?B?	"?                                                                	       
                                                                      
?
StatefulPartitionedCallStatefulPartitionedCallhash_table_1Const_2Const_3*
Tin
2	*
Tout
2*
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
GPU 2J 8? *%
f R
__inference_<lambda>_8406944
?
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
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
GPU 2J 8? *%
f R
__inference_<lambda>_8406952
B
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1
?b
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?a
value?aB?a B?a
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
_build_input_shape

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_feature_columns

_resources
&"ATP_2D_embedding/embedding_weights
/+DRAWING_CODE_2D_embedding/embedding_weights*
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator* 
?
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias*
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;_random_generator* 
?
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias*
?
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J_random_generator* 
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias*
?
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator* 
J
0
1
$2
%3
34
45
B6
C7
Q8
R9*
J
0
1
$2
%3
34
45
B6
C7
Q8
R9*
* 
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
_trace_0
`trace_1
atrace_2
btrace_3* 
6
ctrace_0
dtrace_1
etrace_2
ftrace_3* 
* 
?
giter

hbeta_1

ibeta_2
	jdecay
klearning_ratem?m?$m?%m?3m?4m?Bm?Cm?Qm?Rm?v?v?$v?%v?3v?4v?Bv?Cv?Qv?Rv?*
* 

lserving_default* 

0
1*

0
1*
* 
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

rtrace_0
strace_1* 

ttrace_0
utrace_1* 
* 
#

vATP_2D
wDRAWING_CODE_2D* 
??
VARIABLE_VALUE@sequential_1/dense_features_2/ATP_2D_embedding/embedding_weightsSlayer_with_weights-0/ATP_2D_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEIsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights\layer_with_weights-0/DRAWING_CODE_2D_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
ke
VARIABLE_VALUEsequential_1/dense_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEsequential_1/dense_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

30
41*

30
41*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ke
VARIABLE_VALUEsequential_1/dense_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEsequential_1/dense_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

B0
C1*

B0
C1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ke
VARIABLE_VALUEsequential_1/dense_6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEsequential_1/dense_6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

Q0
R1*

Q0
R1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ke
VARIABLE_VALUEsequential_1/dense_7/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEsequential_1/dense_7/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
* 
C
0
1
2
3
4
5
6
7
	8*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?ATP_2D_lookup* 

?DRAWING_CODE_2D_lookup* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

?trace_0* 

?trace_0* 

?trace_0* 
* 

?trace_0* 

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
* 
??
VARIABLE_VALUEGAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/molayer_with_weights-0/ATP_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEPAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/mxlayer_with_weights-0/DRAWING_CODE_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/dense_4/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/dense_4/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/dense_5/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/dense_5/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/dense_6/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/dense_6/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/dense_7/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/dense_7/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEGAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/volayer_with_weights-0/ATP_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEPAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/vxlayer_with_weights-0/DRAWING_CODE_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/dense_4/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/dense_4/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/dense_5/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/dense_5/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/dense_6/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/dense_6/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/dense_7/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/dense_7/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
q
serving_default_ATP_2DPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
z
serving_default_DRAWING_CODE_2DPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
t
serving_default_LEAD_TIMEPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
w
serving_default_MEAN_SIZE_2DPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
w
serving_default_MEAN_SIZE_3DPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
u
serving_default_QTN_REV_2DPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
u
serving_default_QTN_REV_3DPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
y
serving_default_QTY_DIMENSIONSPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
x
serving_default_QTY_PART_LISTPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
u
serving_default_QTY_SHEETSPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????

$serving_default_QTY_TEXT_INFORMATIONPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
t
serving_default_QTY_VIEWSPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_2StatefulPartitionedCallserving_default_ATP_2Dserving_default_DRAWING_CODE_2Dserving_default_LEAD_TIMEserving_default_MEAN_SIZE_2Dserving_default_MEAN_SIZE_3Dserving_default_QTN_REV_2Dserving_default_QTN_REV_3Dserving_default_QTY_DIMENSIONSserving_default_QTY_PART_LISTserving_default_QTY_SHEETS$serving_default_QTY_TEXT_INFORMATIONserving_default_QTY_VIEWShash_table_1Const@sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights
hash_tableConst_1Isequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weightssequential_1/dense_4/kernelsequential_1/dense_4/biassequential_1/dense_5/kernelsequential_1/dense_5/biassequential_1/dense_6/kernelsequential_1/dense_6/biassequential_1/dense_7/kernelsequential_1/dense_7/bias*%
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_8405348
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameTsequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/Read/ReadVariableOp]sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/Read/ReadVariableOp/sequential_1/dense_4/kernel/Read/ReadVariableOp-sequential_1/dense_4/bias/Read/ReadVariableOp/sequential_1/dense_5/kernel/Read/ReadVariableOp-sequential_1/dense_5/bias/Read/ReadVariableOp/sequential_1/dense_6/kernel/Read/ReadVariableOp-sequential_1/dense_6/bias/Read/ReadVariableOp/sequential_1/dense_7/kernel/Read/ReadVariableOp-sequential_1/dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp[Adam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/m/Read/ReadVariableOpdAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/m/Read/ReadVariableOp6Adam/sequential_1/dense_4/kernel/m/Read/ReadVariableOp4Adam/sequential_1/dense_4/bias/m/Read/ReadVariableOp6Adam/sequential_1/dense_5/kernel/m/Read/ReadVariableOp4Adam/sequential_1/dense_5/bias/m/Read/ReadVariableOp6Adam/sequential_1/dense_6/kernel/m/Read/ReadVariableOp4Adam/sequential_1/dense_6/bias/m/Read/ReadVariableOp6Adam/sequential_1/dense_7/kernel/m/Read/ReadVariableOp4Adam/sequential_1/dense_7/bias/m/Read/ReadVariableOp[Adam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/v/Read/ReadVariableOpdAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/v/Read/ReadVariableOp6Adam/sequential_1/dense_4/kernel/v/Read/ReadVariableOp4Adam/sequential_1/dense_4/bias/v/Read/ReadVariableOp6Adam/sequential_1/dense_5/kernel/v/Read/ReadVariableOp4Adam/sequential_1/dense_5/bias/v/Read/ReadVariableOp6Adam/sequential_1/dense_6/kernel/v/Read/ReadVariableOp4Adam/sequential_1/dense_6/bias/v/Read/ReadVariableOp6Adam/sequential_1/dense_7/kernel/v/Read/ReadVariableOp4Adam/sequential_1/dense_7/bias/v/Read/ReadVariableOpConst_6*4
Tin-
+2)	*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_8407113
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filename@sequential_1/dense_features_2/ATP_2D_embedding/embedding_weightsIsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weightssequential_1/dense_4/kernelsequential_1/dense_4/biassequential_1/dense_5/kernelsequential_1/dense_5/biassequential_1/dense_6/kernelsequential_1/dense_6/biassequential_1/dense_7/kernelsequential_1/dense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountGAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/mPAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/m"Adam/sequential_1/dense_4/kernel/m Adam/sequential_1/dense_4/bias/m"Adam/sequential_1/dense_5/kernel/m Adam/sequential_1/dense_5/bias/m"Adam/sequential_1/dense_6/kernel/m Adam/sequential_1/dense_6/bias/m"Adam/sequential_1/dense_7/kernel/m Adam/sequential_1/dense_7/bias/mGAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/vPAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/v"Adam/sequential_1/dense_4/kernel/v Adam/sequential_1/dense_4/bias/v"Adam/sequential_1/dense_5/kernel/v Adam/sequential_1/dense_5/bias/v"Adam/sequential_1/dense_6/kernel/v Adam/sequential_1/dense_6/bias/v"Adam/sequential_1/dense_7/kernel/v Adam/sequential_1/dense_7/bias/v*3
Tin,
*2(*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_8407240?? 
??
?
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8404963
features

features_1

features_2

features_3

features_4

features_5

features_6

features_7

features_8

features_9
features_10
features_11?
;atp_2d_embedding_none_lookup_lookuptablefindv2_table_handle@
<atp_2d_embedding_none_lookup_lookuptablefindv2_default_value	:
(atp_2d_embedding_readvariableop_resource:8H
Ddrawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handleI
Edrawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value	C
1drawing_code_2d_embedding_readvariableop_resource:
identity??.ATP_2D_embedding/None_Lookup/LookupTableFindV2?ATP_2D_embedding/ReadVariableOp?7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2?(DRAWING_CODE_2D_embedding/ReadVariableOpj
ATP_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
ATP_2D_embedding/ExpandDims
ExpandDimsfeatures(ATP_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/ATP_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)ATP_2D_embedding/to_sparse_input/NotEqualNotEqual$ATP_2D_embedding/ExpandDims:output:08ATP_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(ATP_2D_embedding/to_sparse_input/indicesWhere-ATP_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'ATP_2D_embedding/to_sparse_input/valuesGatherNd$ATP_2D_embedding/ExpandDims:output:00ATP_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,ATP_2D_embedding/to_sparse_input/dense_shapeShape$ATP_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.ATP_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2;atp_2d_embedding_none_lookup_lookuptablefindv2_table_handle0ATP_2D_embedding/to_sparse_input/values:output:0<atp_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
ATP_2D_embedding/ReadVariableOpReadVariableOp(atp_2d_embedding_readvariableop_resource*
_output_shapes

:8*
dtype0
5ATP_2D_embedding/ATP_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4ATP_2D_embedding/ATP_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
/ATP_2D_embedding/ATP_2D_embedding_weights/SliceSlice5ATP_2D_embedding/to_sparse_input/dense_shape:output:0>ATP_2D_embedding/ATP_2D_embedding_weights/Slice/begin:output:0=ATP_2D_embedding/ATP_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/ATP_2D_embedding/ATP_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.ATP_2D_embedding/ATP_2D_embedding_weights/ProdProd8ATP_2D_embedding/ATP_2D_embedding_weights/Slice:output:08ATP_2D_embedding/ATP_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2GatherV25ATP_2D_embedding/to_sparse_input/dense_shape:output:0CATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indices:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
0ATP_2D_embedding/ATP_2D_embedding_weights/Cast/xPack7ATP_2D_embedding/ATP_2D_embedding_weights/Prod:output:0;ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshapeSparseReshape0ATP_2D_embedding/to_sparse_input/indices:index:05ATP_2D_embedding/to_sparse_input/dense_shape:output:09ATP_2D_embedding/ATP_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
@ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/IdentityIdentity7ATP_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????z
8ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
6ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqualGreaterEqualIATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0AATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
/ATP_2D_embedding/ATP_2D_embedding_weights/WhereWhere:ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
7ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1ATP_2D_embedding/ATP_2D_embedding_weights/ReshapeReshape7ATP_2D_embedding/ATP_2D_embedding_weights/Where:index:0@ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????{
9ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1GatherV2HATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_indices:0:ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0BATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????{
9ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2GatherV2IATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0:ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0BATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
2ATP_2D_embedding/ATP_2D_embedding_weights/IdentityIdentityFATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
CATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
QATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1:output:0=ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2:output:0;ATP_2D_embedding/ATP_2D_embedding_weights/Identity:output:0LATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
UATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
OATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
HATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/UniqueUniqueaATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*2
_class(
&$loc:@ATP_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
RATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2'ATP_2D_embedding/ReadVariableOp:value:0LATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@ATP_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
[ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
AATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMeandATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0XATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
9ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
3ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1ReshapegATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
/ATP_2D_embedding/ATP_2D_embedding_weights/ShapeShapeJATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
=ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
?ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7ATP_2D_embedding/ATP_2D_embedding_weights/strided_sliceStridedSlice8ATP_2D_embedding/ATP_2D_embedding_weights/Shape:output:0FATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack:output:0HATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1:output:0HATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1ATP_2D_embedding/ATP_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
/ATP_2D_embedding/ATP_2D_embedding_weights/stackPack:ATP_2D_embedding/ATP_2D_embedding_weights/stack/0:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
.ATP_2D_embedding/ATP_2D_embedding_weights/TileTile<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1:output:08ATP_2D_embedding/ATP_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
4ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like	ZerosLikeJATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
)ATP_2D_embedding/ATP_2D_embedding_weightsSelect7ATP_2D_embedding/ATP_2D_embedding_weights/Tile:output:08ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like:y:0JATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
0ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1Cast5ATP_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
6ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
1ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1Slice4ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1:y:0@ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/begin:output:0?ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
1ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1Shape2ATP_2D_embedding/ATP_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
6ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2Slice:ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/begin:output:0?ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5ATP_2D_embedding/ATP_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0ATP_2D_embedding/ATP_2D_embedding_weights/concatConcatV2:ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1:output:0:ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2:output:0>ATP_2D_embedding/ATP_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
3ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2Reshape2ATP_2D_embedding/ATP_2D_embedding_weights:output:09ATP_2D_embedding/ATP_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
ATP_2D_embedding/ShapeShape<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:n
$ATP_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&ATP_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&ATP_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
ATP_2D_embedding/strided_sliceStridedSliceATP_2D_embedding/Shape:output:0-ATP_2D_embedding/strided_slice/stack:output:0/ATP_2D_embedding/strided_slice/stack_1:output:0/ATP_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 ATP_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
ATP_2D_embedding/Reshape/shapePack'ATP_2D_embedding/strided_slice:output:0)ATP_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
ATP_2D_embedding/ReshapeReshape<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0'ATP_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(DRAWING_CODE_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$DRAWING_CODE_2D_embedding/ExpandDims
ExpandDims
features_11DRAWING_CODE_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????y
8DRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
2DRAWING_CODE_2D_embedding/to_sparse_input/NotEqualNotEqual-DRAWING_CODE_2D_embedding/ExpandDims:output:0ADRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
1DRAWING_CODE_2D_embedding/to_sparse_input/indicesWhere6DRAWING_CODE_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
0DRAWING_CODE_2D_embedding/to_sparse_input/valuesGatherNd-DRAWING_CODE_2D_embedding/ExpandDims:output:09DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
5DRAWING_CODE_2D_embedding/to_sparse_input/dense_shapeShape-DRAWING_CODE_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ddrawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handle9DRAWING_CODE_2D_embedding/to_sparse_input/values:output:0Edrawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
(DRAWING_CODE_2D_embedding/ReadVariableOpReadVariableOp1drawing_code_2d_embedding_readvariableop_resource*
_output_shapes

:*
dtype0?
GDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SliceSlice>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0PDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/begin:output:0ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ProdProdJDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2GatherV2>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0UDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indices:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/xPackIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Prod:output:0MDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshapeSparseReshape9DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/IdentityIdentity@DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqualGreaterEqual[DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0SDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/WhereWhereLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ReshapeReshapeIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Where:index:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1GatherV2ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_indices:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2GatherV2[DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
DDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/IdentityIdentityXDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
UDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
cDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1:output:0ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2:output:0MDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Identity:output:0^DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
gDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
aDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicetDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0pDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/UniqueUniquesDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*;
_class1
/-loc:@DRAWING_CODE_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
dDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV20DRAWING_CODE_2D_embedding/ReadVariableOp:value:0^DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*;
_class1
/-loc:@DRAWING_CODE_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
mDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitymDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
SDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMeanvDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0`DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0jDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
EDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1ReshapeyDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ShapeShape\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_sliceStridedSliceJDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape:output:0XDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack:output:0ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1:output:0ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stackPackLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
@DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/TileTileNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like	ZerosLike\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
;DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weightsSelectIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Tile:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like:y:0\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1Cast>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1SliceFDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1:y:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/begin:output:0QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1ShapeDDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2SliceLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/begin:output:0QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
GDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concatConcatV2LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1:output:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2:output:0PDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
EDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2ReshapeDDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
DRAWING_CODE_2D_embedding/ShapeShapeNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:w
-DRAWING_CODE_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/DRAWING_CODE_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/DRAWING_CODE_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'DRAWING_CODE_2D_embedding/strided_sliceStridedSlice(DRAWING_CODE_2D_embedding/Shape:output:06DRAWING_CODE_2D_embedding/strided_slice/stack:output:08DRAWING_CODE_2D_embedding/strided_slice/stack_1:output:08DRAWING_CODE_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)DRAWING_CODE_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'DRAWING_CODE_2D_embedding/Reshape/shapePack0DRAWING_CODE_2D_embedding/strided_slice:output:02DRAWING_CODE_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!DRAWING_CODE_2D_embedding/ReshapeReshapeNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:00DRAWING_CODE_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
LEAD_TIME/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
LEAD_TIME/ExpandDims
ExpandDims
features_2!LEAD_TIME/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
LEAD_TIME/ShapeShapeLEAD_TIME/ExpandDims:output:0*
T0*
_output_shapes
:g
LEAD_TIME/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
LEAD_TIME/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
LEAD_TIME/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
LEAD_TIME/strided_sliceStridedSliceLEAD_TIME/Shape:output:0&LEAD_TIME/strided_slice/stack:output:0(LEAD_TIME/strided_slice/stack_1:output:0(LEAD_TIME/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
LEAD_TIME/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
LEAD_TIME/Reshape/shapePack LEAD_TIME/strided_slice:output:0"LEAD_TIME/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
LEAD_TIME/ReshapeReshapeLEAD_TIME/ExpandDims:output:0 LEAD_TIME/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
MEAN_SIZE_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MEAN_SIZE_2D/ExpandDims
ExpandDims
features_3$MEAN_SIZE_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????b
MEAN_SIZE_2D/ShapeShape MEAN_SIZE_2D/ExpandDims:output:0*
T0*
_output_shapes
:j
 MEAN_SIZE_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"MEAN_SIZE_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"MEAN_SIZE_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MEAN_SIZE_2D/strided_sliceStridedSliceMEAN_SIZE_2D/Shape:output:0)MEAN_SIZE_2D/strided_slice/stack:output:0+MEAN_SIZE_2D/strided_slice/stack_1:output:0+MEAN_SIZE_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
MEAN_SIZE_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MEAN_SIZE_2D/Reshape/shapePack#MEAN_SIZE_2D/strided_slice:output:0%MEAN_SIZE_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MEAN_SIZE_2D/ReshapeReshape MEAN_SIZE_2D/ExpandDims:output:0#MEAN_SIZE_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
MEAN_SIZE_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MEAN_SIZE_3D/ExpandDims
ExpandDims
features_4$MEAN_SIZE_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????b
MEAN_SIZE_3D/ShapeShape MEAN_SIZE_3D/ExpandDims:output:0*
T0*
_output_shapes
:j
 MEAN_SIZE_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"MEAN_SIZE_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"MEAN_SIZE_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MEAN_SIZE_3D/strided_sliceStridedSliceMEAN_SIZE_3D/Shape:output:0)MEAN_SIZE_3D/strided_slice/stack:output:0+MEAN_SIZE_3D/strided_slice/stack_1:output:0+MEAN_SIZE_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
MEAN_SIZE_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MEAN_SIZE_3D/Reshape/shapePack#MEAN_SIZE_3D/strided_slice:output:0%MEAN_SIZE_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MEAN_SIZE_3D/ReshapeReshape MEAN_SIZE_3D/ExpandDims:output:0#MEAN_SIZE_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTN_REV_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTN_REV_2D/ExpandDims
ExpandDims
features_5"QTN_REV_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTN_REV_2D/ShapeShapeQTN_REV_2D/ExpandDims:output:0*
T0*
_output_shapes
:h
QTN_REV_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTN_REV_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTN_REV_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTN_REV_2D/strided_sliceStridedSliceQTN_REV_2D/Shape:output:0'QTN_REV_2D/strided_slice/stack:output:0)QTN_REV_2D/strided_slice/stack_1:output:0)QTN_REV_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTN_REV_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTN_REV_2D/Reshape/shapePack!QTN_REV_2D/strided_slice:output:0#QTN_REV_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTN_REV_2D/ReshapeReshapeQTN_REV_2D/ExpandDims:output:0!QTN_REV_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTN_REV_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTN_REV_3D/ExpandDims
ExpandDims
features_6"QTN_REV_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTN_REV_3D/ShapeShapeQTN_REV_3D/ExpandDims:output:0*
T0*
_output_shapes
:h
QTN_REV_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTN_REV_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTN_REV_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTN_REV_3D/strided_sliceStridedSliceQTN_REV_3D/Shape:output:0'QTN_REV_3D/strided_slice/stack:output:0)QTN_REV_3D/strided_slice/stack_1:output:0)QTN_REV_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTN_REV_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTN_REV_3D/Reshape/shapePack!QTN_REV_3D/strided_slice:output:0#QTN_REV_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTN_REV_3D/ReshapeReshapeQTN_REV_3D/ExpandDims:output:0!QTN_REV_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????h
QTY_DIMENSIONS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_DIMENSIONS/ExpandDims
ExpandDims
features_7&QTY_DIMENSIONS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????f
QTY_DIMENSIONS/ShapeShape"QTY_DIMENSIONS/ExpandDims:output:0*
T0*
_output_shapes
:l
"QTY_DIMENSIONS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$QTY_DIMENSIONS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$QTY_DIMENSIONS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_DIMENSIONS/strided_sliceStridedSliceQTY_DIMENSIONS/Shape:output:0+QTY_DIMENSIONS/strided_slice/stack:output:0-QTY_DIMENSIONS/strided_slice/stack_1:output:0-QTY_DIMENSIONS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
QTY_DIMENSIONS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_DIMENSIONS/Reshape/shapePack%QTY_DIMENSIONS/strided_slice:output:0'QTY_DIMENSIONS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_DIMENSIONS/ReshapeReshape"QTY_DIMENSIONS/ExpandDims:output:0%QTY_DIMENSIONS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
QTY_PART_LIST/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_PART_LIST/ExpandDims
ExpandDims
features_8%QTY_PART_LIST/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????d
QTY_PART_LIST/ShapeShape!QTY_PART_LIST/ExpandDims:output:0*
T0*
_output_shapes
:k
!QTY_PART_LIST/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#QTY_PART_LIST/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#QTY_PART_LIST/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_PART_LIST/strided_sliceStridedSliceQTY_PART_LIST/Shape:output:0*QTY_PART_LIST/strided_slice/stack:output:0,QTY_PART_LIST/strided_slice/stack_1:output:0,QTY_PART_LIST/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
QTY_PART_LIST/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_PART_LIST/Reshape/shapePack$QTY_PART_LIST/strided_slice:output:0&QTY_PART_LIST/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_PART_LIST/ReshapeReshape!QTY_PART_LIST/ExpandDims:output:0$QTY_PART_LIST/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTY_SHEETS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_SHEETS/ExpandDims
ExpandDims
features_9"QTY_SHEETS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTY_SHEETS/ShapeShapeQTY_SHEETS/ExpandDims:output:0*
T0*
_output_shapes
:h
QTY_SHEETS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTY_SHEETS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTY_SHEETS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_SHEETS/strided_sliceStridedSliceQTY_SHEETS/Shape:output:0'QTY_SHEETS/strided_slice/stack:output:0)QTY_SHEETS/strided_slice/stack_1:output:0)QTY_SHEETS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTY_SHEETS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_SHEETS/Reshape/shapePack!QTY_SHEETS/strided_slice:output:0#QTY_SHEETS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_SHEETS/ReshapeReshapeQTY_SHEETS/ExpandDims:output:0!QTY_SHEETS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#QTY_TEXT_INFORMATION/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_TEXT_INFORMATION/ExpandDims
ExpandDimsfeatures_10,QTY_TEXT_INFORMATION/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
QTY_TEXT_INFORMATION/ShapeShape(QTY_TEXT_INFORMATION/ExpandDims:output:0*
T0*
_output_shapes
:r
(QTY_TEXT_INFORMATION/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*QTY_TEXT_INFORMATION/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*QTY_TEXT_INFORMATION/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"QTY_TEXT_INFORMATION/strided_sliceStridedSlice#QTY_TEXT_INFORMATION/Shape:output:01QTY_TEXT_INFORMATION/strided_slice/stack:output:03QTY_TEXT_INFORMATION/strided_slice/stack_1:output:03QTY_TEXT_INFORMATION/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$QTY_TEXT_INFORMATION/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
"QTY_TEXT_INFORMATION/Reshape/shapePack+QTY_TEXT_INFORMATION/strided_slice:output:0-QTY_TEXT_INFORMATION/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_TEXT_INFORMATION/ReshapeReshape(QTY_TEXT_INFORMATION/ExpandDims:output:0+QTY_TEXT_INFORMATION/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
QTY_VIEWS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_VIEWS/ExpandDims
ExpandDimsfeatures_11!QTY_VIEWS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
QTY_VIEWS/ShapeShapeQTY_VIEWS/ExpandDims:output:0*
T0*
_output_shapes
:g
QTY_VIEWS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
QTY_VIEWS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
QTY_VIEWS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_VIEWS/strided_sliceStridedSliceQTY_VIEWS/Shape:output:0&QTY_VIEWS/strided_slice/stack:output:0(QTY_VIEWS/strided_slice/stack_1:output:0(QTY_VIEWS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
QTY_VIEWS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_VIEWS/Reshape/shapePack QTY_VIEWS/strided_slice:output:0"QTY_VIEWS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_VIEWS/ReshapeReshapeQTY_VIEWS/ExpandDims:output:0 QTY_VIEWS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2!ATP_2D_embedding/Reshape:output:0*DRAWING_CODE_2D_embedding/Reshape:output:0LEAD_TIME/Reshape:output:0MEAN_SIZE_2D/Reshape:output:0MEAN_SIZE_3D/Reshape:output:0QTN_REV_2D/Reshape:output:0QTN_REV_3D/Reshape:output:0QTY_DIMENSIONS/Reshape:output:0QTY_PART_LIST/Reshape:output:0QTY_SHEETS/Reshape:output:0%QTY_TEXT_INFORMATION/Reshape:output:0QTY_VIEWS/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^ATP_2D_embedding/None_Lookup/LookupTableFindV2 ^ATP_2D_embedding/ReadVariableOp8^DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2)^DRAWING_CODE_2D_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2`
.ATP_2D_embedding/None_Lookup/LookupTableFindV2.ATP_2D_embedding/None_Lookup/LookupTableFindV22B
ATP_2D_embedding/ReadVariableOpATP_2D_embedding/ReadVariableOp2r
7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV27DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV22T
(DRAWING_CODE_2D_embedding/ReadVariableOp(DRAWING_CODE_2D_embedding/ReadVariableOp:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:M	I
#
_output_shapes
:?????????
"
_user_specified_name
features:M
I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: 
?
d
F__inference_dropout_7_layer_call_and_return_conditional_losses_8404478

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_6_layer_call_fn_8406836

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_8404565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_1_layer_call_fn_8405392
inputs_atp_2d
inputs_drawing_code_2d
inputs_lead_time
inputs_mean_size_2d
inputs_mean_size_3d
inputs_qtn_rev_2d
inputs_qtn_rev_3d
inputs_qty_dimensions
inputs_qty_part_list
inputs_qty_sheets
inputs_qty_text_information
inputs_qty_views
unknown
	unknown_0	
	unknown_1:8
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_atp_2dinputs_drawing_code_2dinputs_lead_timeinputs_mean_size_2dinputs_mean_size_3dinputs_qtn_rev_2dinputs_qtn_rev_3dinputs_qty_dimensionsinputs_qty_part_listinputs_qty_sheetsinputs_qty_text_informationinputs_qty_viewsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*%
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_8404481o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
#
_output_shapes
:?????????
'
_user_specified_nameinputs/ATP_2D:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/DRAWING_CODE_2D:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/LEAD_TIME:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/MEAN_SIZE_2D:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/MEAN_SIZE_3D:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTN_REV_2D:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTN_REV_3D:ZV
#
_output_shapes
:?????????
/
_user_specified_nameinputs/QTY_DIMENSIONS:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/QTY_PART_LIST:V	R
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTY_SHEETS:`
\
#
_output_shapes
:?????????
5
_user_specified_nameinputs/QTY_TEXT_INFORMATION:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?
d
+__inference_dropout_4_layer_call_fn_8406742

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_8404631o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_5_layer_call_and_return_conditional_losses_8404419

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?<
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8404481

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
dense_features_2_8404371
dense_features_2_8404373	*
dense_features_2_8404375:8
dense_features_2_8404377
dense_features_2_8404379	*
dense_features_2_8404381:!
dense_4_8404396:
dense_4_8404398:!
dense_5_8404420:
dense_5_8404422:!
dense_6_8404444:
dense_6_8404446:!
dense_7_8404468:
dense_7_8404470:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?(dense_features_2/StatefulPartitionedCalld
dense_features_2/CastCastinputs_2*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_1Castinputs_3*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_2Castinputs_4*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_3Castinputs_5*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_4Castinputs_6*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_5Castinputs_7*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_6Castinputs_8*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_7Castinputs_9*

DstT0*

SrcT0*#
_output_shapes
:?????????g
dense_features_2/Cast_8Cast	inputs_10*

DstT0*

SrcT0*#
_output_shapes
:?????????g
dense_features_2/Cast_9Cast	inputs_11*

DstT0*

SrcT0*#
_output_shapes
:??????????
(dense_features_2/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1dense_features_2/Cast:y:0dense_features_2/Cast_1:y:0dense_features_2/Cast_2:y:0dense_features_2/Cast_3:y:0dense_features_2/Cast_4:y:0dense_features_2/Cast_5:y:0dense_features_2/Cast_6:y:0dense_features_2/Cast_7:y:0dense_features_2/Cast_8:y:0dense_features_2/Cast_9:y:0dense_features_2_8404371dense_features_2_8404373dense_features_2_8404375dense_features_2_8404377dense_features_2_8404379dense_features_2_8404381*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8404370?
dense_4/StatefulPartitionedCallStatefulPartitionedCall1dense_features_2/StatefulPartitionedCall:output:0dense_4_8404396dense_4_8404398*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_8404395?
dropout_4/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_8404406?
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_5_8404420dense_5_8404422*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_8404419?
dropout_5/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_8404430?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_6_8404444dense_6_8404446*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_8404443?
dropout_6/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_8404454?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_7_8404468dense_7_8404470*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_8404467?
dropout_7/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_8404478q
IdentityIdentity"dropout_7/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall)^dense_features_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2T
(dense_features_2/StatefulPartitionedCall(dense_features_2/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K	G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K
G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?	
e
F__inference_dropout_7_layer_call_and_return_conditional_losses_8406900

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *%I??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
2__inference_dense_features_2_layer_call_fn_8406158
features_atp_2d
features_drawing_code_2d
features_lead_time
features_mean_size_2d
features_mean_size_3d
features_qtn_rev_2d
features_qtn_rev_3d
features_qty_dimensions
features_qty_part_list
features_qty_sheets!
features_qty_text_information
features_qty_views
unknown
	unknown_0	
	unknown_1:8
	unknown_2
	unknown_3	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_atp_2dfeatures_drawing_code_2dfeatures_lead_timefeatures_mean_size_2dfeatures_mean_size_3dfeatures_qtn_rev_2dfeatures_qtn_rev_3dfeatures_qty_dimensionsfeatures_qty_part_listfeatures_qty_sheetsfeatures_qty_text_informationfeatures_qty_viewsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8404963o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
#
_output_shapes
:?????????
)
_user_specified_namefeatures/ATP_2D:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/DRAWING_CODE_2D:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/LEAD_TIME:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/MEAN_SIZE_2D:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/MEAN_SIZE_3D:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTN_REV_2D:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTN_REV_3D:\X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/QTY_DIMENSIONS:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/QTY_PART_LIST:X	T
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTY_SHEETS:b
^
#
_output_shapes
:?????????
7
_user_specified_namefeatures/QTY_TEXT_INFORMATION:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?
?
.__inference_sequential_1_layer_call_fn_8405436
inputs_atp_2d
inputs_drawing_code_2d
inputs_lead_time
inputs_mean_size_2d
inputs_mean_size_3d
inputs_qtn_rev_2d
inputs_qtn_rev_3d
inputs_qty_dimensions
inputs_qty_part_list
inputs_qty_sheets
inputs_qty_text_information
inputs_qty_views
unknown
	unknown_0	
	unknown_1:8
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_atp_2dinputs_drawing_code_2dinputs_lead_timeinputs_mean_size_2dinputs_mean_size_3dinputs_qtn_rev_2dinputs_qtn_rev_3dinputs_qty_dimensionsinputs_qty_part_listinputs_qty_sheetsinputs_qty_text_informationinputs_qty_viewsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*%
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405097o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
#
_output_shapes
:?????????
'
_user_specified_nameinputs/ATP_2D:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/DRAWING_CODE_2D:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/LEAD_TIME:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/MEAN_SIZE_2D:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/MEAN_SIZE_3D:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTN_REV_2D:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTN_REV_3D:ZV
#
_output_shapes
:?????????
/
_user_specified_nameinputs/QTY_DIMENSIONS:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/QTY_PART_LIST:V	R
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTY_SHEETS:`
\
#
_output_shapes
:?????????
5
_user_specified_nameinputs/QTY_TEXT_INFORMATION:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_8404454

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_5_layer_call_and_return_conditional_losses_8406806

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_<lambda>_84069444
0table_init91853_lookuptableimportv2_table_handle,
(table_init91853_lookuptableimportv2_keys.
*table_init91853_lookuptableimportv2_values	
identity??#table_init91853/LookupTableImportV2?
#table_init91853/LookupTableImportV2LookupTableImportV20table_init91853_lookuptableimportv2_table_handle(table_init91853_lookuptableimportv2_keys*table_init91853_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: l
NoOpNoOp$^table_init91853/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :8:82J
#table_init91853/LookupTableImportV2#table_init91853/LookupTableImportV2: 

_output_shapes
:8: 

_output_shapes
:8
?
?
)__inference_dense_5_layer_call_fn_8406768

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_8404419o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_8406841

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_7_layer_call_and_return_conditional_losses_8406888

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
<
__inference__creator_8406923
identity??
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name91944*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?

?
D__inference_dense_7_layer_call_and_return_conditional_losses_8404467

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_6_layer_call_and_return_conditional_losses_8404565

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_4_layer_call_and_return_conditional_losses_8404631

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_4_layer_call_and_return_conditional_losses_8406747

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_<lambda>_84069524
0table_init91943_lookuptableimportv2_table_handle,
(table_init91943_lookuptableimportv2_keys.
*table_init91943_lookuptableimportv2_values	
identity??#table_init91943/LookupTableImportV2?
#table_init91943/LookupTableImportV2LookupTableImportV20table_init91943_lookuptableimportv2_table_handle(table_init91943_lookuptableimportv2_keys*table_init91943_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: l
NoOpNoOp$^table_init91943/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2J
#table_init91943/LookupTableImportV2#table_init91943/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
??
?
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8404370
features

features_1

features_2

features_3

features_4

features_5

features_6

features_7

features_8

features_9
features_10
features_11?
;atp_2d_embedding_none_lookup_lookuptablefindv2_table_handle@
<atp_2d_embedding_none_lookup_lookuptablefindv2_default_value	:
(atp_2d_embedding_readvariableop_resource:8H
Ddrawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handleI
Edrawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value	C
1drawing_code_2d_embedding_readvariableop_resource:
identity??.ATP_2D_embedding/None_Lookup/LookupTableFindV2?ATP_2D_embedding/ReadVariableOp?7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2?(DRAWING_CODE_2D_embedding/ReadVariableOpj
ATP_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
ATP_2D_embedding/ExpandDims
ExpandDimsfeatures(ATP_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/ATP_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)ATP_2D_embedding/to_sparse_input/NotEqualNotEqual$ATP_2D_embedding/ExpandDims:output:08ATP_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(ATP_2D_embedding/to_sparse_input/indicesWhere-ATP_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'ATP_2D_embedding/to_sparse_input/valuesGatherNd$ATP_2D_embedding/ExpandDims:output:00ATP_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,ATP_2D_embedding/to_sparse_input/dense_shapeShape$ATP_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.ATP_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2;atp_2d_embedding_none_lookup_lookuptablefindv2_table_handle0ATP_2D_embedding/to_sparse_input/values:output:0<atp_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
ATP_2D_embedding/ReadVariableOpReadVariableOp(atp_2d_embedding_readvariableop_resource*
_output_shapes

:8*
dtype0
5ATP_2D_embedding/ATP_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4ATP_2D_embedding/ATP_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
/ATP_2D_embedding/ATP_2D_embedding_weights/SliceSlice5ATP_2D_embedding/to_sparse_input/dense_shape:output:0>ATP_2D_embedding/ATP_2D_embedding_weights/Slice/begin:output:0=ATP_2D_embedding/ATP_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/ATP_2D_embedding/ATP_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.ATP_2D_embedding/ATP_2D_embedding_weights/ProdProd8ATP_2D_embedding/ATP_2D_embedding_weights/Slice:output:08ATP_2D_embedding/ATP_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2GatherV25ATP_2D_embedding/to_sparse_input/dense_shape:output:0CATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indices:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
0ATP_2D_embedding/ATP_2D_embedding_weights/Cast/xPack7ATP_2D_embedding/ATP_2D_embedding_weights/Prod:output:0;ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshapeSparseReshape0ATP_2D_embedding/to_sparse_input/indices:index:05ATP_2D_embedding/to_sparse_input/dense_shape:output:09ATP_2D_embedding/ATP_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
@ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/IdentityIdentity7ATP_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????z
8ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
6ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqualGreaterEqualIATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0AATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
/ATP_2D_embedding/ATP_2D_embedding_weights/WhereWhere:ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
7ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1ATP_2D_embedding/ATP_2D_embedding_weights/ReshapeReshape7ATP_2D_embedding/ATP_2D_embedding_weights/Where:index:0@ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????{
9ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1GatherV2HATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_indices:0:ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0BATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????{
9ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2GatherV2IATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0:ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0BATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
2ATP_2D_embedding/ATP_2D_embedding_weights/IdentityIdentityFATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
CATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
QATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1:output:0=ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2:output:0;ATP_2D_embedding/ATP_2D_embedding_weights/Identity:output:0LATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
UATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
OATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
HATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/UniqueUniqueaATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*2
_class(
&$loc:@ATP_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
RATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2'ATP_2D_embedding/ReadVariableOp:value:0LATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@ATP_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
[ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
AATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMeandATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0XATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
9ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
3ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1ReshapegATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
/ATP_2D_embedding/ATP_2D_embedding_weights/ShapeShapeJATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
=ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
?ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7ATP_2D_embedding/ATP_2D_embedding_weights/strided_sliceStridedSlice8ATP_2D_embedding/ATP_2D_embedding_weights/Shape:output:0FATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack:output:0HATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1:output:0HATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1ATP_2D_embedding/ATP_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
/ATP_2D_embedding/ATP_2D_embedding_weights/stackPack:ATP_2D_embedding/ATP_2D_embedding_weights/stack/0:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
.ATP_2D_embedding/ATP_2D_embedding_weights/TileTile<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1:output:08ATP_2D_embedding/ATP_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
4ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like	ZerosLikeJATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
)ATP_2D_embedding/ATP_2D_embedding_weightsSelect7ATP_2D_embedding/ATP_2D_embedding_weights/Tile:output:08ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like:y:0JATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
0ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1Cast5ATP_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
6ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
1ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1Slice4ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1:y:0@ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/begin:output:0?ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
1ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1Shape2ATP_2D_embedding/ATP_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
6ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2Slice:ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/begin:output:0?ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5ATP_2D_embedding/ATP_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0ATP_2D_embedding/ATP_2D_embedding_weights/concatConcatV2:ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1:output:0:ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2:output:0>ATP_2D_embedding/ATP_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
3ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2Reshape2ATP_2D_embedding/ATP_2D_embedding_weights:output:09ATP_2D_embedding/ATP_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
ATP_2D_embedding/ShapeShape<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:n
$ATP_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&ATP_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&ATP_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
ATP_2D_embedding/strided_sliceStridedSliceATP_2D_embedding/Shape:output:0-ATP_2D_embedding/strided_slice/stack:output:0/ATP_2D_embedding/strided_slice/stack_1:output:0/ATP_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 ATP_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
ATP_2D_embedding/Reshape/shapePack'ATP_2D_embedding/strided_slice:output:0)ATP_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
ATP_2D_embedding/ReshapeReshape<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0'ATP_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(DRAWING_CODE_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$DRAWING_CODE_2D_embedding/ExpandDims
ExpandDims
features_11DRAWING_CODE_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????y
8DRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
2DRAWING_CODE_2D_embedding/to_sparse_input/NotEqualNotEqual-DRAWING_CODE_2D_embedding/ExpandDims:output:0ADRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
1DRAWING_CODE_2D_embedding/to_sparse_input/indicesWhere6DRAWING_CODE_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
0DRAWING_CODE_2D_embedding/to_sparse_input/valuesGatherNd-DRAWING_CODE_2D_embedding/ExpandDims:output:09DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
5DRAWING_CODE_2D_embedding/to_sparse_input/dense_shapeShape-DRAWING_CODE_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ddrawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handle9DRAWING_CODE_2D_embedding/to_sparse_input/values:output:0Edrawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
(DRAWING_CODE_2D_embedding/ReadVariableOpReadVariableOp1drawing_code_2d_embedding_readvariableop_resource*
_output_shapes

:*
dtype0?
GDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SliceSlice>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0PDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/begin:output:0ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ProdProdJDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2GatherV2>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0UDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indices:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/xPackIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Prod:output:0MDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshapeSparseReshape9DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/IdentityIdentity@DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqualGreaterEqual[DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0SDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/WhereWhereLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ReshapeReshapeIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Where:index:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1GatherV2ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_indices:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2GatherV2[DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
DDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/IdentityIdentityXDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
UDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
cDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1:output:0ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2:output:0MDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Identity:output:0^DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
gDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
aDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicetDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0pDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/UniqueUniquesDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*;
_class1
/-loc:@DRAWING_CODE_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
dDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV20DRAWING_CODE_2D_embedding/ReadVariableOp:value:0^DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*;
_class1
/-loc:@DRAWING_CODE_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
mDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitymDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
SDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMeanvDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0`DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0jDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
EDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1ReshapeyDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ShapeShape\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_sliceStridedSliceJDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape:output:0XDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack:output:0ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1:output:0ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stackPackLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
@DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/TileTileNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like	ZerosLike\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
;DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weightsSelectIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Tile:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like:y:0\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1Cast>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1SliceFDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1:y:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/begin:output:0QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1ShapeDDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2SliceLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/begin:output:0QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
GDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concatConcatV2LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1:output:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2:output:0PDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
EDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2ReshapeDDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
DRAWING_CODE_2D_embedding/ShapeShapeNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:w
-DRAWING_CODE_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/DRAWING_CODE_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/DRAWING_CODE_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'DRAWING_CODE_2D_embedding/strided_sliceStridedSlice(DRAWING_CODE_2D_embedding/Shape:output:06DRAWING_CODE_2D_embedding/strided_slice/stack:output:08DRAWING_CODE_2D_embedding/strided_slice/stack_1:output:08DRAWING_CODE_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)DRAWING_CODE_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'DRAWING_CODE_2D_embedding/Reshape/shapePack0DRAWING_CODE_2D_embedding/strided_slice:output:02DRAWING_CODE_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!DRAWING_CODE_2D_embedding/ReshapeReshapeNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:00DRAWING_CODE_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
LEAD_TIME/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
LEAD_TIME/ExpandDims
ExpandDims
features_2!LEAD_TIME/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
LEAD_TIME/ShapeShapeLEAD_TIME/ExpandDims:output:0*
T0*
_output_shapes
:g
LEAD_TIME/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
LEAD_TIME/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
LEAD_TIME/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
LEAD_TIME/strided_sliceStridedSliceLEAD_TIME/Shape:output:0&LEAD_TIME/strided_slice/stack:output:0(LEAD_TIME/strided_slice/stack_1:output:0(LEAD_TIME/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
LEAD_TIME/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
LEAD_TIME/Reshape/shapePack LEAD_TIME/strided_slice:output:0"LEAD_TIME/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
LEAD_TIME/ReshapeReshapeLEAD_TIME/ExpandDims:output:0 LEAD_TIME/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
MEAN_SIZE_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MEAN_SIZE_2D/ExpandDims
ExpandDims
features_3$MEAN_SIZE_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????b
MEAN_SIZE_2D/ShapeShape MEAN_SIZE_2D/ExpandDims:output:0*
T0*
_output_shapes
:j
 MEAN_SIZE_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"MEAN_SIZE_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"MEAN_SIZE_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MEAN_SIZE_2D/strided_sliceStridedSliceMEAN_SIZE_2D/Shape:output:0)MEAN_SIZE_2D/strided_slice/stack:output:0+MEAN_SIZE_2D/strided_slice/stack_1:output:0+MEAN_SIZE_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
MEAN_SIZE_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MEAN_SIZE_2D/Reshape/shapePack#MEAN_SIZE_2D/strided_slice:output:0%MEAN_SIZE_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MEAN_SIZE_2D/ReshapeReshape MEAN_SIZE_2D/ExpandDims:output:0#MEAN_SIZE_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
MEAN_SIZE_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MEAN_SIZE_3D/ExpandDims
ExpandDims
features_4$MEAN_SIZE_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????b
MEAN_SIZE_3D/ShapeShape MEAN_SIZE_3D/ExpandDims:output:0*
T0*
_output_shapes
:j
 MEAN_SIZE_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"MEAN_SIZE_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"MEAN_SIZE_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MEAN_SIZE_3D/strided_sliceStridedSliceMEAN_SIZE_3D/Shape:output:0)MEAN_SIZE_3D/strided_slice/stack:output:0+MEAN_SIZE_3D/strided_slice/stack_1:output:0+MEAN_SIZE_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
MEAN_SIZE_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MEAN_SIZE_3D/Reshape/shapePack#MEAN_SIZE_3D/strided_slice:output:0%MEAN_SIZE_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MEAN_SIZE_3D/ReshapeReshape MEAN_SIZE_3D/ExpandDims:output:0#MEAN_SIZE_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTN_REV_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTN_REV_2D/ExpandDims
ExpandDims
features_5"QTN_REV_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTN_REV_2D/ShapeShapeQTN_REV_2D/ExpandDims:output:0*
T0*
_output_shapes
:h
QTN_REV_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTN_REV_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTN_REV_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTN_REV_2D/strided_sliceStridedSliceQTN_REV_2D/Shape:output:0'QTN_REV_2D/strided_slice/stack:output:0)QTN_REV_2D/strided_slice/stack_1:output:0)QTN_REV_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTN_REV_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTN_REV_2D/Reshape/shapePack!QTN_REV_2D/strided_slice:output:0#QTN_REV_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTN_REV_2D/ReshapeReshapeQTN_REV_2D/ExpandDims:output:0!QTN_REV_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTN_REV_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTN_REV_3D/ExpandDims
ExpandDims
features_6"QTN_REV_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTN_REV_3D/ShapeShapeQTN_REV_3D/ExpandDims:output:0*
T0*
_output_shapes
:h
QTN_REV_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTN_REV_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTN_REV_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTN_REV_3D/strided_sliceStridedSliceQTN_REV_3D/Shape:output:0'QTN_REV_3D/strided_slice/stack:output:0)QTN_REV_3D/strided_slice/stack_1:output:0)QTN_REV_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTN_REV_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTN_REV_3D/Reshape/shapePack!QTN_REV_3D/strided_slice:output:0#QTN_REV_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTN_REV_3D/ReshapeReshapeQTN_REV_3D/ExpandDims:output:0!QTN_REV_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????h
QTY_DIMENSIONS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_DIMENSIONS/ExpandDims
ExpandDims
features_7&QTY_DIMENSIONS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????f
QTY_DIMENSIONS/ShapeShape"QTY_DIMENSIONS/ExpandDims:output:0*
T0*
_output_shapes
:l
"QTY_DIMENSIONS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$QTY_DIMENSIONS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$QTY_DIMENSIONS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_DIMENSIONS/strided_sliceStridedSliceQTY_DIMENSIONS/Shape:output:0+QTY_DIMENSIONS/strided_slice/stack:output:0-QTY_DIMENSIONS/strided_slice/stack_1:output:0-QTY_DIMENSIONS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
QTY_DIMENSIONS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_DIMENSIONS/Reshape/shapePack%QTY_DIMENSIONS/strided_slice:output:0'QTY_DIMENSIONS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_DIMENSIONS/ReshapeReshape"QTY_DIMENSIONS/ExpandDims:output:0%QTY_DIMENSIONS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
QTY_PART_LIST/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_PART_LIST/ExpandDims
ExpandDims
features_8%QTY_PART_LIST/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????d
QTY_PART_LIST/ShapeShape!QTY_PART_LIST/ExpandDims:output:0*
T0*
_output_shapes
:k
!QTY_PART_LIST/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#QTY_PART_LIST/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#QTY_PART_LIST/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_PART_LIST/strided_sliceStridedSliceQTY_PART_LIST/Shape:output:0*QTY_PART_LIST/strided_slice/stack:output:0,QTY_PART_LIST/strided_slice/stack_1:output:0,QTY_PART_LIST/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
QTY_PART_LIST/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_PART_LIST/Reshape/shapePack$QTY_PART_LIST/strided_slice:output:0&QTY_PART_LIST/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_PART_LIST/ReshapeReshape!QTY_PART_LIST/ExpandDims:output:0$QTY_PART_LIST/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTY_SHEETS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_SHEETS/ExpandDims
ExpandDims
features_9"QTY_SHEETS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTY_SHEETS/ShapeShapeQTY_SHEETS/ExpandDims:output:0*
T0*
_output_shapes
:h
QTY_SHEETS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTY_SHEETS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTY_SHEETS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_SHEETS/strided_sliceStridedSliceQTY_SHEETS/Shape:output:0'QTY_SHEETS/strided_slice/stack:output:0)QTY_SHEETS/strided_slice/stack_1:output:0)QTY_SHEETS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTY_SHEETS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_SHEETS/Reshape/shapePack!QTY_SHEETS/strided_slice:output:0#QTY_SHEETS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_SHEETS/ReshapeReshapeQTY_SHEETS/ExpandDims:output:0!QTY_SHEETS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#QTY_TEXT_INFORMATION/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_TEXT_INFORMATION/ExpandDims
ExpandDimsfeatures_10,QTY_TEXT_INFORMATION/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
QTY_TEXT_INFORMATION/ShapeShape(QTY_TEXT_INFORMATION/ExpandDims:output:0*
T0*
_output_shapes
:r
(QTY_TEXT_INFORMATION/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*QTY_TEXT_INFORMATION/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*QTY_TEXT_INFORMATION/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"QTY_TEXT_INFORMATION/strided_sliceStridedSlice#QTY_TEXT_INFORMATION/Shape:output:01QTY_TEXT_INFORMATION/strided_slice/stack:output:03QTY_TEXT_INFORMATION/strided_slice/stack_1:output:03QTY_TEXT_INFORMATION/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$QTY_TEXT_INFORMATION/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
"QTY_TEXT_INFORMATION/Reshape/shapePack+QTY_TEXT_INFORMATION/strided_slice:output:0-QTY_TEXT_INFORMATION/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_TEXT_INFORMATION/ReshapeReshape(QTY_TEXT_INFORMATION/ExpandDims:output:0+QTY_TEXT_INFORMATION/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
QTY_VIEWS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_VIEWS/ExpandDims
ExpandDimsfeatures_11!QTY_VIEWS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
QTY_VIEWS/ShapeShapeQTY_VIEWS/ExpandDims:output:0*
T0*
_output_shapes
:g
QTY_VIEWS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
QTY_VIEWS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
QTY_VIEWS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_VIEWS/strided_sliceStridedSliceQTY_VIEWS/Shape:output:0&QTY_VIEWS/strided_slice/stack:output:0(QTY_VIEWS/strided_slice/stack_1:output:0(QTY_VIEWS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
QTY_VIEWS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_VIEWS/Reshape/shapePack QTY_VIEWS/strided_slice:output:0"QTY_VIEWS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_VIEWS/ReshapeReshapeQTY_VIEWS/ExpandDims:output:0 QTY_VIEWS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2!ATP_2D_embedding/Reshape:output:0*DRAWING_CODE_2D_embedding/Reshape:output:0LEAD_TIME/Reshape:output:0MEAN_SIZE_2D/Reshape:output:0MEAN_SIZE_3D/Reshape:output:0QTN_REV_2D/Reshape:output:0QTN_REV_3D/Reshape:output:0QTY_DIMENSIONS/Reshape:output:0QTY_PART_LIST/Reshape:output:0QTY_SHEETS/Reshape:output:0%QTY_TEXT_INFORMATION/Reshape:output:0QTY_VIEWS/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^ATP_2D_embedding/None_Lookup/LookupTableFindV2 ^ATP_2D_embedding/ReadVariableOp8^DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2)^DRAWING_CODE_2D_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2`
.ATP_2D_embedding/None_Lookup/LookupTableFindV2.ATP_2D_embedding/None_Lookup/LookupTableFindV22B
ATP_2D_embedding/ReadVariableOpATP_2D_embedding/ReadVariableOp2r
7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV27DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV22T
(DRAWING_CODE_2D_embedding/ReadVariableOp(DRAWING_CODE_2D_embedding/ReadVariableOp:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:M	I
#
_output_shapes
:?????????
"
_user_specified_name
features:M
I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: 
??
?
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8406712
features_atp_2d
features_drawing_code_2d
features_lead_time
features_mean_size_2d
features_mean_size_3d
features_qtn_rev_2d
features_qtn_rev_3d
features_qty_dimensions
features_qty_part_list
features_qty_sheets!
features_qty_text_information
features_qty_views?
;atp_2d_embedding_none_lookup_lookuptablefindv2_table_handle@
<atp_2d_embedding_none_lookup_lookuptablefindv2_default_value	:
(atp_2d_embedding_readvariableop_resource:8H
Ddrawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handleI
Edrawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value	C
1drawing_code_2d_embedding_readvariableop_resource:
identity??.ATP_2D_embedding/None_Lookup/LookupTableFindV2?ATP_2D_embedding/ReadVariableOp?7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2?(DRAWING_CODE_2D_embedding/ReadVariableOpj
ATP_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
ATP_2D_embedding/ExpandDims
ExpandDimsfeatures_atp_2d(ATP_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/ATP_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)ATP_2D_embedding/to_sparse_input/NotEqualNotEqual$ATP_2D_embedding/ExpandDims:output:08ATP_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(ATP_2D_embedding/to_sparse_input/indicesWhere-ATP_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'ATP_2D_embedding/to_sparse_input/valuesGatherNd$ATP_2D_embedding/ExpandDims:output:00ATP_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,ATP_2D_embedding/to_sparse_input/dense_shapeShape$ATP_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.ATP_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2;atp_2d_embedding_none_lookup_lookuptablefindv2_table_handle0ATP_2D_embedding/to_sparse_input/values:output:0<atp_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
ATP_2D_embedding/ReadVariableOpReadVariableOp(atp_2d_embedding_readvariableop_resource*
_output_shapes

:8*
dtype0
5ATP_2D_embedding/ATP_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4ATP_2D_embedding/ATP_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
/ATP_2D_embedding/ATP_2D_embedding_weights/SliceSlice5ATP_2D_embedding/to_sparse_input/dense_shape:output:0>ATP_2D_embedding/ATP_2D_embedding_weights/Slice/begin:output:0=ATP_2D_embedding/ATP_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/ATP_2D_embedding/ATP_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.ATP_2D_embedding/ATP_2D_embedding_weights/ProdProd8ATP_2D_embedding/ATP_2D_embedding_weights/Slice:output:08ATP_2D_embedding/ATP_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2GatherV25ATP_2D_embedding/to_sparse_input/dense_shape:output:0CATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indices:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
0ATP_2D_embedding/ATP_2D_embedding_weights/Cast/xPack7ATP_2D_embedding/ATP_2D_embedding_weights/Prod:output:0;ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshapeSparseReshape0ATP_2D_embedding/to_sparse_input/indices:index:05ATP_2D_embedding/to_sparse_input/dense_shape:output:09ATP_2D_embedding/ATP_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
@ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/IdentityIdentity7ATP_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????z
8ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
6ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqualGreaterEqualIATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0AATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
/ATP_2D_embedding/ATP_2D_embedding_weights/WhereWhere:ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
7ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1ATP_2D_embedding/ATP_2D_embedding_weights/ReshapeReshape7ATP_2D_embedding/ATP_2D_embedding_weights/Where:index:0@ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????{
9ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1GatherV2HATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_indices:0:ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0BATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????{
9ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2GatherV2IATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0:ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0BATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
2ATP_2D_embedding/ATP_2D_embedding_weights/IdentityIdentityFATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
CATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
QATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1:output:0=ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2:output:0;ATP_2D_embedding/ATP_2D_embedding_weights/Identity:output:0LATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
UATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
OATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
HATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/UniqueUniqueaATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*2
_class(
&$loc:@ATP_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
RATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2'ATP_2D_embedding/ReadVariableOp:value:0LATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@ATP_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
[ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
AATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMeandATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0XATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
9ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
3ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1ReshapegATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
/ATP_2D_embedding/ATP_2D_embedding_weights/ShapeShapeJATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
=ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
?ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7ATP_2D_embedding/ATP_2D_embedding_weights/strided_sliceStridedSlice8ATP_2D_embedding/ATP_2D_embedding_weights/Shape:output:0FATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack:output:0HATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1:output:0HATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1ATP_2D_embedding/ATP_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
/ATP_2D_embedding/ATP_2D_embedding_weights/stackPack:ATP_2D_embedding/ATP_2D_embedding_weights/stack/0:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
.ATP_2D_embedding/ATP_2D_embedding_weights/TileTile<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1:output:08ATP_2D_embedding/ATP_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
4ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like	ZerosLikeJATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
)ATP_2D_embedding/ATP_2D_embedding_weightsSelect7ATP_2D_embedding/ATP_2D_embedding_weights/Tile:output:08ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like:y:0JATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
0ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1Cast5ATP_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
6ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
1ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1Slice4ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1:y:0@ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/begin:output:0?ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
1ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1Shape2ATP_2D_embedding/ATP_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
6ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2Slice:ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/begin:output:0?ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5ATP_2D_embedding/ATP_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0ATP_2D_embedding/ATP_2D_embedding_weights/concatConcatV2:ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1:output:0:ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2:output:0>ATP_2D_embedding/ATP_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
3ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2Reshape2ATP_2D_embedding/ATP_2D_embedding_weights:output:09ATP_2D_embedding/ATP_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
ATP_2D_embedding/ShapeShape<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:n
$ATP_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&ATP_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&ATP_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
ATP_2D_embedding/strided_sliceStridedSliceATP_2D_embedding/Shape:output:0-ATP_2D_embedding/strided_slice/stack:output:0/ATP_2D_embedding/strided_slice/stack_1:output:0/ATP_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 ATP_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
ATP_2D_embedding/Reshape/shapePack'ATP_2D_embedding/strided_slice:output:0)ATP_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
ATP_2D_embedding/ReshapeReshape<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0'ATP_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(DRAWING_CODE_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$DRAWING_CODE_2D_embedding/ExpandDims
ExpandDimsfeatures_drawing_code_2d1DRAWING_CODE_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????y
8DRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
2DRAWING_CODE_2D_embedding/to_sparse_input/NotEqualNotEqual-DRAWING_CODE_2D_embedding/ExpandDims:output:0ADRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
1DRAWING_CODE_2D_embedding/to_sparse_input/indicesWhere6DRAWING_CODE_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
0DRAWING_CODE_2D_embedding/to_sparse_input/valuesGatherNd-DRAWING_CODE_2D_embedding/ExpandDims:output:09DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
5DRAWING_CODE_2D_embedding/to_sparse_input/dense_shapeShape-DRAWING_CODE_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ddrawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handle9DRAWING_CODE_2D_embedding/to_sparse_input/values:output:0Edrawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
(DRAWING_CODE_2D_embedding/ReadVariableOpReadVariableOp1drawing_code_2d_embedding_readvariableop_resource*
_output_shapes

:*
dtype0?
GDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SliceSlice>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0PDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/begin:output:0ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ProdProdJDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2GatherV2>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0UDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indices:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/xPackIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Prod:output:0MDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshapeSparseReshape9DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/IdentityIdentity@DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqualGreaterEqual[DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0SDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/WhereWhereLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ReshapeReshapeIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Where:index:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1GatherV2ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_indices:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2GatherV2[DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
DDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/IdentityIdentityXDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
UDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
cDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1:output:0ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2:output:0MDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Identity:output:0^DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
gDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
aDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicetDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0pDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/UniqueUniquesDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*;
_class1
/-loc:@DRAWING_CODE_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
dDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV20DRAWING_CODE_2D_embedding/ReadVariableOp:value:0^DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*;
_class1
/-loc:@DRAWING_CODE_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
mDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitymDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
SDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMeanvDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0`DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0jDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
EDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1ReshapeyDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ShapeShape\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_sliceStridedSliceJDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape:output:0XDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack:output:0ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1:output:0ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stackPackLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
@DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/TileTileNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like	ZerosLike\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
;DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weightsSelectIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Tile:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like:y:0\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1Cast>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1SliceFDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1:y:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/begin:output:0QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1ShapeDDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2SliceLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/begin:output:0QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
GDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concatConcatV2LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1:output:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2:output:0PDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
EDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2ReshapeDDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
DRAWING_CODE_2D_embedding/ShapeShapeNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:w
-DRAWING_CODE_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/DRAWING_CODE_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/DRAWING_CODE_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'DRAWING_CODE_2D_embedding/strided_sliceStridedSlice(DRAWING_CODE_2D_embedding/Shape:output:06DRAWING_CODE_2D_embedding/strided_slice/stack:output:08DRAWING_CODE_2D_embedding/strided_slice/stack_1:output:08DRAWING_CODE_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)DRAWING_CODE_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'DRAWING_CODE_2D_embedding/Reshape/shapePack0DRAWING_CODE_2D_embedding/strided_slice:output:02DRAWING_CODE_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!DRAWING_CODE_2D_embedding/ReshapeReshapeNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:00DRAWING_CODE_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
LEAD_TIME/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
LEAD_TIME/ExpandDims
ExpandDimsfeatures_lead_time!LEAD_TIME/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
LEAD_TIME/ShapeShapeLEAD_TIME/ExpandDims:output:0*
T0*
_output_shapes
:g
LEAD_TIME/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
LEAD_TIME/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
LEAD_TIME/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
LEAD_TIME/strided_sliceStridedSliceLEAD_TIME/Shape:output:0&LEAD_TIME/strided_slice/stack:output:0(LEAD_TIME/strided_slice/stack_1:output:0(LEAD_TIME/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
LEAD_TIME/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
LEAD_TIME/Reshape/shapePack LEAD_TIME/strided_slice:output:0"LEAD_TIME/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
LEAD_TIME/ReshapeReshapeLEAD_TIME/ExpandDims:output:0 LEAD_TIME/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
MEAN_SIZE_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MEAN_SIZE_2D/ExpandDims
ExpandDimsfeatures_mean_size_2d$MEAN_SIZE_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????b
MEAN_SIZE_2D/ShapeShape MEAN_SIZE_2D/ExpandDims:output:0*
T0*
_output_shapes
:j
 MEAN_SIZE_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"MEAN_SIZE_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"MEAN_SIZE_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MEAN_SIZE_2D/strided_sliceStridedSliceMEAN_SIZE_2D/Shape:output:0)MEAN_SIZE_2D/strided_slice/stack:output:0+MEAN_SIZE_2D/strided_slice/stack_1:output:0+MEAN_SIZE_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
MEAN_SIZE_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MEAN_SIZE_2D/Reshape/shapePack#MEAN_SIZE_2D/strided_slice:output:0%MEAN_SIZE_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MEAN_SIZE_2D/ReshapeReshape MEAN_SIZE_2D/ExpandDims:output:0#MEAN_SIZE_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
MEAN_SIZE_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MEAN_SIZE_3D/ExpandDims
ExpandDimsfeatures_mean_size_3d$MEAN_SIZE_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????b
MEAN_SIZE_3D/ShapeShape MEAN_SIZE_3D/ExpandDims:output:0*
T0*
_output_shapes
:j
 MEAN_SIZE_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"MEAN_SIZE_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"MEAN_SIZE_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MEAN_SIZE_3D/strided_sliceStridedSliceMEAN_SIZE_3D/Shape:output:0)MEAN_SIZE_3D/strided_slice/stack:output:0+MEAN_SIZE_3D/strided_slice/stack_1:output:0+MEAN_SIZE_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
MEAN_SIZE_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MEAN_SIZE_3D/Reshape/shapePack#MEAN_SIZE_3D/strided_slice:output:0%MEAN_SIZE_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MEAN_SIZE_3D/ReshapeReshape MEAN_SIZE_3D/ExpandDims:output:0#MEAN_SIZE_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTN_REV_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTN_REV_2D/ExpandDims
ExpandDimsfeatures_qtn_rev_2d"QTN_REV_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTN_REV_2D/ShapeShapeQTN_REV_2D/ExpandDims:output:0*
T0*
_output_shapes
:h
QTN_REV_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTN_REV_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTN_REV_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTN_REV_2D/strided_sliceStridedSliceQTN_REV_2D/Shape:output:0'QTN_REV_2D/strided_slice/stack:output:0)QTN_REV_2D/strided_slice/stack_1:output:0)QTN_REV_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTN_REV_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTN_REV_2D/Reshape/shapePack!QTN_REV_2D/strided_slice:output:0#QTN_REV_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTN_REV_2D/ReshapeReshapeQTN_REV_2D/ExpandDims:output:0!QTN_REV_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTN_REV_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTN_REV_3D/ExpandDims
ExpandDimsfeatures_qtn_rev_3d"QTN_REV_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTN_REV_3D/ShapeShapeQTN_REV_3D/ExpandDims:output:0*
T0*
_output_shapes
:h
QTN_REV_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTN_REV_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTN_REV_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTN_REV_3D/strided_sliceStridedSliceQTN_REV_3D/Shape:output:0'QTN_REV_3D/strided_slice/stack:output:0)QTN_REV_3D/strided_slice/stack_1:output:0)QTN_REV_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTN_REV_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTN_REV_3D/Reshape/shapePack!QTN_REV_3D/strided_slice:output:0#QTN_REV_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTN_REV_3D/ReshapeReshapeQTN_REV_3D/ExpandDims:output:0!QTN_REV_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????h
QTY_DIMENSIONS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_DIMENSIONS/ExpandDims
ExpandDimsfeatures_qty_dimensions&QTY_DIMENSIONS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????f
QTY_DIMENSIONS/ShapeShape"QTY_DIMENSIONS/ExpandDims:output:0*
T0*
_output_shapes
:l
"QTY_DIMENSIONS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$QTY_DIMENSIONS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$QTY_DIMENSIONS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_DIMENSIONS/strided_sliceStridedSliceQTY_DIMENSIONS/Shape:output:0+QTY_DIMENSIONS/strided_slice/stack:output:0-QTY_DIMENSIONS/strided_slice/stack_1:output:0-QTY_DIMENSIONS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
QTY_DIMENSIONS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_DIMENSIONS/Reshape/shapePack%QTY_DIMENSIONS/strided_slice:output:0'QTY_DIMENSIONS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_DIMENSIONS/ReshapeReshape"QTY_DIMENSIONS/ExpandDims:output:0%QTY_DIMENSIONS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
QTY_PART_LIST/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_PART_LIST/ExpandDims
ExpandDimsfeatures_qty_part_list%QTY_PART_LIST/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????d
QTY_PART_LIST/ShapeShape!QTY_PART_LIST/ExpandDims:output:0*
T0*
_output_shapes
:k
!QTY_PART_LIST/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#QTY_PART_LIST/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#QTY_PART_LIST/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_PART_LIST/strided_sliceStridedSliceQTY_PART_LIST/Shape:output:0*QTY_PART_LIST/strided_slice/stack:output:0,QTY_PART_LIST/strided_slice/stack_1:output:0,QTY_PART_LIST/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
QTY_PART_LIST/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_PART_LIST/Reshape/shapePack$QTY_PART_LIST/strided_slice:output:0&QTY_PART_LIST/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_PART_LIST/ReshapeReshape!QTY_PART_LIST/ExpandDims:output:0$QTY_PART_LIST/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTY_SHEETS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_SHEETS/ExpandDims
ExpandDimsfeatures_qty_sheets"QTY_SHEETS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTY_SHEETS/ShapeShapeQTY_SHEETS/ExpandDims:output:0*
T0*
_output_shapes
:h
QTY_SHEETS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTY_SHEETS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTY_SHEETS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_SHEETS/strided_sliceStridedSliceQTY_SHEETS/Shape:output:0'QTY_SHEETS/strided_slice/stack:output:0)QTY_SHEETS/strided_slice/stack_1:output:0)QTY_SHEETS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTY_SHEETS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_SHEETS/Reshape/shapePack!QTY_SHEETS/strided_slice:output:0#QTY_SHEETS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_SHEETS/ReshapeReshapeQTY_SHEETS/ExpandDims:output:0!QTY_SHEETS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#QTY_TEXT_INFORMATION/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_TEXT_INFORMATION/ExpandDims
ExpandDimsfeatures_qty_text_information,QTY_TEXT_INFORMATION/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
QTY_TEXT_INFORMATION/ShapeShape(QTY_TEXT_INFORMATION/ExpandDims:output:0*
T0*
_output_shapes
:r
(QTY_TEXT_INFORMATION/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*QTY_TEXT_INFORMATION/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*QTY_TEXT_INFORMATION/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"QTY_TEXT_INFORMATION/strided_sliceStridedSlice#QTY_TEXT_INFORMATION/Shape:output:01QTY_TEXT_INFORMATION/strided_slice/stack:output:03QTY_TEXT_INFORMATION/strided_slice/stack_1:output:03QTY_TEXT_INFORMATION/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$QTY_TEXT_INFORMATION/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
"QTY_TEXT_INFORMATION/Reshape/shapePack+QTY_TEXT_INFORMATION/strided_slice:output:0-QTY_TEXT_INFORMATION/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_TEXT_INFORMATION/ReshapeReshape(QTY_TEXT_INFORMATION/ExpandDims:output:0+QTY_TEXT_INFORMATION/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
QTY_VIEWS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_VIEWS/ExpandDims
ExpandDimsfeatures_qty_views!QTY_VIEWS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
QTY_VIEWS/ShapeShapeQTY_VIEWS/ExpandDims:output:0*
T0*
_output_shapes
:g
QTY_VIEWS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
QTY_VIEWS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
QTY_VIEWS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_VIEWS/strided_sliceStridedSliceQTY_VIEWS/Shape:output:0&QTY_VIEWS/strided_slice/stack:output:0(QTY_VIEWS/strided_slice/stack_1:output:0(QTY_VIEWS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
QTY_VIEWS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_VIEWS/Reshape/shapePack QTY_VIEWS/strided_slice:output:0"QTY_VIEWS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_VIEWS/ReshapeReshapeQTY_VIEWS/ExpandDims:output:0 QTY_VIEWS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2!ATP_2D_embedding/Reshape:output:0*DRAWING_CODE_2D_embedding/Reshape:output:0LEAD_TIME/Reshape:output:0MEAN_SIZE_2D/Reshape:output:0MEAN_SIZE_3D/Reshape:output:0QTN_REV_2D/Reshape:output:0QTN_REV_3D/Reshape:output:0QTY_DIMENSIONS/Reshape:output:0QTY_PART_LIST/Reshape:output:0QTY_SHEETS/Reshape:output:0%QTY_TEXT_INFORMATION/Reshape:output:0QTY_VIEWS/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^ATP_2D_embedding/None_Lookup/LookupTableFindV2 ^ATP_2D_embedding/ReadVariableOp8^DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2)^DRAWING_CODE_2D_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2`
.ATP_2D_embedding/None_Lookup/LookupTableFindV2.ATP_2D_embedding/None_Lookup/LookupTableFindV22B
ATP_2D_embedding/ReadVariableOpATP_2D_embedding/ReadVariableOp2r
7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV27DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV22T
(DRAWING_CODE_2D_embedding/ReadVariableOp(DRAWING_CODE_2D_embedding/ReadVariableOp:T P
#
_output_shapes
:?????????
)
_user_specified_namefeatures/ATP_2D:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/DRAWING_CODE_2D:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/LEAD_TIME:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/MEAN_SIZE_2D:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/MEAN_SIZE_3D:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTN_REV_2D:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTN_REV_3D:\X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/QTY_DIMENSIONS:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/QTY_PART_LIST:X	T
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTY_SHEETS:b
^
#
_output_shapes
:?????????
7
_user_specified_namefeatures/QTY_TEXT_INFORMATION:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
??
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405755
inputs_atp_2d
inputs_drawing_code_2d
inputs_lead_time
inputs_mean_size_2d
inputs_mean_size_3d
inputs_qtn_rev_2d
inputs_qtn_rev_3d
inputs_qty_dimensions
inputs_qty_part_list
inputs_qty_sheets
inputs_qty_text_information
inputs_qty_viewsP
Ldense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_table_handleQ
Mdense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_default_value	K
9dense_features_2_atp_2d_embedding_readvariableop_resource:8Y
Udense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handleZ
Vdense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value	T
Bdense_features_2_drawing_code_2d_embedding_readvariableop_resource:8
&dense_4_matmul_readvariableop_resource:5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:8
&dense_6_matmul_readvariableop_resource:5
'dense_6_biasadd_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp??dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2?0dense_features_2/ATP_2D_embedding/ReadVariableOp?Hdense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2?9dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOpl
dense_features_2/CastCastinputs_lead_time*

DstT0*

SrcT0*#
_output_shapes
:?????????q
dense_features_2/Cast_1Castinputs_mean_size_2d*

DstT0*

SrcT0*#
_output_shapes
:?????????q
dense_features_2/Cast_2Castinputs_mean_size_3d*

DstT0*

SrcT0*#
_output_shapes
:?????????o
dense_features_2/Cast_3Castinputs_qtn_rev_2d*

DstT0*

SrcT0*#
_output_shapes
:?????????o
dense_features_2/Cast_4Castinputs_qtn_rev_3d*

DstT0*

SrcT0*#
_output_shapes
:?????????s
dense_features_2/Cast_5Castinputs_qty_dimensions*

DstT0*

SrcT0*#
_output_shapes
:?????????r
dense_features_2/Cast_6Castinputs_qty_part_list*

DstT0*

SrcT0*#
_output_shapes
:?????????o
dense_features_2/Cast_7Castinputs_qty_sheets*

DstT0*

SrcT0*#
_output_shapes
:?????????y
dense_features_2/Cast_8Castinputs_qty_text_information*

DstT0*

SrcT0*#
_output_shapes
:?????????n
dense_features_2/Cast_9Castinputs_qty_views*

DstT0*

SrcT0*#
_output_shapes
:?????????{
0dense_features_2/ATP_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,dense_features_2/ATP_2D_embedding/ExpandDims
ExpandDimsinputs_atp_2d9dense_features_2/ATP_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
@dense_features_2/ATP_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
:dense_features_2/ATP_2D_embedding/to_sparse_input/NotEqualNotEqual5dense_features_2/ATP_2D_embedding/ExpandDims:output:0Idense_features_2/ATP_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
9dense_features_2/ATP_2D_embedding/to_sparse_input/indicesWhere>dense_features_2/ATP_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
8dense_features_2/ATP_2D_embedding/to_sparse_input/valuesGatherNd5dense_features_2/ATP_2D_embedding/ExpandDims:output:0Adense_features_2/ATP_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
=dense_features_2/ATP_2D_embedding/to_sparse_input/dense_shapeShape5dense_features_2/ATP_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
?dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ldense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_table_handleAdense_features_2/ATP_2D_embedding/to_sparse_input/values:output:0Mdense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
0dense_features_2/ATP_2D_embedding/ReadVariableOpReadVariableOp9dense_features_2_atp_2d_embedding_readvariableop_resource*
_output_shapes

:8*
dtype0?
Fdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Edense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
@dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SliceSliceFdense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0Odense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/begin:output:0Ndense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
@dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
?dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ProdProdIdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice:output:0Idense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
Kdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Cdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2GatherV2Fdense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0Tdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indices:output:0Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
Adense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast/xPackHdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Prod:output:0Ldense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshapeSparseReshapeAdense_features_2/ATP_2D_embedding/to_sparse_input/indices:index:0Fdense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0Jdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/IdentityIdentityHdense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Idense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Gdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqualGreaterEqualZdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0Rdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
@dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/WhereWhereKdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ReshapeReshapeHdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Where:index:0Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
Jdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Edense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1GatherV2Ydense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_indices:0Kdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0Sdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
Jdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Edense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2GatherV2Zdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0Kdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0Sdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Cdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/IdentityIdentityWdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
Tdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1:output:0Ndense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2:output:0Ldense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Identity:output:0]dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
fdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
`dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Ydense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*C
_class9
75loc:@dense_features_2/ATP_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
cdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV28dense_features_2/ATP_2D_embedding/ReadVariableOp:value:0]dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*C
_class9
75loc:@dense_features_2/ATP_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
ldense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityldense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
Rdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMeanudense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0_dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0idense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
Jdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Ddense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1Reshapexdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
@dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ShapeShape[dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
Ndense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Pdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Pdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_sliceStridedSliceIdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Shape:output:0Wdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack:output:0Ydense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1:output:0Ydense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
@dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stackPackKdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stack/0:output:0Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
?dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/TileTileMdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1:output:0Idense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
Edense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like	ZerosLike[dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
:dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weightsSelectHdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Tile:output:0Idense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like:y:0[dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
Adense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1CastFdense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Gdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1SliceEdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1:y:0Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/begin:output:0Pdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
Bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1ShapeCdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Gdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2SliceKdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1:output:0Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/begin:output:0Pdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Fdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Adense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concatConcatV2Kdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1:output:0Kdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2:output:0Odense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ddense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2ReshapeCdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights:output:0Jdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
'dense_features_2/ATP_2D_embedding/ShapeShapeMdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:
5dense_features_2/ATP_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7dense_features_2/ATP_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7dense_features_2/ATP_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/dense_features_2/ATP_2D_embedding/strided_sliceStridedSlice0dense_features_2/ATP_2D_embedding/Shape:output:0>dense_features_2/ATP_2D_embedding/strided_slice/stack:output:0@dense_features_2/ATP_2D_embedding/strided_slice/stack_1:output:0@dense_features_2/ATP_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features_2/ATP_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
/dense_features_2/ATP_2D_embedding/Reshape/shapePack8dense_features_2/ATP_2D_embedding/strided_slice:output:0:dense_features_2/ATP_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)dense_features_2/ATP_2D_embedding/ReshapeReshapeMdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:08dense_features_2/ATP_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
9dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims
ExpandDimsinputs_drawing_code_2dBdense_features_2/DRAWING_CODE_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Idense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Cdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/NotEqualNotEqual>dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims:output:0Rdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Bdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/indicesWhereGdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Adense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/valuesGatherNd>dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims:output:0Jdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Fdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shapeShape>dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Hdense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Udense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handleJdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/values:output:0Vdense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
9dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOpReadVariableOpBdense_features_2_drawing_code_2d_embedding_readvariableop_resource*
_output_shapes

:*
dtype0?
Xdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Wdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SliceSliceOdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0adense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/begin:output:0`dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
Rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Qdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ProdProd[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice:output:0[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Udense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2GatherV2Odense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0fdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indices:output:0cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
Sdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/xPackZdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Prod:output:0^dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshapeSparseReshapeJdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0Odense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0\dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/IdentityIdentityQdense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Ydense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqualGreaterEqualldense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0ddense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
Rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/WhereWhere]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ReshapeReshapeZdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Where:index:0cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
\dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1GatherV2kdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_indices:0]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0edense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
\dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2GatherV2ldense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0edense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Udense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/IdentityIdentityidense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
fdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows`dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1:output:0`dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2:output:0^dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Identity:output:0odense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
xdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
kdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/UniqueUnique?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*L
_classB
@>loc:@dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
udense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Adense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp:value:0odense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*L
_classB
@>loc:@dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
~dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity~dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
ddense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMean?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0qdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0{dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
\dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Vdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1Reshape?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0edense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
Rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ShapeShapemdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
`dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
bdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
bdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_sliceStridedSlice[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape:output:0idense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack:output:0kdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1:output:0kdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
Rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stackPack]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0:output:0cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
Qdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/TileTile_dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1:output:0[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
Wdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like	ZerosLikemdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
Ldense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weightsSelectZdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Tile:output:0[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like:y:0mdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
Sdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1CastOdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Ydense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1SliceWdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1:y:0cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/begin:output:0bdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
Tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1ShapeUdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Ydense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2Slice]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1:output:0cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/begin:output:0bdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Xdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Sdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concatConcatV2]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1:output:0]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2:output:0adense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Vdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2ReshapeUdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0\dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
0dense_features_2/DRAWING_CODE_2D_embedding/ShapeShape_dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:?
>dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8dense_features_2/DRAWING_CODE_2D_embedding/strided_sliceStridedSlice9dense_features_2/DRAWING_CODE_2D_embedding/Shape:output:0Gdense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack:output:0Idense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_1:output:0Idense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:dense_features_2/DRAWING_CODE_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
8dense_features_2/DRAWING_CODE_2D_embedding/Reshape/shapePackAdense_features_2/DRAWING_CODE_2D_embedding/strided_slice:output:0Cdense_features_2/DRAWING_CODE_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
2dense_features_2/DRAWING_CODE_2D_embedding/ReshapeReshape_dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:0Adense_features_2/DRAWING_CODE_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)dense_features_2/LEAD_TIME/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%dense_features_2/LEAD_TIME/ExpandDims
ExpandDimsdense_features_2/Cast:y:02dense_features_2/LEAD_TIME/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
 dense_features_2/LEAD_TIME/ShapeShape.dense_features_2/LEAD_TIME/ExpandDims:output:0*
T0*
_output_shapes
:x
.dense_features_2/LEAD_TIME/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features_2/LEAD_TIME/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features_2/LEAD_TIME/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(dense_features_2/LEAD_TIME/strided_sliceStridedSlice)dense_features_2/LEAD_TIME/Shape:output:07dense_features_2/LEAD_TIME/strided_slice/stack:output:09dense_features_2/LEAD_TIME/strided_slice/stack_1:output:09dense_features_2/LEAD_TIME/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features_2/LEAD_TIME/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
(dense_features_2/LEAD_TIME/Reshape/shapePack1dense_features_2/LEAD_TIME/strided_slice:output:03dense_features_2/LEAD_TIME/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
"dense_features_2/LEAD_TIME/ReshapeReshape.dense_features_2/LEAD_TIME/ExpandDims:output:01dense_features_2/LEAD_TIME/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????w
,dense_features_2/MEAN_SIZE_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(dense_features_2/MEAN_SIZE_2D/ExpandDims
ExpandDimsdense_features_2/Cast_1:y:05dense_features_2/MEAN_SIZE_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
#dense_features_2/MEAN_SIZE_2D/ShapeShape1dense_features_2/MEAN_SIZE_2D/ExpandDims:output:0*
T0*
_output_shapes
:{
1dense_features_2/MEAN_SIZE_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_2/MEAN_SIZE_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_2/MEAN_SIZE_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+dense_features_2/MEAN_SIZE_2D/strided_sliceStridedSlice,dense_features_2/MEAN_SIZE_2D/Shape:output:0:dense_features_2/MEAN_SIZE_2D/strided_slice/stack:output:0<dense_features_2/MEAN_SIZE_2D/strided_slice/stack_1:output:0<dense_features_2/MEAN_SIZE_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_2/MEAN_SIZE_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
+dense_features_2/MEAN_SIZE_2D/Reshape/shapePack4dense_features_2/MEAN_SIZE_2D/strided_slice:output:06dense_features_2/MEAN_SIZE_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
%dense_features_2/MEAN_SIZE_2D/ReshapeReshape1dense_features_2/MEAN_SIZE_2D/ExpandDims:output:04dense_features_2/MEAN_SIZE_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????w
,dense_features_2/MEAN_SIZE_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(dense_features_2/MEAN_SIZE_3D/ExpandDims
ExpandDimsdense_features_2/Cast_2:y:05dense_features_2/MEAN_SIZE_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
#dense_features_2/MEAN_SIZE_3D/ShapeShape1dense_features_2/MEAN_SIZE_3D/ExpandDims:output:0*
T0*
_output_shapes
:{
1dense_features_2/MEAN_SIZE_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_2/MEAN_SIZE_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_2/MEAN_SIZE_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+dense_features_2/MEAN_SIZE_3D/strided_sliceStridedSlice,dense_features_2/MEAN_SIZE_3D/Shape:output:0:dense_features_2/MEAN_SIZE_3D/strided_slice/stack:output:0<dense_features_2/MEAN_SIZE_3D/strided_slice/stack_1:output:0<dense_features_2/MEAN_SIZE_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_2/MEAN_SIZE_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
+dense_features_2/MEAN_SIZE_3D/Reshape/shapePack4dense_features_2/MEAN_SIZE_3D/strided_slice:output:06dense_features_2/MEAN_SIZE_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
%dense_features_2/MEAN_SIZE_3D/ReshapeReshape1dense_features_2/MEAN_SIZE_3D/ExpandDims:output:04dense_features_2/MEAN_SIZE_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????u
*dense_features_2/QTN_REV_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&dense_features_2/QTN_REV_2D/ExpandDims
ExpandDimsdense_features_2/Cast_3:y:03dense_features_2/QTN_REV_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
!dense_features_2/QTN_REV_2D/ShapeShape/dense_features_2/QTN_REV_2D/ExpandDims:output:0*
T0*
_output_shapes
:y
/dense_features_2/QTN_REV_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_features_2/QTN_REV_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_features_2/QTN_REV_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_features_2/QTN_REV_2D/strided_sliceStridedSlice*dense_features_2/QTN_REV_2D/Shape:output:08dense_features_2/QTN_REV_2D/strided_slice/stack:output:0:dense_features_2/QTN_REV_2D/strided_slice/stack_1:output:0:dense_features_2/QTN_REV_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+dense_features_2/QTN_REV_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
)dense_features_2/QTN_REV_2D/Reshape/shapePack2dense_features_2/QTN_REV_2D/strided_slice:output:04dense_features_2/QTN_REV_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
#dense_features_2/QTN_REV_2D/ReshapeReshape/dense_features_2/QTN_REV_2D/ExpandDims:output:02dense_features_2/QTN_REV_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????u
*dense_features_2/QTN_REV_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&dense_features_2/QTN_REV_3D/ExpandDims
ExpandDimsdense_features_2/Cast_4:y:03dense_features_2/QTN_REV_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
!dense_features_2/QTN_REV_3D/ShapeShape/dense_features_2/QTN_REV_3D/ExpandDims:output:0*
T0*
_output_shapes
:y
/dense_features_2/QTN_REV_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_features_2/QTN_REV_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_features_2/QTN_REV_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_features_2/QTN_REV_3D/strided_sliceStridedSlice*dense_features_2/QTN_REV_3D/Shape:output:08dense_features_2/QTN_REV_3D/strided_slice/stack:output:0:dense_features_2/QTN_REV_3D/strided_slice/stack_1:output:0:dense_features_2/QTN_REV_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+dense_features_2/QTN_REV_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
)dense_features_2/QTN_REV_3D/Reshape/shapePack2dense_features_2/QTN_REV_3D/strided_slice:output:04dense_features_2/QTN_REV_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
#dense_features_2/QTN_REV_3D/ReshapeReshape/dense_features_2/QTN_REV_3D/ExpandDims:output:02dense_features_2/QTN_REV_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????y
.dense_features_2/QTY_DIMENSIONS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features_2/QTY_DIMENSIONS/ExpandDims
ExpandDimsdense_features_2/Cast_5:y:07dense_features_2/QTY_DIMENSIONS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
%dense_features_2/QTY_DIMENSIONS/ShapeShape3dense_features_2/QTY_DIMENSIONS/ExpandDims:output:0*
T0*
_output_shapes
:}
3dense_features_2/QTY_DIMENSIONS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features_2/QTY_DIMENSIONS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features_2/QTY_DIMENSIONS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features_2/QTY_DIMENSIONS/strided_sliceStridedSlice.dense_features_2/QTY_DIMENSIONS/Shape:output:0<dense_features_2/QTY_DIMENSIONS/strided_slice/stack:output:0>dense_features_2/QTY_DIMENSIONS/strided_slice/stack_1:output:0>dense_features_2/QTY_DIMENSIONS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features_2/QTY_DIMENSIONS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features_2/QTY_DIMENSIONS/Reshape/shapePack6dense_features_2/QTY_DIMENSIONS/strided_slice:output:08dense_features_2/QTY_DIMENSIONS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features_2/QTY_DIMENSIONS/ReshapeReshape3dense_features_2/QTY_DIMENSIONS/ExpandDims:output:06dense_features_2/QTY_DIMENSIONS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features_2/QTY_PART_LIST/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features_2/QTY_PART_LIST/ExpandDims
ExpandDimsdense_features_2/Cast_6:y:06dense_features_2/QTY_PART_LIST/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
$dense_features_2/QTY_PART_LIST/ShapeShape2dense_features_2/QTY_PART_LIST/ExpandDims:output:0*
T0*
_output_shapes
:|
2dense_features_2/QTY_PART_LIST/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features_2/QTY_PART_LIST/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features_2/QTY_PART_LIST/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features_2/QTY_PART_LIST/strided_sliceStridedSlice-dense_features_2/QTY_PART_LIST/Shape:output:0;dense_features_2/QTY_PART_LIST/strided_slice/stack:output:0=dense_features_2/QTY_PART_LIST/strided_slice/stack_1:output:0=dense_features_2/QTY_PART_LIST/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features_2/QTY_PART_LIST/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features_2/QTY_PART_LIST/Reshape/shapePack5dense_features_2/QTY_PART_LIST/strided_slice:output:07dense_features_2/QTY_PART_LIST/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features_2/QTY_PART_LIST/ReshapeReshape2dense_features_2/QTY_PART_LIST/ExpandDims:output:05dense_features_2/QTY_PART_LIST/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????u
*dense_features_2/QTY_SHEETS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&dense_features_2/QTY_SHEETS/ExpandDims
ExpandDimsdense_features_2/Cast_7:y:03dense_features_2/QTY_SHEETS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
!dense_features_2/QTY_SHEETS/ShapeShape/dense_features_2/QTY_SHEETS/ExpandDims:output:0*
T0*
_output_shapes
:y
/dense_features_2/QTY_SHEETS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_features_2/QTY_SHEETS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_features_2/QTY_SHEETS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_features_2/QTY_SHEETS/strided_sliceStridedSlice*dense_features_2/QTY_SHEETS/Shape:output:08dense_features_2/QTY_SHEETS/strided_slice/stack:output:0:dense_features_2/QTY_SHEETS/strided_slice/stack_1:output:0:dense_features_2/QTY_SHEETS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+dense_features_2/QTY_SHEETS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
)dense_features_2/QTY_SHEETS/Reshape/shapePack2dense_features_2/QTY_SHEETS/strided_slice:output:04dense_features_2/QTY_SHEETS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
#dense_features_2/QTY_SHEETS/ReshapeReshape/dense_features_2/QTY_SHEETS/ExpandDims:output:02dense_features_2/QTY_SHEETS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
4dense_features_2/QTY_TEXT_INFORMATION/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
0dense_features_2/QTY_TEXT_INFORMATION/ExpandDims
ExpandDimsdense_features_2/Cast_8:y:0=dense_features_2/QTY_TEXT_INFORMATION/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
+dense_features_2/QTY_TEXT_INFORMATION/ShapeShape9dense_features_2/QTY_TEXT_INFORMATION/ExpandDims:output:0*
T0*
_output_shapes
:?
9dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
;dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
;dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3dense_features_2/QTY_TEXT_INFORMATION/strided_sliceStridedSlice4dense_features_2/QTY_TEXT_INFORMATION/Shape:output:0Bdense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack:output:0Ddense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_1:output:0Ddense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5dense_features_2/QTY_TEXT_INFORMATION/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
3dense_features_2/QTY_TEXT_INFORMATION/Reshape/shapePack<dense_features_2/QTY_TEXT_INFORMATION/strided_slice:output:0>dense_features_2/QTY_TEXT_INFORMATION/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
-dense_features_2/QTY_TEXT_INFORMATION/ReshapeReshape9dense_features_2/QTY_TEXT_INFORMATION/ExpandDims:output:0<dense_features_2/QTY_TEXT_INFORMATION/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)dense_features_2/QTY_VIEWS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%dense_features_2/QTY_VIEWS/ExpandDims
ExpandDimsdense_features_2/Cast_9:y:02dense_features_2/QTY_VIEWS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
 dense_features_2/QTY_VIEWS/ShapeShape.dense_features_2/QTY_VIEWS/ExpandDims:output:0*
T0*
_output_shapes
:x
.dense_features_2/QTY_VIEWS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features_2/QTY_VIEWS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features_2/QTY_VIEWS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(dense_features_2/QTY_VIEWS/strided_sliceStridedSlice)dense_features_2/QTY_VIEWS/Shape:output:07dense_features_2/QTY_VIEWS/strided_slice/stack:output:09dense_features_2/QTY_VIEWS/strided_slice/stack_1:output:09dense_features_2/QTY_VIEWS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features_2/QTY_VIEWS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
(dense_features_2/QTY_VIEWS/Reshape/shapePack1dense_features_2/QTY_VIEWS/strided_slice:output:03dense_features_2/QTY_VIEWS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
"dense_features_2/QTY_VIEWS/ReshapeReshape.dense_features_2/QTY_VIEWS/ExpandDims:output:01dense_features_2/QTY_VIEWS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
dense_features_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features_2/concatConcatV22dense_features_2/ATP_2D_embedding/Reshape:output:0;dense_features_2/DRAWING_CODE_2D_embedding/Reshape:output:0+dense_features_2/LEAD_TIME/Reshape:output:0.dense_features_2/MEAN_SIZE_2D/Reshape:output:0.dense_features_2/MEAN_SIZE_3D/Reshape:output:0,dense_features_2/QTN_REV_2D/Reshape:output:0,dense_features_2/QTN_REV_3D/Reshape:output:00dense_features_2/QTY_DIMENSIONS/Reshape:output:0/dense_features_2/QTY_PART_LIST/Reshape:output:0,dense_features_2/QTY_SHEETS/Reshape:output:06dense_features_2/QTY_TEXT_INFORMATION/Reshape:output:0+dense_features_2/QTY_VIEWS/Reshape:output:0%dense_features_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:??????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_4/MatMulMatMul dense_features_2/concat:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
dropout_4/IdentityIdentitydense_4/Relu:activations:0*
T0*'
_output_shapes
:??????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_5/MatMulMatMuldropout_4/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
dropout_5/IdentityIdentitydense_5/Relu:activations:0*
T0*'
_output_shapes
:??????????
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_6/MatMulMatMuldropout_5/Identity:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
dropout_6/IdentityIdentitydense_6/Relu:activations:0*
T0*'
_output_shapes
:??????????
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_7/MatMulMatMuldropout_6/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
dropout_7/IdentityIdentitydense_7/Relu:activations:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitydropout_7/Identity:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp@^dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV21^dense_features_2/ATP_2D_embedding/ReadVariableOpI^dense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2:^dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2?
?dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2?dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV22d
0dense_features_2/ATP_2D_embedding/ReadVariableOp0dense_features_2/ATP_2D_embedding/ReadVariableOp2?
Hdense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2Hdense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV22v
9dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp9dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp:R N
#
_output_shapes
:?????????
'
_user_specified_nameinputs/ATP_2D:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/DRAWING_CODE_2D:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/LEAD_TIME:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/MEAN_SIZE_2D:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/MEAN_SIZE_3D:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTN_REV_2D:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTN_REV_3D:ZV
#
_output_shapes
:?????????
/
_user_specified_nameinputs/QTY_DIMENSIONS:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/QTY_PART_LIST:V	R
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTY_SHEETS:`
\
#
_output_shapes
:?????????
5
_user_specified_nameinputs/QTY_TEXT_INFORMATION:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?
?
.__inference_sequential_1_layer_call_fn_8404512

atp_2d
drawing_code_2d
	lead_time
mean_size_2d
mean_size_3d

qtn_rev_2d

qtn_rev_3d
qty_dimensions
qty_part_list

qty_sheets
qty_text_information
	qty_views
unknown
	unknown_0	
	unknown_1:8
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallatp_2ddrawing_code_2d	lead_timemean_size_2dmean_size_3d
qtn_rev_2d
qtn_rev_3dqty_dimensionsqty_part_list
qty_sheetsqty_text_information	qty_viewsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*%
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_8404481o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameATP_2D:TP
#
_output_shapes
:?????????
)
_user_specified_nameDRAWING_CODE_2D:NJ
#
_output_shapes
:?????????
#
_user_specified_name	LEAD_TIME:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_2D:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_3D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_2D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_3D:SO
#
_output_shapes
:?????????
(
_user_specified_nameQTY_DIMENSIONS:RN
#
_output_shapes
:?????????
'
_user_specified_nameQTY_PART_LIST:O	K
#
_output_shapes
:?????????
$
_user_specified_name
QTY_SHEETS:Y
U
#
_output_shapes
:?????????
.
_user_specified_nameQTY_TEXT_INFORMATION:NJ
#
_output_shapes
:?????????
#
_user_specified_name	QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?C
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405097

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
dense_features_2_8405059
dense_features_2_8405061	*
dense_features_2_8405063:8
dense_features_2_8405065
dense_features_2_8405067	*
dense_features_2_8405069:!
dense_4_8405072:
dense_4_8405074:!
dense_5_8405078:
dense_5_8405080:!
dense_6_8405084:
dense_6_8405086:!
dense_7_8405090:
dense_7_8405092:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?(dense_features_2/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCalld
dense_features_2/CastCastinputs_2*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_1Castinputs_3*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_2Castinputs_4*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_3Castinputs_5*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_4Castinputs_6*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_5Castinputs_7*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_6Castinputs_8*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_7Castinputs_9*

DstT0*

SrcT0*#
_output_shapes
:?????????g
dense_features_2/Cast_8Cast	inputs_10*

DstT0*

SrcT0*#
_output_shapes
:?????????g
dense_features_2/Cast_9Cast	inputs_11*

DstT0*

SrcT0*#
_output_shapes
:??????????
(dense_features_2/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1dense_features_2/Cast:y:0dense_features_2/Cast_1:y:0dense_features_2/Cast_2:y:0dense_features_2/Cast_3:y:0dense_features_2/Cast_4:y:0dense_features_2/Cast_5:y:0dense_features_2/Cast_6:y:0dense_features_2/Cast_7:y:0dense_features_2/Cast_8:y:0dense_features_2/Cast_9:y:0dense_features_2_8405059dense_features_2_8405061dense_features_2_8405063dense_features_2_8405065dense_features_2_8405067dense_features_2_8405069*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8404963?
dense_4/StatefulPartitionedCallStatefulPartitionedCall1dense_features_2/StatefulPartitionedCall:output:0dense_4_8405072dense_4_8405074*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_8404395?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_8404631?
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_5_8405078dense_5_8405080*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_8404419?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_8404598?
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_6_8405084dense_6_8405086*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_8404443?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_8404565?
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_7_8405090dense_7_8405092*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_8404467?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_8404532y
IdentityIdentity*dropout_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall)^dense_features_2/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2T
(dense_features_2/StatefulPartitionedCall(dense_features_2/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K	G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K
G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
.
__inference__destroyer_8406918
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
G
+__inference_dropout_4_layer_call_fn_8406737

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_8404406`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_5_layer_call_and_return_conditional_losses_8406794

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
.
__inference__destroyer_8406936
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
)__inference_dense_4_layer_call_fn_8406721

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_8404395o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_5_layer_call_fn_8406784

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_8404430`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
 __inference__initializer_84069314
0table_init91943_lookuptableimportv2_table_handle,
(table_init91943_lookuptableimportv2_keys.
*table_init91943_lookuptableimportv2_values	
identity??#table_init91943/LookupTableImportV2?
#table_init91943/LookupTableImportV2LookupTableImportV20table_init91943_lookuptableimportv2_table_handle(table_init91943_lookuptableimportv2_keys*table_init91943_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: l
NoOpNoOp$^table_init91943/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2J
#table_init91943/LookupTableImportV2#table_init91943/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
d
+__inference_dropout_5_layer_call_fn_8406789

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_8404598o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_5_layer_call_and_return_conditional_losses_8406779

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_5_layer_call_and_return_conditional_losses_8404598

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?[
?
 __inference__traced_save_8407113
file_prefix_
[savev2_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights_read_readvariableoph
dsavev2_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights_read_readvariableop:
6savev2_sequential_1_dense_4_kernel_read_readvariableop8
4savev2_sequential_1_dense_4_bias_read_readvariableop:
6savev2_sequential_1_dense_5_kernel_read_readvariableop8
4savev2_sequential_1_dense_5_bias_read_readvariableop:
6savev2_sequential_1_dense_6_kernel_read_readvariableop8
4savev2_sequential_1_dense_6_bias_read_readvariableop:
6savev2_sequential_1_dense_7_kernel_read_readvariableop8
4savev2_sequential_1_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopf
bsavev2_adam_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights_m_read_readvariableopo
ksavev2_adam_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights_m_read_readvariableopA
=savev2_adam_sequential_1_dense_4_kernel_m_read_readvariableop?
;savev2_adam_sequential_1_dense_4_bias_m_read_readvariableopA
=savev2_adam_sequential_1_dense_5_kernel_m_read_readvariableop?
;savev2_adam_sequential_1_dense_5_bias_m_read_readvariableopA
=savev2_adam_sequential_1_dense_6_kernel_m_read_readvariableop?
;savev2_adam_sequential_1_dense_6_bias_m_read_readvariableopA
=savev2_adam_sequential_1_dense_7_kernel_m_read_readvariableop?
;savev2_adam_sequential_1_dense_7_bias_m_read_readvariableopf
bsavev2_adam_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights_v_read_readvariableopo
ksavev2_adam_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights_v_read_readvariableopA
=savev2_adam_sequential_1_dense_4_kernel_v_read_readvariableop?
;savev2_adam_sequential_1_dense_4_bias_v_read_readvariableopA
=savev2_adam_sequential_1_dense_5_kernel_v_read_readvariableop?
;savev2_adam_sequential_1_dense_5_bias_v_read_readvariableopA
=savev2_adam_sequential_1_dense_6_kernel_v_read_readvariableop?
;savev2_adam_sequential_1_dense_6_bias_v_read_readvariableopA
=savev2_adam_sequential_1_dense_7_kernel_v_read_readvariableop?
;savev2_adam_sequential_1_dense_7_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(BSlayer_with_weights-0/ATP_2D_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/DRAWING_CODE_2D_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-0/ATP_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBxlayer_with_weights-0/DRAWING_CODE_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-0/ATP_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBxlayer_with_weights-0/DRAWING_CODE_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0[savev2_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights_read_readvariableopdsavev2_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights_read_readvariableop6savev2_sequential_1_dense_4_kernel_read_readvariableop4savev2_sequential_1_dense_4_bias_read_readvariableop6savev2_sequential_1_dense_5_kernel_read_readvariableop4savev2_sequential_1_dense_5_bias_read_readvariableop6savev2_sequential_1_dense_6_kernel_read_readvariableop4savev2_sequential_1_dense_6_bias_read_readvariableop6savev2_sequential_1_dense_7_kernel_read_readvariableop4savev2_sequential_1_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopbsavev2_adam_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights_m_read_readvariableopksavev2_adam_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights_m_read_readvariableop=savev2_adam_sequential_1_dense_4_kernel_m_read_readvariableop;savev2_adam_sequential_1_dense_4_bias_m_read_readvariableop=savev2_adam_sequential_1_dense_5_kernel_m_read_readvariableop;savev2_adam_sequential_1_dense_5_bias_m_read_readvariableop=savev2_adam_sequential_1_dense_6_kernel_m_read_readvariableop;savev2_adam_sequential_1_dense_6_bias_m_read_readvariableop=savev2_adam_sequential_1_dense_7_kernel_m_read_readvariableop;savev2_adam_sequential_1_dense_7_bias_m_read_readvariableopbsavev2_adam_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights_v_read_readvariableopksavev2_adam_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights_v_read_readvariableop=savev2_adam_sequential_1_dense_4_kernel_v_read_readvariableop;savev2_adam_sequential_1_dense_4_bias_v_read_readvariableop=savev2_adam_sequential_1_dense_5_kernel_v_read_readvariableop;savev2_adam_sequential_1_dense_5_bias_v_read_readvariableop=savev2_adam_sequential_1_dense_6_kernel_v_read_readvariableop;savev2_adam_sequential_1_dense_6_bias_v_read_readvariableop=savev2_adam_sequential_1_dense_7_kernel_v_read_readvariableop;savev2_adam_sequential_1_dense_7_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :8:::::::::: : : : : : : : : :8::::::::::8:::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:8:$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :$ 

_output_shapes

:8:$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:8:$ 

_output_shapes

::$  

_output_shapes

:: !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::$& 

_output_shapes

:: '

_output_shapes
::(

_output_shapes
: 
?
d
F__inference_dropout_4_layer_call_and_return_conditional_losses_8404406

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405234

atp_2d
drawing_code_2d
	lead_time
mean_size_2d
mean_size_3d

qtn_rev_2d

qtn_rev_3d
qty_dimensions
qty_part_list

qty_sheets
qty_text_information
	qty_views
dense_features_2_8405196
dense_features_2_8405198	*
dense_features_2_8405200:8
dense_features_2_8405202
dense_features_2_8405204	*
dense_features_2_8405206:!
dense_4_8405209:
dense_4_8405211:!
dense_5_8405215:
dense_5_8405217:!
dense_6_8405221:
dense_6_8405223:!
dense_7_8405227:
dense_7_8405229:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?(dense_features_2/StatefulPartitionedCalle
dense_features_2/CastCast	lead_time*

DstT0*

SrcT0*#
_output_shapes
:?????????j
dense_features_2/Cast_1Castmean_size_2d*

DstT0*

SrcT0*#
_output_shapes
:?????????j
dense_features_2/Cast_2Castmean_size_3d*

DstT0*

SrcT0*#
_output_shapes
:?????????h
dense_features_2/Cast_3Cast
qtn_rev_2d*

DstT0*

SrcT0*#
_output_shapes
:?????????h
dense_features_2/Cast_4Cast
qtn_rev_3d*

DstT0*

SrcT0*#
_output_shapes
:?????????l
dense_features_2/Cast_5Castqty_dimensions*

DstT0*

SrcT0*#
_output_shapes
:?????????k
dense_features_2/Cast_6Castqty_part_list*

DstT0*

SrcT0*#
_output_shapes
:?????????h
dense_features_2/Cast_7Cast
qty_sheets*

DstT0*

SrcT0*#
_output_shapes
:?????????r
dense_features_2/Cast_8Castqty_text_information*

DstT0*

SrcT0*#
_output_shapes
:?????????g
dense_features_2/Cast_9Cast	qty_views*

DstT0*

SrcT0*#
_output_shapes
:??????????
(dense_features_2/StatefulPartitionedCallStatefulPartitionedCallatp_2ddrawing_code_2ddense_features_2/Cast:y:0dense_features_2/Cast_1:y:0dense_features_2/Cast_2:y:0dense_features_2/Cast_3:y:0dense_features_2/Cast_4:y:0dense_features_2/Cast_5:y:0dense_features_2/Cast_6:y:0dense_features_2/Cast_7:y:0dense_features_2/Cast_8:y:0dense_features_2/Cast_9:y:0dense_features_2_8405196dense_features_2_8405198dense_features_2_8405200dense_features_2_8405202dense_features_2_8405204dense_features_2_8405206*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8404370?
dense_4/StatefulPartitionedCallStatefulPartitionedCall1dense_features_2/StatefulPartitionedCall:output:0dense_4_8405209dense_4_8405211*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_8404395?
dropout_4/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_8404406?
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_5_8405215dense_5_8405217*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_8404419?
dropout_5/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_8404430?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_6_8405221dense_6_8405223*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_8404443?
dropout_6/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_8404454?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_7_8405227dense_7_8405229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_8404467?
dropout_7/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_8404478q
IdentityIdentity"dropout_7/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall)^dense_features_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2T
(dense_features_2/StatefulPartitionedCall(dense_features_2/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameATP_2D:TP
#
_output_shapes
:?????????
)
_user_specified_nameDRAWING_CODE_2D:NJ
#
_output_shapes
:?????????
#
_user_specified_name	LEAD_TIME:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_2D:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_3D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_2D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_3D:SO
#
_output_shapes
:?????????
(
_user_specified_nameQTY_DIMENSIONS:RN
#
_output_shapes
:?????????
'
_user_specified_nameQTY_PART_LIST:O	K
#
_output_shapes
:?????????
$
_user_specified_name
QTY_SHEETS:Y
U
#
_output_shapes
:?????????
.
_user_specified_nameQTY_TEXT_INFORMATION:NJ
#
_output_shapes
:?????????
#
_user_specified_name	QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
??
?
"__inference__wrapped_model_8404054

atp_2d
drawing_code_2d
	lead_time
mean_size_2d
mean_size_3d

qtn_rev_2d

qtn_rev_3d
qty_dimensions
qty_part_list

qty_sheets
qty_text_information
	qty_views]
Ysequential_1_dense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_table_handle^
Zsequential_1_dense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_default_value	X
Fsequential_1_dense_features_2_atp_2d_embedding_readvariableop_resource:8f
bsequential_1_dense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handleg
csequential_1_dense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value	a
Osequential_1_dense_features_2_drawing_code_2d_embedding_readvariableop_resource:E
3sequential_1_dense_4_matmul_readvariableop_resource:B
4sequential_1_dense_4_biasadd_readvariableop_resource:E
3sequential_1_dense_5_matmul_readvariableop_resource:B
4sequential_1_dense_5_biasadd_readvariableop_resource:E
3sequential_1_dense_6_matmul_readvariableop_resource:B
4sequential_1_dense_6_biasadd_readvariableop_resource:E
3sequential_1_dense_7_matmul_readvariableop_resource:B
4sequential_1_dense_7_biasadd_readvariableop_resource:
identity??+sequential_1/dense_4/BiasAdd/ReadVariableOp?*sequential_1/dense_4/MatMul/ReadVariableOp?+sequential_1/dense_5/BiasAdd/ReadVariableOp?*sequential_1/dense_5/MatMul/ReadVariableOp?+sequential_1/dense_6/BiasAdd/ReadVariableOp?*sequential_1/dense_6/MatMul/ReadVariableOp?+sequential_1/dense_7/BiasAdd/ReadVariableOp?*sequential_1/dense_7/MatMul/ReadVariableOp?Lsequential_1/dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2?=sequential_1/dense_features_2/ATP_2D_embedding/ReadVariableOp?Usequential_1/dense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2?Fsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOpr
"sequential_1/dense_features_2/CastCast	lead_time*

DstT0*

SrcT0*#
_output_shapes
:?????????w
$sequential_1/dense_features_2/Cast_1Castmean_size_2d*

DstT0*

SrcT0*#
_output_shapes
:?????????w
$sequential_1/dense_features_2/Cast_2Castmean_size_3d*

DstT0*

SrcT0*#
_output_shapes
:?????????u
$sequential_1/dense_features_2/Cast_3Cast
qtn_rev_2d*

DstT0*

SrcT0*#
_output_shapes
:?????????u
$sequential_1/dense_features_2/Cast_4Cast
qtn_rev_3d*

DstT0*

SrcT0*#
_output_shapes
:?????????y
$sequential_1/dense_features_2/Cast_5Castqty_dimensions*

DstT0*

SrcT0*#
_output_shapes
:?????????x
$sequential_1/dense_features_2/Cast_6Castqty_part_list*

DstT0*

SrcT0*#
_output_shapes
:?????????u
$sequential_1/dense_features_2/Cast_7Cast
qty_sheets*

DstT0*

SrcT0*#
_output_shapes
:?????????
$sequential_1/dense_features_2/Cast_8Castqty_text_information*

DstT0*

SrcT0*#
_output_shapes
:?????????t
$sequential_1/dense_features_2/Cast_9Cast	qty_views*

DstT0*

SrcT0*#
_output_shapes
:??????????
=sequential_1/dense_features_2/ATP_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
9sequential_1/dense_features_2/ATP_2D_embedding/ExpandDims
ExpandDimsatp_2dFsequential_1/dense_features_2/ATP_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Msequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Gsequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/NotEqualNotEqualBsequential_1/dense_features_2/ATP_2D_embedding/ExpandDims:output:0Vsequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Fsequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/indicesWhereKsequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Esequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/valuesGatherNdBsequential_1/dense_features_2/ATP_2D_embedding/ExpandDims:output:0Nsequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Jsequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/dense_shapeShapeBsequential_1/dense_features_2/ATP_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Lsequential_1/dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ysequential_1_dense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_table_handleNsequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/values:output:0Zsequential_1_dense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
=sequential_1/dense_features_2/ATP_2D_embedding/ReadVariableOpReadVariableOpFsequential_1_dense_features_2_atp_2d_embedding_readvariableop_resource*
_output_shapes

:8*
dtype0?
Ssequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Rsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Msequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SliceSliceSsequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0\sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/begin:output:0[sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
Msequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Lsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ProdProdVsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice:output:0Vsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
Xsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Usequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Psequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2GatherV2Ssequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0asequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indices:output:0^sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
Nsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast/xPackUsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Prod:output:0Ysequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Usequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshapeSparseReshapeNsequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/indices:index:0Ssequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0Wsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
^sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/IdentityIdentityUsequential_1/dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Vsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Tsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqualGreaterEqualgsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0_sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
Msequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/WhereWhereXsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Usequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Osequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ReshapeReshapeUsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Where:index:0^sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
Wsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Rsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1GatherV2fsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_indices:0Xsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0`sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
Wsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Rsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2GatherV2gsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0Xsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0`sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Psequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/IdentityIdentitydsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
asequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
osequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows[sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1:output:0[sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2:output:0Ysequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Identity:output:0jsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
ssequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
usequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
usequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
msequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice?sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0|sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0~sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0~sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
fsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/UniqueUniquesequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
usequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*P
_classF
DBloc:@sequential_1/dense_features_2/ATP_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
psequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Esequential_1/dense_features_2/ATP_2D_embedding/ReadVariableOp:value:0jsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0~sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*P
_classF
DBloc:@sequential_1/dense_features_2/ATP_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
ysequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityysequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
_sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMean?sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0lsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0vsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
Wsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Qsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1Reshape?sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0`sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
Msequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ShapeShapehsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
[sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
]sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
]sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Usequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_sliceStridedSliceVsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Shape:output:0dsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack:output:0fsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1:output:0fsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Osequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
Msequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stackPackXsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stack/0:output:0^sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
Lsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/TileTileZsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1:output:0Vsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
Rsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like	ZerosLikehsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
Gsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weightsSelectUsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Tile:output:0Vsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like:y:0hsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
Nsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1CastSsequential_1/dense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Usequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Tsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Osequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1SliceRsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1:y:0^sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/begin:output:0]sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
Osequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1ShapePsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
Usequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Tsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Osequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2SliceXsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1:output:0^sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/begin:output:0]sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Ssequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concatConcatV2Xsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1:output:0Xsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2:output:0\sequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Qsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2ReshapePsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights:output:0Wsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
4sequential_1/dense_features_2/ATP_2D_embedding/ShapeShapeZsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:?
Bsequential_1/dense_features_2/ATP_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dsequential_1/dense_features_2/ATP_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dsequential_1/dense_features_2/ATP_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential_1/dense_features_2/ATP_2D_embedding/strided_sliceStridedSlice=sequential_1/dense_features_2/ATP_2D_embedding/Shape:output:0Ksequential_1/dense_features_2/ATP_2D_embedding/strided_slice/stack:output:0Msequential_1/dense_features_2/ATP_2D_embedding/strided_slice/stack_1:output:0Msequential_1/dense_features_2/ATP_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
>sequential_1/dense_features_2/ATP_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
<sequential_1/dense_features_2/ATP_2D_embedding/Reshape/shapePackEsequential_1/dense_features_2/ATP_2D_embedding/strided_slice:output:0Gsequential_1/dense_features_2/ATP_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
6sequential_1/dense_features_2/ATP_2D_embedding/ReshapeReshapeZsequential_1/dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0Esequential_1/dense_features_2/ATP_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
Fsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims
ExpandDimsdrawing_code_2dOsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Vsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Psequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/NotEqualNotEqualKsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims:output:0_sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Osequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/indicesWhereTsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Nsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/valuesGatherNdKsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims:output:0Wsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Ssequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shapeShapeKsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Usequential_1/dense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2bsequential_1_dense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handleWsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/values:output:0csequential_1_dense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Fsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOpReadVariableOpOsequential_1_dense_features_2_drawing_code_2d_embedding_readvariableop_resource*
_output_shapes

:*
dtype0?
esequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
dsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
_sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SliceSlice\sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0nsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/begin:output:0msequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
_sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ProdProdhsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice:output:0hsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
jsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
gsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
bsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2GatherV2\sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0ssequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indices:output:0psequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
`sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/xPackgsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Prod:output:0ksequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
gsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshapeSparseReshapeWsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0\sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0isequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
psequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/IdentityIdentity^sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
hsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
fsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqualGreaterEqualysequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0qsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
_sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/WhereWherejsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
gsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
asequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ReshapeReshapegsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Where:index:0psequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
isequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1GatherV2xsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_indices:0jsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0rsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
isequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2GatherV2ysequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0jsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0rsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
bsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/IdentityIdentityvsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
ssequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsmsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1:output:0msequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2:output:0ksequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Identity:output:0|sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
xsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/UniqueUnique?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*Y
_classO
MKloc:@sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Nsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp:value:0|sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*Y
_classO
MKloc:@sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
qsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMean?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0~sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
isequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
csequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1Reshape?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0rsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
_sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ShapeShapezsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
msequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
osequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
osequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
gsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_sliceStridedSlicehsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape:output:0vsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack:output:0xsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1:output:0xsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
asequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
_sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stackPackjsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0:output:0psequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
^sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/TileTilelsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1:output:0hsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
dsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like	ZerosLikezsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
Ysequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weightsSelectgsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Tile:output:0hsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like:y:0zsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
`sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1Cast\sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
gsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
fsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
asequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1Slicedsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1:y:0psequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/begin:output:0osequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
asequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1Shapebsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
gsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
fsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
asequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2Slicejsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1:output:0psequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/begin:output:0osequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
esequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
`sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concatConcatV2jsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1:output:0jsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2:output:0nsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
csequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2Reshapebsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0isequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
=sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ShapeShapelsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:?
Ksequential_1/dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Msequential_1/dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Msequential_1/dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Esequential_1/dense_features_2/DRAWING_CODE_2D_embedding/strided_sliceStridedSliceFsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/Shape:output:0Tsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack:output:0Vsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_1:output:0Vsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Gsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Esequential_1/dense_features_2/DRAWING_CODE_2D_embedding/Reshape/shapePackNsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/strided_slice:output:0Psequential_1/dense_features_2/DRAWING_CODE_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
?sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ReshapeReshapelsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:0Nsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
6sequential_1/dense_features_2/LEAD_TIME/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2sequential_1/dense_features_2/LEAD_TIME/ExpandDims
ExpandDims&sequential_1/dense_features_2/Cast:y:0?sequential_1/dense_features_2/LEAD_TIME/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
-sequential_1/dense_features_2/LEAD_TIME/ShapeShape;sequential_1/dense_features_2/LEAD_TIME/ExpandDims:output:0*
T0*
_output_shapes
:?
;sequential_1/dense_features_2/LEAD_TIME/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=sequential_1/dense_features_2/LEAD_TIME/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential_1/dense_features_2/LEAD_TIME/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5sequential_1/dense_features_2/LEAD_TIME/strided_sliceStridedSlice6sequential_1/dense_features_2/LEAD_TIME/Shape:output:0Dsequential_1/dense_features_2/LEAD_TIME/strided_slice/stack:output:0Fsequential_1/dense_features_2/LEAD_TIME/strided_slice/stack_1:output:0Fsequential_1/dense_features_2/LEAD_TIME/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7sequential_1/dense_features_2/LEAD_TIME/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
5sequential_1/dense_features_2/LEAD_TIME/Reshape/shapePack>sequential_1/dense_features_2/LEAD_TIME/strided_slice:output:0@sequential_1/dense_features_2/LEAD_TIME/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
/sequential_1/dense_features_2/LEAD_TIME/ReshapeReshape;sequential_1/dense_features_2/LEAD_TIME/ExpandDims:output:0>sequential_1/dense_features_2/LEAD_TIME/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
9sequential_1/dense_features_2/MEAN_SIZE_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5sequential_1/dense_features_2/MEAN_SIZE_2D/ExpandDims
ExpandDims(sequential_1/dense_features_2/Cast_1:y:0Bsequential_1/dense_features_2/MEAN_SIZE_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
0sequential_1/dense_features_2/MEAN_SIZE_2D/ShapeShape>sequential_1/dense_features_2/MEAN_SIZE_2D/ExpandDims:output:0*
T0*
_output_shapes
:?
>sequential_1/dense_features_2/MEAN_SIZE_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential_1/dense_features_2/MEAN_SIZE_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential_1/dense_features_2/MEAN_SIZE_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_1/dense_features_2/MEAN_SIZE_2D/strided_sliceStridedSlice9sequential_1/dense_features_2/MEAN_SIZE_2D/Shape:output:0Gsequential_1/dense_features_2/MEAN_SIZE_2D/strided_slice/stack:output:0Isequential_1/dense_features_2/MEAN_SIZE_2D/strided_slice/stack_1:output:0Isequential_1/dense_features_2/MEAN_SIZE_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:sequential_1/dense_features_2/MEAN_SIZE_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
8sequential_1/dense_features_2/MEAN_SIZE_2D/Reshape/shapePackAsequential_1/dense_features_2/MEAN_SIZE_2D/strided_slice:output:0Csequential_1/dense_features_2/MEAN_SIZE_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
2sequential_1/dense_features_2/MEAN_SIZE_2D/ReshapeReshape>sequential_1/dense_features_2/MEAN_SIZE_2D/ExpandDims:output:0Asequential_1/dense_features_2/MEAN_SIZE_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
9sequential_1/dense_features_2/MEAN_SIZE_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5sequential_1/dense_features_2/MEAN_SIZE_3D/ExpandDims
ExpandDims(sequential_1/dense_features_2/Cast_2:y:0Bsequential_1/dense_features_2/MEAN_SIZE_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
0sequential_1/dense_features_2/MEAN_SIZE_3D/ShapeShape>sequential_1/dense_features_2/MEAN_SIZE_3D/ExpandDims:output:0*
T0*
_output_shapes
:?
>sequential_1/dense_features_2/MEAN_SIZE_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential_1/dense_features_2/MEAN_SIZE_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential_1/dense_features_2/MEAN_SIZE_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_1/dense_features_2/MEAN_SIZE_3D/strided_sliceStridedSlice9sequential_1/dense_features_2/MEAN_SIZE_3D/Shape:output:0Gsequential_1/dense_features_2/MEAN_SIZE_3D/strided_slice/stack:output:0Isequential_1/dense_features_2/MEAN_SIZE_3D/strided_slice/stack_1:output:0Isequential_1/dense_features_2/MEAN_SIZE_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:sequential_1/dense_features_2/MEAN_SIZE_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
8sequential_1/dense_features_2/MEAN_SIZE_3D/Reshape/shapePackAsequential_1/dense_features_2/MEAN_SIZE_3D/strided_slice:output:0Csequential_1/dense_features_2/MEAN_SIZE_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
2sequential_1/dense_features_2/MEAN_SIZE_3D/ReshapeReshape>sequential_1/dense_features_2/MEAN_SIZE_3D/ExpandDims:output:0Asequential_1/dense_features_2/MEAN_SIZE_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
7sequential_1/dense_features_2/QTN_REV_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
3sequential_1/dense_features_2/QTN_REV_2D/ExpandDims
ExpandDims(sequential_1/dense_features_2/Cast_3:y:0@sequential_1/dense_features_2/QTN_REV_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
.sequential_1/dense_features_2/QTN_REV_2D/ShapeShape<sequential_1/dense_features_2/QTN_REV_2D/ExpandDims:output:0*
T0*
_output_shapes
:?
<sequential_1/dense_features_2/QTN_REV_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential_1/dense_features_2/QTN_REV_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential_1/dense_features_2/QTN_REV_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_1/dense_features_2/QTN_REV_2D/strided_sliceStridedSlice7sequential_1/dense_features_2/QTN_REV_2D/Shape:output:0Esequential_1/dense_features_2/QTN_REV_2D/strided_slice/stack:output:0Gsequential_1/dense_features_2/QTN_REV_2D/strided_slice/stack_1:output:0Gsequential_1/dense_features_2/QTN_REV_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8sequential_1/dense_features_2/QTN_REV_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
6sequential_1/dense_features_2/QTN_REV_2D/Reshape/shapePack?sequential_1/dense_features_2/QTN_REV_2D/strided_slice:output:0Asequential_1/dense_features_2/QTN_REV_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
0sequential_1/dense_features_2/QTN_REV_2D/ReshapeReshape<sequential_1/dense_features_2/QTN_REV_2D/ExpandDims:output:0?sequential_1/dense_features_2/QTN_REV_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
7sequential_1/dense_features_2/QTN_REV_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
3sequential_1/dense_features_2/QTN_REV_3D/ExpandDims
ExpandDims(sequential_1/dense_features_2/Cast_4:y:0@sequential_1/dense_features_2/QTN_REV_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
.sequential_1/dense_features_2/QTN_REV_3D/ShapeShape<sequential_1/dense_features_2/QTN_REV_3D/ExpandDims:output:0*
T0*
_output_shapes
:?
<sequential_1/dense_features_2/QTN_REV_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential_1/dense_features_2/QTN_REV_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential_1/dense_features_2/QTN_REV_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_1/dense_features_2/QTN_REV_3D/strided_sliceStridedSlice7sequential_1/dense_features_2/QTN_REV_3D/Shape:output:0Esequential_1/dense_features_2/QTN_REV_3D/strided_slice/stack:output:0Gsequential_1/dense_features_2/QTN_REV_3D/strided_slice/stack_1:output:0Gsequential_1/dense_features_2/QTN_REV_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8sequential_1/dense_features_2/QTN_REV_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
6sequential_1/dense_features_2/QTN_REV_3D/Reshape/shapePack?sequential_1/dense_features_2/QTN_REV_3D/strided_slice:output:0Asequential_1/dense_features_2/QTN_REV_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
0sequential_1/dense_features_2/QTN_REV_3D/ReshapeReshape<sequential_1/dense_features_2/QTN_REV_3D/ExpandDims:output:0?sequential_1/dense_features_2/QTN_REV_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
;sequential_1/dense_features_2/QTY_DIMENSIONS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
7sequential_1/dense_features_2/QTY_DIMENSIONS/ExpandDims
ExpandDims(sequential_1/dense_features_2/Cast_5:y:0Dsequential_1/dense_features_2/QTY_DIMENSIONS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
2sequential_1/dense_features_2/QTY_DIMENSIONS/ShapeShape@sequential_1/dense_features_2/QTY_DIMENSIONS/ExpandDims:output:0*
T0*
_output_shapes
:?
@sequential_1/dense_features_2/QTY_DIMENSIONS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Bsequential_1/dense_features_2/QTY_DIMENSIONS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Bsequential_1/dense_features_2/QTY_DIMENSIONS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:sequential_1/dense_features_2/QTY_DIMENSIONS/strided_sliceStridedSlice;sequential_1/dense_features_2/QTY_DIMENSIONS/Shape:output:0Isequential_1/dense_features_2/QTY_DIMENSIONS/strided_slice/stack:output:0Ksequential_1/dense_features_2/QTY_DIMENSIONS/strided_slice/stack_1:output:0Ksequential_1/dense_features_2/QTY_DIMENSIONS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
<sequential_1/dense_features_2/QTY_DIMENSIONS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
:sequential_1/dense_features_2/QTY_DIMENSIONS/Reshape/shapePackCsequential_1/dense_features_2/QTY_DIMENSIONS/strided_slice:output:0Esequential_1/dense_features_2/QTY_DIMENSIONS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
4sequential_1/dense_features_2/QTY_DIMENSIONS/ReshapeReshape@sequential_1/dense_features_2/QTY_DIMENSIONS/ExpandDims:output:0Csequential_1/dense_features_2/QTY_DIMENSIONS/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
:sequential_1/dense_features_2/QTY_PART_LIST/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6sequential_1/dense_features_2/QTY_PART_LIST/ExpandDims
ExpandDims(sequential_1/dense_features_2/Cast_6:y:0Csequential_1/dense_features_2/QTY_PART_LIST/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
1sequential_1/dense_features_2/QTY_PART_LIST/ShapeShape?sequential_1/dense_features_2/QTY_PART_LIST/ExpandDims:output:0*
T0*
_output_shapes
:?
?sequential_1/dense_features_2/QTY_PART_LIST/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Asequential_1/dense_features_2/QTY_PART_LIST/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Asequential_1/dense_features_2/QTY_PART_LIST/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9sequential_1/dense_features_2/QTY_PART_LIST/strided_sliceStridedSlice:sequential_1/dense_features_2/QTY_PART_LIST/Shape:output:0Hsequential_1/dense_features_2/QTY_PART_LIST/strided_slice/stack:output:0Jsequential_1/dense_features_2/QTY_PART_LIST/strided_slice/stack_1:output:0Jsequential_1/dense_features_2/QTY_PART_LIST/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential_1/dense_features_2/QTY_PART_LIST/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
9sequential_1/dense_features_2/QTY_PART_LIST/Reshape/shapePackBsequential_1/dense_features_2/QTY_PART_LIST/strided_slice:output:0Dsequential_1/dense_features_2/QTY_PART_LIST/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
3sequential_1/dense_features_2/QTY_PART_LIST/ReshapeReshape?sequential_1/dense_features_2/QTY_PART_LIST/ExpandDims:output:0Bsequential_1/dense_features_2/QTY_PART_LIST/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
7sequential_1/dense_features_2/QTY_SHEETS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
3sequential_1/dense_features_2/QTY_SHEETS/ExpandDims
ExpandDims(sequential_1/dense_features_2/Cast_7:y:0@sequential_1/dense_features_2/QTY_SHEETS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
.sequential_1/dense_features_2/QTY_SHEETS/ShapeShape<sequential_1/dense_features_2/QTY_SHEETS/ExpandDims:output:0*
T0*
_output_shapes
:?
<sequential_1/dense_features_2/QTY_SHEETS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential_1/dense_features_2/QTY_SHEETS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential_1/dense_features_2/QTY_SHEETS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_1/dense_features_2/QTY_SHEETS/strided_sliceStridedSlice7sequential_1/dense_features_2/QTY_SHEETS/Shape:output:0Esequential_1/dense_features_2/QTY_SHEETS/strided_slice/stack:output:0Gsequential_1/dense_features_2/QTY_SHEETS/strided_slice/stack_1:output:0Gsequential_1/dense_features_2/QTY_SHEETS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8sequential_1/dense_features_2/QTY_SHEETS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
6sequential_1/dense_features_2/QTY_SHEETS/Reshape/shapePack?sequential_1/dense_features_2/QTY_SHEETS/strided_slice:output:0Asequential_1/dense_features_2/QTY_SHEETS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
0sequential_1/dense_features_2/QTY_SHEETS/ReshapeReshape<sequential_1/dense_features_2/QTY_SHEETS/ExpandDims:output:0?sequential_1/dense_features_2/QTY_SHEETS/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
Asequential_1/dense_features_2/QTY_TEXT_INFORMATION/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
=sequential_1/dense_features_2/QTY_TEXT_INFORMATION/ExpandDims
ExpandDims(sequential_1/dense_features_2/Cast_8:y:0Jsequential_1/dense_features_2/QTY_TEXT_INFORMATION/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
8sequential_1/dense_features_2/QTY_TEXT_INFORMATION/ShapeShapeFsequential_1/dense_features_2/QTY_TEXT_INFORMATION/ExpandDims:output:0*
T0*
_output_shapes
:?
Fsequential_1/dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Hsequential_1/dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Hsequential_1/dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential_1/dense_features_2/QTY_TEXT_INFORMATION/strided_sliceStridedSliceAsequential_1/dense_features_2/QTY_TEXT_INFORMATION/Shape:output:0Osequential_1/dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack:output:0Qsequential_1/dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_1:output:0Qsequential_1/dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Bsequential_1/dense_features_2/QTY_TEXT_INFORMATION/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
@sequential_1/dense_features_2/QTY_TEXT_INFORMATION/Reshape/shapePackIsequential_1/dense_features_2/QTY_TEXT_INFORMATION/strided_slice:output:0Ksequential_1/dense_features_2/QTY_TEXT_INFORMATION/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
:sequential_1/dense_features_2/QTY_TEXT_INFORMATION/ReshapeReshapeFsequential_1/dense_features_2/QTY_TEXT_INFORMATION/ExpandDims:output:0Isequential_1/dense_features_2/QTY_TEXT_INFORMATION/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
6sequential_1/dense_features_2/QTY_VIEWS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2sequential_1/dense_features_2/QTY_VIEWS/ExpandDims
ExpandDims(sequential_1/dense_features_2/Cast_9:y:0?sequential_1/dense_features_2/QTY_VIEWS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
-sequential_1/dense_features_2/QTY_VIEWS/ShapeShape;sequential_1/dense_features_2/QTY_VIEWS/ExpandDims:output:0*
T0*
_output_shapes
:?
;sequential_1/dense_features_2/QTY_VIEWS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=sequential_1/dense_features_2/QTY_VIEWS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential_1/dense_features_2/QTY_VIEWS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5sequential_1/dense_features_2/QTY_VIEWS/strided_sliceStridedSlice6sequential_1/dense_features_2/QTY_VIEWS/Shape:output:0Dsequential_1/dense_features_2/QTY_VIEWS/strided_slice/stack:output:0Fsequential_1/dense_features_2/QTY_VIEWS/strided_slice/stack_1:output:0Fsequential_1/dense_features_2/QTY_VIEWS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7sequential_1/dense_features_2/QTY_VIEWS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
5sequential_1/dense_features_2/QTY_VIEWS/Reshape/shapePack>sequential_1/dense_features_2/QTY_VIEWS/strided_slice:output:0@sequential_1/dense_features_2/QTY_VIEWS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
/sequential_1/dense_features_2/QTY_VIEWS/ReshapeReshape;sequential_1/dense_features_2/QTY_VIEWS/ExpandDims:output:0>sequential_1/dense_features_2/QTY_VIEWS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)sequential_1/dense_features_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_1/dense_features_2/concatConcatV2?sequential_1/dense_features_2/ATP_2D_embedding/Reshape:output:0Hsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/Reshape:output:08sequential_1/dense_features_2/LEAD_TIME/Reshape:output:0;sequential_1/dense_features_2/MEAN_SIZE_2D/Reshape:output:0;sequential_1/dense_features_2/MEAN_SIZE_3D/Reshape:output:09sequential_1/dense_features_2/QTN_REV_2D/Reshape:output:09sequential_1/dense_features_2/QTN_REV_3D/Reshape:output:0=sequential_1/dense_features_2/QTY_DIMENSIONS/Reshape:output:0<sequential_1/dense_features_2/QTY_PART_LIST/Reshape:output:09sequential_1/dense_features_2/QTY_SHEETS/Reshape:output:0Csequential_1/dense_features_2/QTY_TEXT_INFORMATION/Reshape:output:08sequential_1/dense_features_2/QTY_VIEWS/Reshape:output:02sequential_1/dense_features_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:??????????
*sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_1/dense_4/MatMulMatMul-sequential_1/dense_features_2/concat:output:02sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_4/BiasAddBiasAdd%sequential_1/dense_4/MatMul:product:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
sequential_1/dropout_4/IdentityIdentity'sequential_1/dense_4/Relu:activations:0*
T0*'
_output_shapes
:??????????
*sequential_1/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_1/dense_5/MatMulMatMul(sequential_1/dropout_4/Identity:output:02sequential_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_5/BiasAddBiasAdd%sequential_1/dense_5/MatMul:product:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
sequential_1/dense_5/ReluRelu%sequential_1/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
sequential_1/dropout_5/IdentityIdentity'sequential_1/dense_5/Relu:activations:0*
T0*'
_output_shapes
:??????????
*sequential_1/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_1/dense_6/MatMulMatMul(sequential_1/dropout_5/Identity:output:02sequential_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_6/BiasAddBiasAdd%sequential_1/dense_6/MatMul:product:03sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
sequential_1/dense_6/ReluRelu%sequential_1/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
sequential_1/dropout_6/IdentityIdentity'sequential_1/dense_6/Relu:activations:0*
T0*'
_output_shapes
:??????????
*sequential_1/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_1/dense_7/MatMulMatMul(sequential_1/dropout_6/Identity:output:02sequential_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_7/BiasAddBiasAdd%sequential_1/dense_7/MatMul:product:03sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
sequential_1/dense_7/ReluRelu%sequential_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
sequential_1/dropout_7/IdentityIdentity'sequential_1/dense_7/Relu:activations:0*
T0*'
_output_shapes
:?????????w
IdentityIdentity(sequential_1/dropout_7/Identity:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp+^sequential_1/dense_4/MatMul/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp+^sequential_1/dense_5/MatMul/ReadVariableOp,^sequential_1/dense_6/BiasAdd/ReadVariableOp+^sequential_1/dense_6/MatMul/ReadVariableOp,^sequential_1/dense_7/BiasAdd/ReadVariableOp+^sequential_1/dense_7/MatMul/ReadVariableOpM^sequential_1/dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2>^sequential_1/dense_features_2/ATP_2D_embedding/ReadVariableOpV^sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2G^sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/dense_4/MatMul/ReadVariableOp*sequential_1/dense_4/MatMul/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2X
*sequential_1/dense_5/MatMul/ReadVariableOp*sequential_1/dense_5/MatMul/ReadVariableOp2Z
+sequential_1/dense_6/BiasAdd/ReadVariableOp+sequential_1/dense_6/BiasAdd/ReadVariableOp2X
*sequential_1/dense_6/MatMul/ReadVariableOp*sequential_1/dense_6/MatMul/ReadVariableOp2Z
+sequential_1/dense_7/BiasAdd/ReadVariableOp+sequential_1/dense_7/BiasAdd/ReadVariableOp2X
*sequential_1/dense_7/MatMul/ReadVariableOp*sequential_1/dense_7/MatMul/ReadVariableOp2?
Lsequential_1/dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2Lsequential_1/dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV22~
=sequential_1/dense_features_2/ATP_2D_embedding/ReadVariableOp=sequential_1/dense_features_2/ATP_2D_embedding/ReadVariableOp2?
Usequential_1/dense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2Usequential_1/dense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV22?
Fsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOpFsequential_1/dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp:K G
#
_output_shapes
:?????????
 
_user_specified_nameATP_2D:TP
#
_output_shapes
:?????????
)
_user_specified_nameDRAWING_CODE_2D:NJ
#
_output_shapes
:?????????
#
_user_specified_name	LEAD_TIME:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_2D:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_3D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_2D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_3D:SO
#
_output_shapes
:?????????
(
_user_specified_nameQTY_DIMENSIONS:RN
#
_output_shapes
:?????????
'
_user_specified_nameQTY_PART_LIST:O	K
#
_output_shapes
:?????????
$
_user_specified_name
QTY_SHEETS:Y
U
#
_output_shapes
:?????????
.
_user_specified_nameQTY_TEXT_INFORMATION:NJ
#
_output_shapes
:?????????
#
_user_specified_name	QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?
G
+__inference_dropout_6_layer_call_fn_8406831

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_8404454`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_4_layer_call_and_return_conditional_losses_8404395

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8406102
inputs_atp_2d
inputs_drawing_code_2d
inputs_lead_time
inputs_mean_size_2d
inputs_mean_size_3d
inputs_qtn_rev_2d
inputs_qtn_rev_3d
inputs_qty_dimensions
inputs_qty_part_list
inputs_qty_sheets
inputs_qty_text_information
inputs_qty_viewsP
Ldense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_table_handleQ
Mdense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_default_value	K
9dense_features_2_atp_2d_embedding_readvariableop_resource:8Y
Udense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handleZ
Vdense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value	T
Bdense_features_2_drawing_code_2d_embedding_readvariableop_resource:8
&dense_4_matmul_readvariableop_resource:5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:8
&dense_6_matmul_readvariableop_resource:5
'dense_6_biasadd_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp??dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2?0dense_features_2/ATP_2D_embedding/ReadVariableOp?Hdense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2?9dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOpl
dense_features_2/CastCastinputs_lead_time*

DstT0*

SrcT0*#
_output_shapes
:?????????q
dense_features_2/Cast_1Castinputs_mean_size_2d*

DstT0*

SrcT0*#
_output_shapes
:?????????q
dense_features_2/Cast_2Castinputs_mean_size_3d*

DstT0*

SrcT0*#
_output_shapes
:?????????o
dense_features_2/Cast_3Castinputs_qtn_rev_2d*

DstT0*

SrcT0*#
_output_shapes
:?????????o
dense_features_2/Cast_4Castinputs_qtn_rev_3d*

DstT0*

SrcT0*#
_output_shapes
:?????????s
dense_features_2/Cast_5Castinputs_qty_dimensions*

DstT0*

SrcT0*#
_output_shapes
:?????????r
dense_features_2/Cast_6Castinputs_qty_part_list*

DstT0*

SrcT0*#
_output_shapes
:?????????o
dense_features_2/Cast_7Castinputs_qty_sheets*

DstT0*

SrcT0*#
_output_shapes
:?????????y
dense_features_2/Cast_8Castinputs_qty_text_information*

DstT0*

SrcT0*#
_output_shapes
:?????????n
dense_features_2/Cast_9Castinputs_qty_views*

DstT0*

SrcT0*#
_output_shapes
:?????????{
0dense_features_2/ATP_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,dense_features_2/ATP_2D_embedding/ExpandDims
ExpandDimsinputs_atp_2d9dense_features_2/ATP_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
@dense_features_2/ATP_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
:dense_features_2/ATP_2D_embedding/to_sparse_input/NotEqualNotEqual5dense_features_2/ATP_2D_embedding/ExpandDims:output:0Idense_features_2/ATP_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
9dense_features_2/ATP_2D_embedding/to_sparse_input/indicesWhere>dense_features_2/ATP_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
8dense_features_2/ATP_2D_embedding/to_sparse_input/valuesGatherNd5dense_features_2/ATP_2D_embedding/ExpandDims:output:0Adense_features_2/ATP_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
=dense_features_2/ATP_2D_embedding/to_sparse_input/dense_shapeShape5dense_features_2/ATP_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
?dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ldense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_table_handleAdense_features_2/ATP_2D_embedding/to_sparse_input/values:output:0Mdense_features_2_atp_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
0dense_features_2/ATP_2D_embedding/ReadVariableOpReadVariableOp9dense_features_2_atp_2d_embedding_readvariableop_resource*
_output_shapes

:8*
dtype0?
Fdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Edense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
@dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SliceSliceFdense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0Odense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/begin:output:0Ndense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
@dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
?dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ProdProdIdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice:output:0Idense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
Kdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Cdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2GatherV2Fdense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0Tdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indices:output:0Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
Adense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast/xPackHdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Prod:output:0Ldense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshapeSparseReshapeAdense_features_2/ATP_2D_embedding/to_sparse_input/indices:index:0Fdense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0Jdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/IdentityIdentityHdense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Idense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Gdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqualGreaterEqualZdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0Rdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
@dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/WhereWhereKdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ReshapeReshapeHdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Where:index:0Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
Jdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Edense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1GatherV2Ydense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_indices:0Kdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0Sdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
Jdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Edense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2GatherV2Zdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0Kdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0Sdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Cdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/IdentityIdentityWdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
Tdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1:output:0Ndense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2:output:0Ldense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Identity:output:0]dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
fdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
`dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Ydense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*C
_class9
75loc:@dense_features_2/ATP_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
cdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV28dense_features_2/ATP_2D_embedding/ReadVariableOp:value:0]dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*C
_class9
75loc:@dense_features_2/ATP_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
ldense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityldense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
Rdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMeanudense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0_dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0idense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
Jdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Ddense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1Reshapexdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
@dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/ShapeShape[dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
Ndense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Pdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Pdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_sliceStridedSliceIdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Shape:output:0Wdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack:output:0Ydense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1:output:0Ydense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
@dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stackPackKdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stack/0:output:0Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
?dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/TileTileMdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1:output:0Idense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
Edense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like	ZerosLike[dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
:dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weightsSelectHdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Tile:output:0Idense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like:y:0[dense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
Adense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1CastFdense_features_2/ATP_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Gdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1SliceEdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1:y:0Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/begin:output:0Pdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
Bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1ShapeCdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
Hdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Gdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Bdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2SliceKdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1:output:0Qdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/begin:output:0Pdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Fdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Adense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concatConcatV2Kdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1:output:0Kdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2:output:0Odense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ddense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2ReshapeCdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights:output:0Jdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
'dense_features_2/ATP_2D_embedding/ShapeShapeMdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:
5dense_features_2/ATP_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7dense_features_2/ATP_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7dense_features_2/ATP_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/dense_features_2/ATP_2D_embedding/strided_sliceStridedSlice0dense_features_2/ATP_2D_embedding/Shape:output:0>dense_features_2/ATP_2D_embedding/strided_slice/stack:output:0@dense_features_2/ATP_2D_embedding/strided_slice/stack_1:output:0@dense_features_2/ATP_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features_2/ATP_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
/dense_features_2/ATP_2D_embedding/Reshape/shapePack8dense_features_2/ATP_2D_embedding/strided_slice:output:0:dense_features_2/ATP_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)dense_features_2/ATP_2D_embedding/ReshapeReshapeMdense_features_2/ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:08dense_features_2/ATP_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
9dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims
ExpandDimsinputs_drawing_code_2dBdense_features_2/DRAWING_CODE_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Idense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Cdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/NotEqualNotEqual>dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims:output:0Rdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Bdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/indicesWhereGdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Adense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/valuesGatherNd>dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims:output:0Jdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Fdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shapeShape>dense_features_2/DRAWING_CODE_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Hdense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Udense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handleJdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/values:output:0Vdense_features_2_drawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
9dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOpReadVariableOpBdense_features_2_drawing_code_2d_embedding_readvariableop_resource*
_output_shapes

:*
dtype0?
Xdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Wdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SliceSliceOdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0adense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/begin:output:0`dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
Rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Qdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ProdProd[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice:output:0[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Udense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2GatherV2Odense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0fdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indices:output:0cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
Sdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/xPackZdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Prod:output:0^dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshapeSparseReshapeJdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0Odense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0\dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/IdentityIdentityQdense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Ydense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqualGreaterEqualldense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0ddense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
Rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/WhereWhere]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ReshapeReshapeZdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Where:index:0cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
\dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1GatherV2kdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_indices:0]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0edense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
\dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2GatherV2ldense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0edense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Udense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/IdentityIdentityidense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
fdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows`dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1:output:0`dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2:output:0^dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Identity:output:0odense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
xdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
kdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/UniqueUnique?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*L
_classB
@>loc:@dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
udense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Adense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp:value:0odense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*L
_classB
@>loc:@dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
~dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity~dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
ddense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMean?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0qdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0{dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
\dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Vdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1Reshape?dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0edense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
Rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ShapeShapemdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
`dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
bdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
bdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_sliceStridedSlice[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape:output:0idense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack:output:0kdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1:output:0kdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
Rdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stackPack]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0:output:0cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
Qdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/TileTile_dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1:output:0[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
Wdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like	ZerosLikemdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
Ldense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weightsSelectZdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Tile:output:0[dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like:y:0mdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
Sdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1CastOdense_features_2/DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Ydense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1SliceWdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1:y:0cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/begin:output:0bdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
Tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1ShapeUdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
Zdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Ydense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Tdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2Slice]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1:output:0cdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/begin:output:0bdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Xdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Sdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concatConcatV2]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1:output:0]dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2:output:0adense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Vdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2ReshapeUdense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0\dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
0dense_features_2/DRAWING_CODE_2D_embedding/ShapeShape_dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:?
>dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@dense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8dense_features_2/DRAWING_CODE_2D_embedding/strided_sliceStridedSlice9dense_features_2/DRAWING_CODE_2D_embedding/Shape:output:0Gdense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack:output:0Idense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_1:output:0Idense_features_2/DRAWING_CODE_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:dense_features_2/DRAWING_CODE_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
8dense_features_2/DRAWING_CODE_2D_embedding/Reshape/shapePackAdense_features_2/DRAWING_CODE_2D_embedding/strided_slice:output:0Cdense_features_2/DRAWING_CODE_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
2dense_features_2/DRAWING_CODE_2D_embedding/ReshapeReshape_dense_features_2/DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:0Adense_features_2/DRAWING_CODE_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)dense_features_2/LEAD_TIME/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%dense_features_2/LEAD_TIME/ExpandDims
ExpandDimsdense_features_2/Cast:y:02dense_features_2/LEAD_TIME/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
 dense_features_2/LEAD_TIME/ShapeShape.dense_features_2/LEAD_TIME/ExpandDims:output:0*
T0*
_output_shapes
:x
.dense_features_2/LEAD_TIME/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features_2/LEAD_TIME/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features_2/LEAD_TIME/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(dense_features_2/LEAD_TIME/strided_sliceStridedSlice)dense_features_2/LEAD_TIME/Shape:output:07dense_features_2/LEAD_TIME/strided_slice/stack:output:09dense_features_2/LEAD_TIME/strided_slice/stack_1:output:09dense_features_2/LEAD_TIME/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features_2/LEAD_TIME/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
(dense_features_2/LEAD_TIME/Reshape/shapePack1dense_features_2/LEAD_TIME/strided_slice:output:03dense_features_2/LEAD_TIME/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
"dense_features_2/LEAD_TIME/ReshapeReshape.dense_features_2/LEAD_TIME/ExpandDims:output:01dense_features_2/LEAD_TIME/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????w
,dense_features_2/MEAN_SIZE_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(dense_features_2/MEAN_SIZE_2D/ExpandDims
ExpandDimsdense_features_2/Cast_1:y:05dense_features_2/MEAN_SIZE_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
#dense_features_2/MEAN_SIZE_2D/ShapeShape1dense_features_2/MEAN_SIZE_2D/ExpandDims:output:0*
T0*
_output_shapes
:{
1dense_features_2/MEAN_SIZE_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_2/MEAN_SIZE_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_2/MEAN_SIZE_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+dense_features_2/MEAN_SIZE_2D/strided_sliceStridedSlice,dense_features_2/MEAN_SIZE_2D/Shape:output:0:dense_features_2/MEAN_SIZE_2D/strided_slice/stack:output:0<dense_features_2/MEAN_SIZE_2D/strided_slice/stack_1:output:0<dense_features_2/MEAN_SIZE_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_2/MEAN_SIZE_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
+dense_features_2/MEAN_SIZE_2D/Reshape/shapePack4dense_features_2/MEAN_SIZE_2D/strided_slice:output:06dense_features_2/MEAN_SIZE_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
%dense_features_2/MEAN_SIZE_2D/ReshapeReshape1dense_features_2/MEAN_SIZE_2D/ExpandDims:output:04dense_features_2/MEAN_SIZE_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????w
,dense_features_2/MEAN_SIZE_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(dense_features_2/MEAN_SIZE_3D/ExpandDims
ExpandDimsdense_features_2/Cast_2:y:05dense_features_2/MEAN_SIZE_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
#dense_features_2/MEAN_SIZE_3D/ShapeShape1dense_features_2/MEAN_SIZE_3D/ExpandDims:output:0*
T0*
_output_shapes
:{
1dense_features_2/MEAN_SIZE_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_2/MEAN_SIZE_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_2/MEAN_SIZE_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+dense_features_2/MEAN_SIZE_3D/strided_sliceStridedSlice,dense_features_2/MEAN_SIZE_3D/Shape:output:0:dense_features_2/MEAN_SIZE_3D/strided_slice/stack:output:0<dense_features_2/MEAN_SIZE_3D/strided_slice/stack_1:output:0<dense_features_2/MEAN_SIZE_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_2/MEAN_SIZE_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
+dense_features_2/MEAN_SIZE_3D/Reshape/shapePack4dense_features_2/MEAN_SIZE_3D/strided_slice:output:06dense_features_2/MEAN_SIZE_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
%dense_features_2/MEAN_SIZE_3D/ReshapeReshape1dense_features_2/MEAN_SIZE_3D/ExpandDims:output:04dense_features_2/MEAN_SIZE_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????u
*dense_features_2/QTN_REV_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&dense_features_2/QTN_REV_2D/ExpandDims
ExpandDimsdense_features_2/Cast_3:y:03dense_features_2/QTN_REV_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
!dense_features_2/QTN_REV_2D/ShapeShape/dense_features_2/QTN_REV_2D/ExpandDims:output:0*
T0*
_output_shapes
:y
/dense_features_2/QTN_REV_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_features_2/QTN_REV_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_features_2/QTN_REV_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_features_2/QTN_REV_2D/strided_sliceStridedSlice*dense_features_2/QTN_REV_2D/Shape:output:08dense_features_2/QTN_REV_2D/strided_slice/stack:output:0:dense_features_2/QTN_REV_2D/strided_slice/stack_1:output:0:dense_features_2/QTN_REV_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+dense_features_2/QTN_REV_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
)dense_features_2/QTN_REV_2D/Reshape/shapePack2dense_features_2/QTN_REV_2D/strided_slice:output:04dense_features_2/QTN_REV_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
#dense_features_2/QTN_REV_2D/ReshapeReshape/dense_features_2/QTN_REV_2D/ExpandDims:output:02dense_features_2/QTN_REV_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????u
*dense_features_2/QTN_REV_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&dense_features_2/QTN_REV_3D/ExpandDims
ExpandDimsdense_features_2/Cast_4:y:03dense_features_2/QTN_REV_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
!dense_features_2/QTN_REV_3D/ShapeShape/dense_features_2/QTN_REV_3D/ExpandDims:output:0*
T0*
_output_shapes
:y
/dense_features_2/QTN_REV_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_features_2/QTN_REV_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_features_2/QTN_REV_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_features_2/QTN_REV_3D/strided_sliceStridedSlice*dense_features_2/QTN_REV_3D/Shape:output:08dense_features_2/QTN_REV_3D/strided_slice/stack:output:0:dense_features_2/QTN_REV_3D/strided_slice/stack_1:output:0:dense_features_2/QTN_REV_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+dense_features_2/QTN_REV_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
)dense_features_2/QTN_REV_3D/Reshape/shapePack2dense_features_2/QTN_REV_3D/strided_slice:output:04dense_features_2/QTN_REV_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
#dense_features_2/QTN_REV_3D/ReshapeReshape/dense_features_2/QTN_REV_3D/ExpandDims:output:02dense_features_2/QTN_REV_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????y
.dense_features_2/QTY_DIMENSIONS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features_2/QTY_DIMENSIONS/ExpandDims
ExpandDimsdense_features_2/Cast_5:y:07dense_features_2/QTY_DIMENSIONS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
%dense_features_2/QTY_DIMENSIONS/ShapeShape3dense_features_2/QTY_DIMENSIONS/ExpandDims:output:0*
T0*
_output_shapes
:}
3dense_features_2/QTY_DIMENSIONS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features_2/QTY_DIMENSIONS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features_2/QTY_DIMENSIONS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features_2/QTY_DIMENSIONS/strided_sliceStridedSlice.dense_features_2/QTY_DIMENSIONS/Shape:output:0<dense_features_2/QTY_DIMENSIONS/strided_slice/stack:output:0>dense_features_2/QTY_DIMENSIONS/strided_slice/stack_1:output:0>dense_features_2/QTY_DIMENSIONS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features_2/QTY_DIMENSIONS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features_2/QTY_DIMENSIONS/Reshape/shapePack6dense_features_2/QTY_DIMENSIONS/strided_slice:output:08dense_features_2/QTY_DIMENSIONS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features_2/QTY_DIMENSIONS/ReshapeReshape3dense_features_2/QTY_DIMENSIONS/ExpandDims:output:06dense_features_2/QTY_DIMENSIONS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features_2/QTY_PART_LIST/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features_2/QTY_PART_LIST/ExpandDims
ExpandDimsdense_features_2/Cast_6:y:06dense_features_2/QTY_PART_LIST/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
$dense_features_2/QTY_PART_LIST/ShapeShape2dense_features_2/QTY_PART_LIST/ExpandDims:output:0*
T0*
_output_shapes
:|
2dense_features_2/QTY_PART_LIST/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features_2/QTY_PART_LIST/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features_2/QTY_PART_LIST/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features_2/QTY_PART_LIST/strided_sliceStridedSlice-dense_features_2/QTY_PART_LIST/Shape:output:0;dense_features_2/QTY_PART_LIST/strided_slice/stack:output:0=dense_features_2/QTY_PART_LIST/strided_slice/stack_1:output:0=dense_features_2/QTY_PART_LIST/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features_2/QTY_PART_LIST/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features_2/QTY_PART_LIST/Reshape/shapePack5dense_features_2/QTY_PART_LIST/strided_slice:output:07dense_features_2/QTY_PART_LIST/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features_2/QTY_PART_LIST/ReshapeReshape2dense_features_2/QTY_PART_LIST/ExpandDims:output:05dense_features_2/QTY_PART_LIST/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????u
*dense_features_2/QTY_SHEETS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&dense_features_2/QTY_SHEETS/ExpandDims
ExpandDimsdense_features_2/Cast_7:y:03dense_features_2/QTY_SHEETS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
!dense_features_2/QTY_SHEETS/ShapeShape/dense_features_2/QTY_SHEETS/ExpandDims:output:0*
T0*
_output_shapes
:y
/dense_features_2/QTY_SHEETS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_features_2/QTY_SHEETS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_features_2/QTY_SHEETS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_features_2/QTY_SHEETS/strided_sliceStridedSlice*dense_features_2/QTY_SHEETS/Shape:output:08dense_features_2/QTY_SHEETS/strided_slice/stack:output:0:dense_features_2/QTY_SHEETS/strided_slice/stack_1:output:0:dense_features_2/QTY_SHEETS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+dense_features_2/QTY_SHEETS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
)dense_features_2/QTY_SHEETS/Reshape/shapePack2dense_features_2/QTY_SHEETS/strided_slice:output:04dense_features_2/QTY_SHEETS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
#dense_features_2/QTY_SHEETS/ReshapeReshape/dense_features_2/QTY_SHEETS/ExpandDims:output:02dense_features_2/QTY_SHEETS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
4dense_features_2/QTY_TEXT_INFORMATION/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
0dense_features_2/QTY_TEXT_INFORMATION/ExpandDims
ExpandDimsdense_features_2/Cast_8:y:0=dense_features_2/QTY_TEXT_INFORMATION/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
+dense_features_2/QTY_TEXT_INFORMATION/ShapeShape9dense_features_2/QTY_TEXT_INFORMATION/ExpandDims:output:0*
T0*
_output_shapes
:?
9dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
;dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
;dense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3dense_features_2/QTY_TEXT_INFORMATION/strided_sliceStridedSlice4dense_features_2/QTY_TEXT_INFORMATION/Shape:output:0Bdense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack:output:0Ddense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_1:output:0Ddense_features_2/QTY_TEXT_INFORMATION/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5dense_features_2/QTY_TEXT_INFORMATION/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
3dense_features_2/QTY_TEXT_INFORMATION/Reshape/shapePack<dense_features_2/QTY_TEXT_INFORMATION/strided_slice:output:0>dense_features_2/QTY_TEXT_INFORMATION/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
-dense_features_2/QTY_TEXT_INFORMATION/ReshapeReshape9dense_features_2/QTY_TEXT_INFORMATION/ExpandDims:output:0<dense_features_2/QTY_TEXT_INFORMATION/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)dense_features_2/QTY_VIEWS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%dense_features_2/QTY_VIEWS/ExpandDims
ExpandDimsdense_features_2/Cast_9:y:02dense_features_2/QTY_VIEWS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
 dense_features_2/QTY_VIEWS/ShapeShape.dense_features_2/QTY_VIEWS/ExpandDims:output:0*
T0*
_output_shapes
:x
.dense_features_2/QTY_VIEWS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features_2/QTY_VIEWS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features_2/QTY_VIEWS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(dense_features_2/QTY_VIEWS/strided_sliceStridedSlice)dense_features_2/QTY_VIEWS/Shape:output:07dense_features_2/QTY_VIEWS/strided_slice/stack:output:09dense_features_2/QTY_VIEWS/strided_slice/stack_1:output:09dense_features_2/QTY_VIEWS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features_2/QTY_VIEWS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
(dense_features_2/QTY_VIEWS/Reshape/shapePack1dense_features_2/QTY_VIEWS/strided_slice:output:03dense_features_2/QTY_VIEWS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
"dense_features_2/QTY_VIEWS/ReshapeReshape.dense_features_2/QTY_VIEWS/ExpandDims:output:01dense_features_2/QTY_VIEWS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
dense_features_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features_2/concatConcatV22dense_features_2/ATP_2D_embedding/Reshape:output:0;dense_features_2/DRAWING_CODE_2D_embedding/Reshape:output:0+dense_features_2/LEAD_TIME/Reshape:output:0.dense_features_2/MEAN_SIZE_2D/Reshape:output:0.dense_features_2/MEAN_SIZE_3D/Reshape:output:0,dense_features_2/QTN_REV_2D/Reshape:output:0,dense_features_2/QTN_REV_3D/Reshape:output:00dense_features_2/QTY_DIMENSIONS/Reshape:output:0/dense_features_2/QTY_PART_LIST/Reshape:output:0,dense_features_2/QTY_SHEETS/Reshape:output:06dense_features_2/QTY_TEXT_INFORMATION/Reshape:output:0+dense_features_2/QTY_VIEWS/Reshape:output:0%dense_features_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:??????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_4/MatMulMatMul dense_features_2/concat:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@?
dropout_4/dropout/MulMuldense_4/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*'
_output_shapes
:?????????a
dropout_4/dropout/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @??
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:??????????
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:??????????
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*'
_output_shapes
:??????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_5/MatMulMatMuldropout_4/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_5/dropout/MulMuldense_5/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*'
_output_shapes
:?????????a
dropout_5/dropout/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:??????????
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:??????????
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*'
_output_shapes
:??????????
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_6/MatMulMatMuldropout_5/dropout/Mul_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_6/dropout/MulMuldense_6/Relu:activations:0 dropout_6/dropout/Const:output:0*
T0*'
_output_shapes
:?????????a
dropout_6/dropout/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:??????????
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:??????????
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*'
_output_shapes
:??????????
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_7/MatMulMatMuldropout_6/dropout/Mul_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *%I???
dropout_7/dropout/MulMuldense_7/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*'
_output_shapes
:?????????a
dropout_7/dropout/ShapeShapedense_7/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:??????????
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:??????????
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitydropout_7/dropout/Mul_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp@^dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV21^dense_features_2/ATP_2D_embedding/ReadVariableOpI^dense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2:^dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2?
?dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV2?dense_features_2/ATP_2D_embedding/None_Lookup/LookupTableFindV22d
0dense_features_2/ATP_2D_embedding/ReadVariableOp0dense_features_2/ATP_2D_embedding/ReadVariableOp2?
Hdense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2Hdense_features_2/DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV22v
9dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp9dense_features_2/DRAWING_CODE_2D_embedding/ReadVariableOp:R N
#
_output_shapes
:?????????
'
_user_specified_nameinputs/ATP_2D:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/DRAWING_CODE_2D:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/LEAD_TIME:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/MEAN_SIZE_2D:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/MEAN_SIZE_3D:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTN_REV_2D:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTN_REV_3D:ZV
#
_output_shapes
:?????????
/
_user_specified_nameinputs/QTY_DIMENSIONS:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/QTY_PART_LIST:V	R
#
_output_shapes
:?????????
+
_user_specified_nameinputs/QTY_SHEETS:`
\
#
_output_shapes
:?????????
5
_user_specified_nameinputs/QTY_TEXT_INFORMATION:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?

?
D__inference_dense_7_layer_call_and_return_conditional_losses_8406873

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_4_layer_call_and_return_conditional_losses_8406732

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_1_layer_call_fn_8405172

atp_2d
drawing_code_2d
	lead_time
mean_size_2d
mean_size_3d

qtn_rev_2d

qtn_rev_3d
qty_dimensions
qty_part_list

qty_sheets
qty_text_information
	qty_views
unknown
	unknown_0	
	unknown_1:8
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallatp_2ddrawing_code_2d	lead_timemean_size_2dmean_size_3d
qtn_rev_2d
qtn_rev_3dqty_dimensionsqty_part_list
qty_sheetsqty_text_information	qty_viewsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*%
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405097o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameATP_2D:TP
#
_output_shapes
:?????????
)
_user_specified_nameDRAWING_CODE_2D:NJ
#
_output_shapes
:?????????
#
_user_specified_name	LEAD_TIME:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_2D:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_3D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_2D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_3D:SO
#
_output_shapes
:?????????
(
_user_specified_nameQTY_DIMENSIONS:RN
#
_output_shapes
:?????????
'
_user_specified_nameQTY_PART_LIST:O	K
#
_output_shapes
:?????????
$
_user_specified_name
QTY_SHEETS:Y
U
#
_output_shapes
:?????????
.
_user_specified_nameQTY_TEXT_INFORMATION:NJ
#
_output_shapes
:?????????
#
_user_specified_name	QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
??
?
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8406435
features_atp_2d
features_drawing_code_2d
features_lead_time
features_mean_size_2d
features_mean_size_3d
features_qtn_rev_2d
features_qtn_rev_3d
features_qty_dimensions
features_qty_part_list
features_qty_sheets!
features_qty_text_information
features_qty_views?
;atp_2d_embedding_none_lookup_lookuptablefindv2_table_handle@
<atp_2d_embedding_none_lookup_lookuptablefindv2_default_value	:
(atp_2d_embedding_readvariableop_resource:8H
Ddrawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handleI
Edrawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value	C
1drawing_code_2d_embedding_readvariableop_resource:
identity??.ATP_2D_embedding/None_Lookup/LookupTableFindV2?ATP_2D_embedding/ReadVariableOp?7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2?(DRAWING_CODE_2D_embedding/ReadVariableOpj
ATP_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
ATP_2D_embedding/ExpandDims
ExpandDimsfeatures_atp_2d(ATP_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/ATP_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)ATP_2D_embedding/to_sparse_input/NotEqualNotEqual$ATP_2D_embedding/ExpandDims:output:08ATP_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(ATP_2D_embedding/to_sparse_input/indicesWhere-ATP_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'ATP_2D_embedding/to_sparse_input/valuesGatherNd$ATP_2D_embedding/ExpandDims:output:00ATP_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,ATP_2D_embedding/to_sparse_input/dense_shapeShape$ATP_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.ATP_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2;atp_2d_embedding_none_lookup_lookuptablefindv2_table_handle0ATP_2D_embedding/to_sparse_input/values:output:0<atp_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
ATP_2D_embedding/ReadVariableOpReadVariableOp(atp_2d_embedding_readvariableop_resource*
_output_shapes

:8*
dtype0
5ATP_2D_embedding/ATP_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4ATP_2D_embedding/ATP_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
/ATP_2D_embedding/ATP_2D_embedding_weights/SliceSlice5ATP_2D_embedding/to_sparse_input/dense_shape:output:0>ATP_2D_embedding/ATP_2D_embedding_weights/Slice/begin:output:0=ATP_2D_embedding/ATP_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/ATP_2D_embedding/ATP_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.ATP_2D_embedding/ATP_2D_embedding_weights/ProdProd8ATP_2D_embedding/ATP_2D_embedding_weights/Slice:output:08ATP_2D_embedding/ATP_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2GatherV25ATP_2D_embedding/to_sparse_input/dense_shape:output:0CATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/indices:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
0ATP_2D_embedding/ATP_2D_embedding_weights/Cast/xPack7ATP_2D_embedding/ATP_2D_embedding_weights/Prod:output:0;ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshapeSparseReshape0ATP_2D_embedding/to_sparse_input/indices:index:05ATP_2D_embedding/to_sparse_input/dense_shape:output:09ATP_2D_embedding/ATP_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
@ATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/IdentityIdentity7ATP_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????z
8ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
6ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqualGreaterEqualIATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0AATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
/ATP_2D_embedding/ATP_2D_embedding_weights/WhereWhere:ATP_2D_embedding/ATP_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
7ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1ATP_2D_embedding/ATP_2D_embedding_weights/ReshapeReshape7ATP_2D_embedding/ATP_2D_embedding_weights/Where:index:0@ATP_2D_embedding/ATP_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????{
9ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1GatherV2HATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_indices:0:ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0BATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????{
9ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2GatherV2IATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape/Identity:output:0:ATP_2D_embedding/ATP_2D_embedding_weights/Reshape:output:0BATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
2ATP_2D_embedding/ATP_2D_embedding_weights/IdentityIdentityFATP_2D_embedding/ATP_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
CATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
QATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_1:output:0=ATP_2D_embedding/ATP_2D_embedding_weights/GatherV2_2:output:0;ATP_2D_embedding/ATP_2D_embedding_weights/Identity:output:0LATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
UATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
OATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
HATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/UniqueUniqueaATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
WATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*2
_class(
&$loc:@ATP_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
RATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2'ATP_2D_embedding/ReadVariableOp:value:0LATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0`ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@ATP_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
[ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[ATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
AATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMeandATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0XATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
9ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
3ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1ReshapegATP_2D_embedding/ATP_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
/ATP_2D_embedding/ATP_2D_embedding_weights/ShapeShapeJATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
=ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
?ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7ATP_2D_embedding/ATP_2D_embedding_weights/strided_sliceStridedSlice8ATP_2D_embedding/ATP_2D_embedding_weights/Shape:output:0FATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack:output:0HATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_1:output:0HATP_2D_embedding/ATP_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1ATP_2D_embedding/ATP_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
/ATP_2D_embedding/ATP_2D_embedding_weights/stackPack:ATP_2D_embedding/ATP_2D_embedding_weights/stack/0:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
.ATP_2D_embedding/ATP_2D_embedding_weights/TileTile<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_1:output:08ATP_2D_embedding/ATP_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
4ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like	ZerosLikeJATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
)ATP_2D_embedding/ATP_2D_embedding_weightsSelect7ATP_2D_embedding/ATP_2D_embedding_weights/Tile:output:08ATP_2D_embedding/ATP_2D_embedding_weights/zeros_like:y:0JATP_2D_embedding/ATP_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
0ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1Cast5ATP_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
6ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
1ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1Slice4ATP_2D_embedding/ATP_2D_embedding_weights/Cast_1:y:0@ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/begin:output:0?ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
1ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1Shape2ATP_2D_embedding/ATP_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
7ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
6ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2Slice:ATP_2D_embedding/ATP_2D_embedding_weights/Shape_1:output:0@ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/begin:output:0?ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5ATP_2D_embedding/ATP_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0ATP_2D_embedding/ATP_2D_embedding_weights/concatConcatV2:ATP_2D_embedding/ATP_2D_embedding_weights/Slice_1:output:0:ATP_2D_embedding/ATP_2D_embedding_weights/Slice_2:output:0>ATP_2D_embedding/ATP_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
3ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2Reshape2ATP_2D_embedding/ATP_2D_embedding_weights:output:09ATP_2D_embedding/ATP_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
ATP_2D_embedding/ShapeShape<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:n
$ATP_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&ATP_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&ATP_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
ATP_2D_embedding/strided_sliceStridedSliceATP_2D_embedding/Shape:output:0-ATP_2D_embedding/strided_slice/stack:output:0/ATP_2D_embedding/strided_slice/stack_1:output:0/ATP_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 ATP_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
ATP_2D_embedding/Reshape/shapePack'ATP_2D_embedding/strided_slice:output:0)ATP_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
ATP_2D_embedding/ReshapeReshape<ATP_2D_embedding/ATP_2D_embedding_weights/Reshape_2:output:0'ATP_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(DRAWING_CODE_2D_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$DRAWING_CODE_2D_embedding/ExpandDims
ExpandDimsfeatures_drawing_code_2d1DRAWING_CODE_2D_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????y
8DRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
2DRAWING_CODE_2D_embedding/to_sparse_input/NotEqualNotEqual-DRAWING_CODE_2D_embedding/ExpandDims:output:0ADRAWING_CODE_2D_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
1DRAWING_CODE_2D_embedding/to_sparse_input/indicesWhere6DRAWING_CODE_2D_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
0DRAWING_CODE_2D_embedding/to_sparse_input/valuesGatherNd-DRAWING_CODE_2D_embedding/ExpandDims:output:09DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
5DRAWING_CODE_2D_embedding/to_sparse_input/dense_shapeShape-DRAWING_CODE_2D_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ddrawing_code_2d_embedding_none_lookup_lookuptablefindv2_table_handle9DRAWING_CODE_2D_embedding/to_sparse_input/values:output:0Edrawing_code_2d_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
(DRAWING_CODE_2D_embedding/ReadVariableOpReadVariableOp1drawing_code_2d_embedding_readvariableop_resource*
_output_shapes

:*
dtype0?
GDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SliceSlice>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0PDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/begin:output:0ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ProdProdJDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2GatherV2>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0UDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/indices:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/xPackIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Prod:output:0MDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshapeSparseReshape9DRAWING_CODE_2D_embedding/to_sparse_input/indices:index:0>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/IdentityIdentity@DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqualGreaterEqual[DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0SDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/WhereWhereLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ReshapeReshapeIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Where:index:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1GatherV2ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_indices:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2GatherV2[DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape/Identity:output:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape:output:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
DDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/IdentityIdentityXDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
UDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
cDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_1:output:0ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/GatherV2_2:output:0MDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Identity:output:0^DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
gDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
aDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicetDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0pDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/UniqueUniquesDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
iDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*;
_class1
/-loc:@DRAWING_CODE_2D_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
dDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV20DRAWING_CODE_2D_embedding/ReadVariableOp:value:0^DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:y:0rDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*;
_class1
/-loc:@DRAWING_CODE_2D_embedding/ReadVariableOp*'
_output_shapes
:??????????
mDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitymDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:??????????
SDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparseSparseSegmentMeanvDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0`DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/Unique:idx:0jDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:??????????
KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
EDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1ReshapeyDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0TDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/ShapeShape\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
ODRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_sliceStridedSliceJDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape:output:0XDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack:output:0ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_1:output:0ZDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
ADRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stackPackLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack/0:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
@DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/TileTileNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_1:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:??????????
FDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like	ZerosLike\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
;DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weightsSelectIDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Tile:output:0JDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/zeros_like:y:0\DRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:??????????
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1Cast>DRAWING_CODE_2D_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1SliceFDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Cast_1:y:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/begin:output:0QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1ShapeDDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0*
T0*
_output_shapes
:?
IDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
HDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
CDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2SliceLDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Shape_1:output:0RDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/begin:output:0QDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
GDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
BDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concatConcatV2LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_1:output:0LDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Slice_2:output:0PDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
EDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2ReshapeDDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights:output:0KDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/concat:output:0*
T0*'
_output_shapes
:??????????
DRAWING_CODE_2D_embedding/ShapeShapeNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:w
-DRAWING_CODE_2D_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/DRAWING_CODE_2D_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/DRAWING_CODE_2D_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'DRAWING_CODE_2D_embedding/strided_sliceStridedSlice(DRAWING_CODE_2D_embedding/Shape:output:06DRAWING_CODE_2D_embedding/strided_slice/stack:output:08DRAWING_CODE_2D_embedding/strided_slice/stack_1:output:08DRAWING_CODE_2D_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)DRAWING_CODE_2D_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'DRAWING_CODE_2D_embedding/Reshape/shapePack0DRAWING_CODE_2D_embedding/strided_slice:output:02DRAWING_CODE_2D_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!DRAWING_CODE_2D_embedding/ReshapeReshapeNDRAWING_CODE_2D_embedding/DRAWING_CODE_2D_embedding_weights/Reshape_2:output:00DRAWING_CODE_2D_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
LEAD_TIME/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
LEAD_TIME/ExpandDims
ExpandDimsfeatures_lead_time!LEAD_TIME/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
LEAD_TIME/ShapeShapeLEAD_TIME/ExpandDims:output:0*
T0*
_output_shapes
:g
LEAD_TIME/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
LEAD_TIME/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
LEAD_TIME/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
LEAD_TIME/strided_sliceStridedSliceLEAD_TIME/Shape:output:0&LEAD_TIME/strided_slice/stack:output:0(LEAD_TIME/strided_slice/stack_1:output:0(LEAD_TIME/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
LEAD_TIME/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
LEAD_TIME/Reshape/shapePack LEAD_TIME/strided_slice:output:0"LEAD_TIME/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
LEAD_TIME/ReshapeReshapeLEAD_TIME/ExpandDims:output:0 LEAD_TIME/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
MEAN_SIZE_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MEAN_SIZE_2D/ExpandDims
ExpandDimsfeatures_mean_size_2d$MEAN_SIZE_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????b
MEAN_SIZE_2D/ShapeShape MEAN_SIZE_2D/ExpandDims:output:0*
T0*
_output_shapes
:j
 MEAN_SIZE_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"MEAN_SIZE_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"MEAN_SIZE_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MEAN_SIZE_2D/strided_sliceStridedSliceMEAN_SIZE_2D/Shape:output:0)MEAN_SIZE_2D/strided_slice/stack:output:0+MEAN_SIZE_2D/strided_slice/stack_1:output:0+MEAN_SIZE_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
MEAN_SIZE_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MEAN_SIZE_2D/Reshape/shapePack#MEAN_SIZE_2D/strided_slice:output:0%MEAN_SIZE_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MEAN_SIZE_2D/ReshapeReshape MEAN_SIZE_2D/ExpandDims:output:0#MEAN_SIZE_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
MEAN_SIZE_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MEAN_SIZE_3D/ExpandDims
ExpandDimsfeatures_mean_size_3d$MEAN_SIZE_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????b
MEAN_SIZE_3D/ShapeShape MEAN_SIZE_3D/ExpandDims:output:0*
T0*
_output_shapes
:j
 MEAN_SIZE_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"MEAN_SIZE_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"MEAN_SIZE_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MEAN_SIZE_3D/strided_sliceStridedSliceMEAN_SIZE_3D/Shape:output:0)MEAN_SIZE_3D/strided_slice/stack:output:0+MEAN_SIZE_3D/strided_slice/stack_1:output:0+MEAN_SIZE_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
MEAN_SIZE_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MEAN_SIZE_3D/Reshape/shapePack#MEAN_SIZE_3D/strided_slice:output:0%MEAN_SIZE_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MEAN_SIZE_3D/ReshapeReshape MEAN_SIZE_3D/ExpandDims:output:0#MEAN_SIZE_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTN_REV_2D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTN_REV_2D/ExpandDims
ExpandDimsfeatures_qtn_rev_2d"QTN_REV_2D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTN_REV_2D/ShapeShapeQTN_REV_2D/ExpandDims:output:0*
T0*
_output_shapes
:h
QTN_REV_2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTN_REV_2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTN_REV_2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTN_REV_2D/strided_sliceStridedSliceQTN_REV_2D/Shape:output:0'QTN_REV_2D/strided_slice/stack:output:0)QTN_REV_2D/strided_slice/stack_1:output:0)QTN_REV_2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTN_REV_2D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTN_REV_2D/Reshape/shapePack!QTN_REV_2D/strided_slice:output:0#QTN_REV_2D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTN_REV_2D/ReshapeReshapeQTN_REV_2D/ExpandDims:output:0!QTN_REV_2D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTN_REV_3D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTN_REV_3D/ExpandDims
ExpandDimsfeatures_qtn_rev_3d"QTN_REV_3D/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTN_REV_3D/ShapeShapeQTN_REV_3D/ExpandDims:output:0*
T0*
_output_shapes
:h
QTN_REV_3D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTN_REV_3D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTN_REV_3D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTN_REV_3D/strided_sliceStridedSliceQTN_REV_3D/Shape:output:0'QTN_REV_3D/strided_slice/stack:output:0)QTN_REV_3D/strided_slice/stack_1:output:0)QTN_REV_3D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTN_REV_3D/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTN_REV_3D/Reshape/shapePack!QTN_REV_3D/strided_slice:output:0#QTN_REV_3D/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTN_REV_3D/ReshapeReshapeQTN_REV_3D/ExpandDims:output:0!QTN_REV_3D/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????h
QTY_DIMENSIONS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_DIMENSIONS/ExpandDims
ExpandDimsfeatures_qty_dimensions&QTY_DIMENSIONS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????f
QTY_DIMENSIONS/ShapeShape"QTY_DIMENSIONS/ExpandDims:output:0*
T0*
_output_shapes
:l
"QTY_DIMENSIONS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$QTY_DIMENSIONS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$QTY_DIMENSIONS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_DIMENSIONS/strided_sliceStridedSliceQTY_DIMENSIONS/Shape:output:0+QTY_DIMENSIONS/strided_slice/stack:output:0-QTY_DIMENSIONS/strided_slice/stack_1:output:0-QTY_DIMENSIONS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
QTY_DIMENSIONS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_DIMENSIONS/Reshape/shapePack%QTY_DIMENSIONS/strided_slice:output:0'QTY_DIMENSIONS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_DIMENSIONS/ReshapeReshape"QTY_DIMENSIONS/ExpandDims:output:0%QTY_DIMENSIONS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
QTY_PART_LIST/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_PART_LIST/ExpandDims
ExpandDimsfeatures_qty_part_list%QTY_PART_LIST/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????d
QTY_PART_LIST/ShapeShape!QTY_PART_LIST/ExpandDims:output:0*
T0*
_output_shapes
:k
!QTY_PART_LIST/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#QTY_PART_LIST/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#QTY_PART_LIST/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_PART_LIST/strided_sliceStridedSliceQTY_PART_LIST/Shape:output:0*QTY_PART_LIST/strided_slice/stack:output:0,QTY_PART_LIST/strided_slice/stack_1:output:0,QTY_PART_LIST/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
QTY_PART_LIST/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_PART_LIST/Reshape/shapePack$QTY_PART_LIST/strided_slice:output:0&QTY_PART_LIST/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_PART_LIST/ReshapeReshape!QTY_PART_LIST/ExpandDims:output:0$QTY_PART_LIST/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????d
QTY_SHEETS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_SHEETS/ExpandDims
ExpandDimsfeatures_qty_sheets"QTY_SHEETS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????^
QTY_SHEETS/ShapeShapeQTY_SHEETS/ExpandDims:output:0*
T0*
_output_shapes
:h
QTY_SHEETS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 QTY_SHEETS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 QTY_SHEETS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_SHEETS/strided_sliceStridedSliceQTY_SHEETS/Shape:output:0'QTY_SHEETS/strided_slice/stack:output:0)QTY_SHEETS/strided_slice/stack_1:output:0)QTY_SHEETS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
QTY_SHEETS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_SHEETS/Reshape/shapePack!QTY_SHEETS/strided_slice:output:0#QTY_SHEETS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_SHEETS/ReshapeReshapeQTY_SHEETS/ExpandDims:output:0!QTY_SHEETS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#QTY_TEXT_INFORMATION/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_TEXT_INFORMATION/ExpandDims
ExpandDimsfeatures_qty_text_information,QTY_TEXT_INFORMATION/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
QTY_TEXT_INFORMATION/ShapeShape(QTY_TEXT_INFORMATION/ExpandDims:output:0*
T0*
_output_shapes
:r
(QTY_TEXT_INFORMATION/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*QTY_TEXT_INFORMATION/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*QTY_TEXT_INFORMATION/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"QTY_TEXT_INFORMATION/strided_sliceStridedSlice#QTY_TEXT_INFORMATION/Shape:output:01QTY_TEXT_INFORMATION/strided_slice/stack:output:03QTY_TEXT_INFORMATION/strided_slice/stack_1:output:03QTY_TEXT_INFORMATION/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$QTY_TEXT_INFORMATION/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
"QTY_TEXT_INFORMATION/Reshape/shapePack+QTY_TEXT_INFORMATION/strided_slice:output:0-QTY_TEXT_INFORMATION/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_TEXT_INFORMATION/ReshapeReshape(QTY_TEXT_INFORMATION/ExpandDims:output:0+QTY_TEXT_INFORMATION/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
QTY_VIEWS/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
QTY_VIEWS/ExpandDims
ExpandDimsfeatures_qty_views!QTY_VIEWS/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
QTY_VIEWS/ShapeShapeQTY_VIEWS/ExpandDims:output:0*
T0*
_output_shapes
:g
QTY_VIEWS/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
QTY_VIEWS/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
QTY_VIEWS/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
QTY_VIEWS/strided_sliceStridedSliceQTY_VIEWS/Shape:output:0&QTY_VIEWS/strided_slice/stack:output:0(QTY_VIEWS/strided_slice/stack_1:output:0(QTY_VIEWS/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
QTY_VIEWS/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
QTY_VIEWS/Reshape/shapePack QTY_VIEWS/strided_slice:output:0"QTY_VIEWS/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
QTY_VIEWS/ReshapeReshapeQTY_VIEWS/ExpandDims:output:0 QTY_VIEWS/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2!ATP_2D_embedding/Reshape:output:0*DRAWING_CODE_2D_embedding/Reshape:output:0LEAD_TIME/Reshape:output:0MEAN_SIZE_2D/Reshape:output:0MEAN_SIZE_3D/Reshape:output:0QTN_REV_2D/Reshape:output:0QTN_REV_3D/Reshape:output:0QTY_DIMENSIONS/Reshape:output:0QTY_PART_LIST/Reshape:output:0QTY_SHEETS/Reshape:output:0%QTY_TEXT_INFORMATION/Reshape:output:0QTY_VIEWS/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^ATP_2D_embedding/None_Lookup/LookupTableFindV2 ^ATP_2D_embedding/ReadVariableOp8^DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV2)^DRAWING_CODE_2D_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2`
.ATP_2D_embedding/None_Lookup/LookupTableFindV2.ATP_2D_embedding/None_Lookup/LookupTableFindV22B
ATP_2D_embedding/ReadVariableOpATP_2D_embedding/ReadVariableOp2r
7DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV27DRAWING_CODE_2D_embedding/None_Lookup/LookupTableFindV22T
(DRAWING_CODE_2D_embedding/ReadVariableOp(DRAWING_CODE_2D_embedding/ReadVariableOp:T P
#
_output_shapes
:?????????
)
_user_specified_namefeatures/ATP_2D:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/DRAWING_CODE_2D:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/LEAD_TIME:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/MEAN_SIZE_2D:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/MEAN_SIZE_3D:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTN_REV_2D:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTN_REV_3D:\X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/QTY_DIMENSIONS:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/QTY_PART_LIST:X	T
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTY_SHEETS:b
^
#
_output_shapes
:?????????
7
_user_specified_namefeatures/QTY_TEXT_INFORMATION:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?
?
 __inference__initializer_84069134
0table_init91853_lookuptableimportv2_table_handle,
(table_init91853_lookuptableimportv2_keys.
*table_init91853_lookuptableimportv2_values	
identity??#table_init91853/LookupTableImportV2?
#table_init91853/LookupTableImportV2LookupTableImportV20table_init91853_lookuptableimportv2_table_handle(table_init91853_lookuptableimportv2_keys*table_init91853_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: l
NoOpNoOp$^table_init91853/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :8:82J
#table_init91853/LookupTableImportV2#table_init91853/LookupTableImportV2: 

_output_shapes
:8: 

_output_shapes
:8
??
?
#__inference__traced_restore_8407240
file_prefixc
Qassignvariableop_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights:8n
\assignvariableop_1_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights:@
.assignvariableop_2_sequential_1_dense_4_kernel::
,assignvariableop_3_sequential_1_dense_4_bias:@
.assignvariableop_4_sequential_1_dense_5_kernel::
,assignvariableop_5_sequential_1_dense_5_bias:@
.assignvariableop_6_sequential_1_dense_6_kernel::
,assignvariableop_7_sequential_1_dense_6_bias:@
.assignvariableop_8_sequential_1_dense_7_kernel::
,assignvariableop_9_sequential_1_dense_7_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: m
[assignvariableop_19_adam_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights_m:8v
dassignvariableop_20_adam_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights_m:H
6assignvariableop_21_adam_sequential_1_dense_4_kernel_m:B
4assignvariableop_22_adam_sequential_1_dense_4_bias_m:H
6assignvariableop_23_adam_sequential_1_dense_5_kernel_m:B
4assignvariableop_24_adam_sequential_1_dense_5_bias_m:H
6assignvariableop_25_adam_sequential_1_dense_6_kernel_m:B
4assignvariableop_26_adam_sequential_1_dense_6_bias_m:H
6assignvariableop_27_adam_sequential_1_dense_7_kernel_m:B
4assignvariableop_28_adam_sequential_1_dense_7_bias_m:m
[assignvariableop_29_adam_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights_v:8v
dassignvariableop_30_adam_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights_v:H
6assignvariableop_31_adam_sequential_1_dense_4_kernel_v:B
4assignvariableop_32_adam_sequential_1_dense_4_bias_v:H
6assignvariableop_33_adam_sequential_1_dense_5_kernel_v:B
4assignvariableop_34_adam_sequential_1_dense_5_bias_v:H
6assignvariableop_35_adam_sequential_1_dense_6_kernel_v:B
4assignvariableop_36_adam_sequential_1_dense_6_bias_v:H
6assignvariableop_37_adam_sequential_1_dense_7_kernel_v:B
4assignvariableop_38_adam_sequential_1_dense_7_bias_v:
identity_40??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(BSlayer_with_weights-0/ATP_2D_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/DRAWING_CODE_2D_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-0/ATP_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBxlayer_with_weights-0/DRAWING_CODE_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-0/ATP_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBxlayer_with_weights-0/DRAWING_CODE_2D_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpQassignvariableop_sequential_1_dense_features_2_atp_2d_embedding_embedding_weightsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp\assignvariableop_1_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weightsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_sequential_1_dense_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp,assignvariableop_3_sequential_1_dense_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp.assignvariableop_4_sequential_1_dense_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp,assignvariableop_5_sequential_1_dense_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp.assignvariableop_6_sequential_1_dense_6_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp,assignvariableop_7_sequential_1_dense_6_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp.assignvariableop_8_sequential_1_dense_7_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_sequential_1_dense_7_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp[assignvariableop_19_adam_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpdassignvariableop_20_adam_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_sequential_1_dense_4_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_sequential_1_dense_4_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_sequential_1_dense_5_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_sequential_1_dense_5_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_sequential_1_dense_6_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_sequential_1_dense_6_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_sequential_1_dense_7_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_sequential_1_dense_7_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp[assignvariableop_29_adam_sequential_1_dense_features_2_atp_2d_embedding_embedding_weights_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpdassignvariableop_30_adam_sequential_1_dense_features_2_drawing_code_2d_embedding_embedding_weights_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_sequential_1_dense_4_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_sequential_1_dense_4_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_sequential_1_dense_5_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_sequential_1_dense_5_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp6assignvariableop_35_adam_sequential_1_dense_6_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_sequential_1_dense_6_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_sequential_1_dense_7_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp4assignvariableop_38_adam_sequential_1_dense_7_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
2__inference_dense_features_2_layer_call_fn_8406130
features_atp_2d
features_drawing_code_2d
features_lead_time
features_mean_size_2d
features_mean_size_3d
features_qtn_rev_2d
features_qtn_rev_3d
features_qty_dimensions
features_qty_part_list
features_qty_sheets!
features_qty_text_information
features_qty_views
unknown
	unknown_0	
	unknown_1:8
	unknown_2
	unknown_3	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_atp_2dfeatures_drawing_code_2dfeatures_lead_timefeatures_mean_size_2dfeatures_mean_size_3dfeatures_qtn_rev_2dfeatures_qtn_rev_3dfeatures_qty_dimensionsfeatures_qty_part_listfeatures_qty_sheetsfeatures_qty_text_informationfeatures_qty_viewsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8404370o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
#
_output_shapes
:?????????
)
_user_specified_namefeatures/ATP_2D:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/DRAWING_CODE_2D:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/LEAD_TIME:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/MEAN_SIZE_2D:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/MEAN_SIZE_3D:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTN_REV_2D:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTN_REV_3D:\X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/QTY_DIMENSIONS:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/QTY_PART_LIST:X	T
#
_output_shapes
:?????????
-
_user_specified_namefeatures/QTY_SHEETS:b
^
#
_output_shapes
:?????????
7
_user_specified_namefeatures/QTY_TEXT_INFORMATION:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_dense_6_layer_call_fn_8406815

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_8404443o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_6_layer_call_and_return_conditional_losses_8404443

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_7_layer_call_and_return_conditional_losses_8404532

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *%I??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_7_layer_call_fn_8406883

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_8404532o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_7_layer_call_fn_8406878

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_8404478`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_6_layer_call_and_return_conditional_losses_8406853

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_5_layer_call_and_return_conditional_losses_8404430

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_8405348

atp_2d
drawing_code_2d
	lead_time
mean_size_2d
mean_size_3d

qtn_rev_2d

qtn_rev_3d
qty_dimensions
qty_part_list

qty_sheets
qty_text_information
	qty_views
unknown
	unknown_0	
	unknown_1:8
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallatp_2ddrawing_code_2d	lead_timemean_size_2dmean_size_3d
qtn_rev_2d
qtn_rev_3dqty_dimensionsqty_part_list
qty_sheetsqty_text_information	qty_viewsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*%
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_8404054o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameATP_2D:TP
#
_output_shapes
:?????????
)
_user_specified_nameDRAWING_CODE_2D:NJ
#
_output_shapes
:?????????
#
_user_specified_name	LEAD_TIME:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_2D:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_3D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_2D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_3D:SO
#
_output_shapes
:?????????
(
_user_specified_nameQTY_DIMENSIONS:RN
#
_output_shapes
:?????????
'
_user_specified_nameQTY_PART_LIST:O	K
#
_output_shapes
:?????????
$
_user_specified_name
QTY_SHEETS:Y
U
#
_output_shapes
:?????????
.
_user_specified_nameQTY_TEXT_INFORMATION:NJ
#
_output_shapes
:?????????
#
_user_specified_name	QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?
<
__inference__creator_8406905
identity??
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name91854*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?D
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405296

atp_2d
drawing_code_2d
	lead_time
mean_size_2d
mean_size_3d

qtn_rev_2d

qtn_rev_3d
qty_dimensions
qty_part_list

qty_sheets
qty_text_information
	qty_views
dense_features_2_8405258
dense_features_2_8405260	*
dense_features_2_8405262:8
dense_features_2_8405264
dense_features_2_8405266	*
dense_features_2_8405268:!
dense_4_8405271:
dense_4_8405273:!
dense_5_8405277:
dense_5_8405279:!
dense_6_8405283:
dense_6_8405285:!
dense_7_8405289:
dense_7_8405291:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?(dense_features_2/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCalle
dense_features_2/CastCast	lead_time*

DstT0*

SrcT0*#
_output_shapes
:?????????j
dense_features_2/Cast_1Castmean_size_2d*

DstT0*

SrcT0*#
_output_shapes
:?????????j
dense_features_2/Cast_2Castmean_size_3d*

DstT0*

SrcT0*#
_output_shapes
:?????????h
dense_features_2/Cast_3Cast
qtn_rev_2d*

DstT0*

SrcT0*#
_output_shapes
:?????????h
dense_features_2/Cast_4Cast
qtn_rev_3d*

DstT0*

SrcT0*#
_output_shapes
:?????????l
dense_features_2/Cast_5Castqty_dimensions*

DstT0*

SrcT0*#
_output_shapes
:?????????k
dense_features_2/Cast_6Castqty_part_list*

DstT0*

SrcT0*#
_output_shapes
:?????????h
dense_features_2/Cast_7Cast
qty_sheets*

DstT0*

SrcT0*#
_output_shapes
:?????????r
dense_features_2/Cast_8Castqty_text_information*

DstT0*

SrcT0*#
_output_shapes
:?????????g
dense_features_2/Cast_9Cast	qty_views*

DstT0*

SrcT0*#
_output_shapes
:??????????
(dense_features_2/StatefulPartitionedCallStatefulPartitionedCallatp_2ddrawing_code_2ddense_features_2/Cast:y:0dense_features_2/Cast_1:y:0dense_features_2/Cast_2:y:0dense_features_2/Cast_3:y:0dense_features_2/Cast_4:y:0dense_features_2/Cast_5:y:0dense_features_2/Cast_6:y:0dense_features_2/Cast_7:y:0dense_features_2/Cast_8:y:0dense_features_2/Cast_9:y:0dense_features_2_8405258dense_features_2_8405260dense_features_2_8405262dense_features_2_8405264dense_features_2_8405266dense_features_2_8405268*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8404963?
dense_4/StatefulPartitionedCallStatefulPartitionedCall1dense_features_2/StatefulPartitionedCall:output:0dense_4_8405271dense_4_8405273*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_8404395?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_8404631?
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_5_8405277dense_5_8405279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_8404419?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_8404598?
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_6_8405283dense_6_8405285*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_8404443?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_8404565?
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_7_8405289dense_7_8405291*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_8404467?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_8404532y
IdentityIdentity*dropout_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall)^dense_features_2/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2T
(dense_features_2/StatefulPartitionedCall(dense_features_2/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameATP_2D:TP
#
_output_shapes
:?????????
)
_user_specified_nameDRAWING_CODE_2D:NJ
#
_output_shapes
:?????????
#
_user_specified_name	LEAD_TIME:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_2D:QM
#
_output_shapes
:?????????
&
_user_specified_nameMEAN_SIZE_3D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_2D:OK
#
_output_shapes
:?????????
$
_user_specified_name
QTN_REV_3D:SO
#
_output_shapes
:?????????
(
_user_specified_nameQTY_DIMENSIONS:RN
#
_output_shapes
:?????????
'
_user_specified_nameQTY_PART_LIST:O	K
#
_output_shapes
:?????????
$
_user_specified_name
QTY_SHEETS:Y
U
#
_output_shapes
:?????????
.
_user_specified_nameQTY_TEXT_INFORMATION:NJ
#
_output_shapes
:?????????
#
_user_specified_name	QTY_VIEWS:

_output_shapes
: :

_output_shapes
: 
?	
e
F__inference_dropout_4_layer_call_and_return_conditional_losses_8406759

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_6_layer_call_and_return_conditional_losses_8406826

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_7_layer_call_fn_8406862

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_8404467o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
5
ATP_2D+
serving_default_ATP_2D:0?????????
G
DRAWING_CODE_2D4
!serving_default_DRAWING_CODE_2D:0?????????
;
	LEAD_TIME.
serving_default_LEAD_TIME:0?????????
A
MEAN_SIZE_2D1
serving_default_MEAN_SIZE_2D:0?????????
A
MEAN_SIZE_3D1
serving_default_MEAN_SIZE_3D:0?????????
=

QTN_REV_2D/
serving_default_QTN_REV_2D:0?????????
=

QTN_REV_3D/
serving_default_QTN_REV_3D:0?????????
E
QTY_DIMENSIONS3
 serving_default_QTY_DIMENSIONS:0?????????
C
QTY_PART_LIST2
serving_default_QTY_PART_LIST:0?????????
=

QTY_SHEETS/
serving_default_QTY_SHEETS:0?????????
Q
QTY_TEXT_INFORMATION9
&serving_default_QTY_TEXT_INFORMATION:0?????????
;
	QTY_VIEWS.
serving_default_QTY_VIEWS:0?????????>
output_12
StatefulPartitionedCall_2:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
_build_input_shape

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_feature_columns

_resources
&"ATP_2D_embedding/embedding_weights
/+DRAWING_CODE_2D_embedding/embedding_weights"
_tf_keras_layer
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator"
_tf_keras_layer
?
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias"
_tf_keras_layer
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;_random_generator"
_tf_keras_layer
?
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias"
_tf_keras_layer
?
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J_random_generator"
_tf_keras_layer
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias"
_tf_keras_layer
?
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator"
_tf_keras_layer
f
0
1
$2
%3
34
45
B6
C7
Q8
R9"
trackable_list_wrapper
f
0
1
$2
%3
34
45
B6
C7
Q8
R9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
_trace_0
`trace_1
atrace_2
btrace_32?
.__inference_sequential_1_layer_call_fn_8404512
.__inference_sequential_1_layer_call_fn_8405392
.__inference_sequential_1_layer_call_fn_8405436
.__inference_sequential_1_layer_call_fn_8405172?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z_trace_0z`trace_1zatrace_2zbtrace_3
?
ctrace_0
dtrace_1
etrace_2
ftrace_32?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405755
I__inference_sequential_1_layer_call_and_return_conditional_losses_8406102
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405234
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405296?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zctrace_0zdtrace_1zetrace_2zftrace_3
?B?
"__inference__wrapped_model_8404054ATP_2DDRAWING_CODE_2D	LEAD_TIMEMEAN_SIZE_2DMEAN_SIZE_3D
QTN_REV_2D
QTN_REV_3DQTY_DIMENSIONSQTY_PART_LIST
QTY_SHEETSQTY_TEXT_INFORMATION	QTY_VIEWS"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
giter

hbeta_1

ibeta_2
	jdecay
klearning_ratem?m?$m?%m?3m?4m?Bm?Cm?Qm?Rm?v?v?$v?%v?3v?4v?Bv?Cv?Qv?Rv?"
	optimizer
 "
trackable_dict_wrapper
,
lserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
rtrace_0
strace_12?
2__inference_dense_features_2_layer_call_fn_8406130
2__inference_dense_features_2_layer_call_fn_8406158?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zrtrace_0zstrace_1
?
ttrace_0
utrace_12?
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8406435
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8406712?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zttrace_0zutrace_1
 "
trackable_list_wrapper
?

vATP_2D
wDRAWING_CODE_2D"
_generic_user_object
R:P82@sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights
[:Y2Isequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
?
}trace_02?
)__inference_dense_4_layer_call_fn_8406721?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z}trace_0
?
~trace_02?
D__inference_dense_4_layer_call_and_return_conditional_losses_8406732?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z~trace_0
-:+2sequential_1/dense_4/kernel
':%2sequential_1/dense_4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
+__inference_dropout_4_layer_call_fn_8406737
+__inference_dropout_4_layer_call_fn_8406742?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
F__inference_dropout_4_layer_call_and_return_conditional_losses_8406747
F__inference_dropout_4_layer_call_and_return_conditional_losses_8406759?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_5_layer_call_fn_8406768?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_5_layer_call_and_return_conditional_losses_8406779?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
-:+2sequential_1/dense_5/kernel
':%2sequential_1/dense_5/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
+__inference_dropout_5_layer_call_fn_8406784
+__inference_dropout_5_layer_call_fn_8406789?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
F__inference_dropout_5_layer_call_and_return_conditional_losses_8406794
F__inference_dropout_5_layer_call_and_return_conditional_losses_8406806?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_6_layer_call_fn_8406815?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_6_layer_call_and_return_conditional_losses_8406826?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
-:+2sequential_1/dense_6/kernel
':%2sequential_1/dense_6/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
+__inference_dropout_6_layer_call_fn_8406831
+__inference_dropout_6_layer_call_fn_8406836?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
F__inference_dropout_6_layer_call_and_return_conditional_losses_8406841
F__inference_dropout_6_layer_call_and_return_conditional_losses_8406853?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_7_layer_call_fn_8406862?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_7_layer_call_and_return_conditional_losses_8406873?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
-:+2sequential_1/dense_7/kernel
':%2sequential_1/dense_7/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
+__inference_dropout_7_layer_call_fn_8406878
+__inference_dropout_7_layer_call_fn_8406883?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
F__inference_dropout_7_layer_call_and_return_conditional_losses_8406888
F__inference_dropout_7_layer_call_and_return_conditional_losses_8406900?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_sequential_1_layer_call_fn_8404512ATP_2DDRAWING_CODE_2D	LEAD_TIMEMEAN_SIZE_2DMEAN_SIZE_3D
QTN_REV_2D
QTN_REV_3DQTY_DIMENSIONSQTY_PART_LIST
QTY_SHEETSQTY_TEXT_INFORMATION	QTY_VIEWS"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_sequential_1_layer_call_fn_8405392inputs/ATP_2Dinputs/DRAWING_CODE_2Dinputs/LEAD_TIMEinputs/MEAN_SIZE_2Dinputs/MEAN_SIZE_3Dinputs/QTN_REV_2Dinputs/QTN_REV_3Dinputs/QTY_DIMENSIONSinputs/QTY_PART_LISTinputs/QTY_SHEETSinputs/QTY_TEXT_INFORMATIONinputs/QTY_VIEWS"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_sequential_1_layer_call_fn_8405436inputs/ATP_2Dinputs/DRAWING_CODE_2Dinputs/LEAD_TIMEinputs/MEAN_SIZE_2Dinputs/MEAN_SIZE_3Dinputs/QTN_REV_2Dinputs/QTN_REV_3Dinputs/QTY_DIMENSIONSinputs/QTY_PART_LISTinputs/QTY_SHEETSinputs/QTY_TEXT_INFORMATIONinputs/QTY_VIEWS"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_sequential_1_layer_call_fn_8405172ATP_2DDRAWING_CODE_2D	LEAD_TIMEMEAN_SIZE_2DMEAN_SIZE_3D
QTN_REV_2D
QTN_REV_3DQTY_DIMENSIONSQTY_PART_LIST
QTY_SHEETSQTY_TEXT_INFORMATION	QTY_VIEWS"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405755inputs/ATP_2Dinputs/DRAWING_CODE_2Dinputs/LEAD_TIMEinputs/MEAN_SIZE_2Dinputs/MEAN_SIZE_3Dinputs/QTN_REV_2Dinputs/QTN_REV_3Dinputs/QTY_DIMENSIONSinputs/QTY_PART_LISTinputs/QTY_SHEETSinputs/QTY_TEXT_INFORMATIONinputs/QTY_VIEWS"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8406102inputs/ATP_2Dinputs/DRAWING_CODE_2Dinputs/LEAD_TIMEinputs/MEAN_SIZE_2Dinputs/MEAN_SIZE_3Dinputs/QTN_REV_2Dinputs/QTN_REV_3Dinputs/QTY_DIMENSIONSinputs/QTY_PART_LISTinputs/QTY_SHEETSinputs/QTY_TEXT_INFORMATIONinputs/QTY_VIEWS"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405234ATP_2DDRAWING_CODE_2D	LEAD_TIMEMEAN_SIZE_2DMEAN_SIZE_3D
QTN_REV_2D
QTN_REV_3DQTY_DIMENSIONSQTY_PART_LIST
QTY_SHEETSQTY_TEXT_INFORMATION	QTY_VIEWS"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405296ATP_2DDRAWING_CODE_2D	LEAD_TIMEMEAN_SIZE_2DMEAN_SIZE_3D
QTN_REV_2D
QTN_REV_3DQTY_DIMENSIONSQTY_PART_LIST
QTY_SHEETSQTY_TEXT_INFORMATION	QTY_VIEWS"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
%__inference_signature_wrapper_8405348ATP_2DDRAWING_CODE_2D	LEAD_TIMEMEAN_SIZE_2DMEAN_SIZE_3D
QTN_REV_2D
QTN_REV_3DQTY_DIMENSIONSQTY_PART_LIST
QTY_SHEETSQTY_TEXT_INFORMATION	QTY_VIEWS"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
2__inference_dense_features_2_layer_call_fn_8406130features/ATP_2Dfeatures/DRAWING_CODE_2Dfeatures/LEAD_TIMEfeatures/MEAN_SIZE_2Dfeatures/MEAN_SIZE_3Dfeatures/QTN_REV_2Dfeatures/QTN_REV_3Dfeatures/QTY_DIMENSIONSfeatures/QTY_PART_LISTfeatures/QTY_SHEETSfeatures/QTY_TEXT_INFORMATIONfeatures/QTY_VIEWS"?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
2__inference_dense_features_2_layer_call_fn_8406158features/ATP_2Dfeatures/DRAWING_CODE_2Dfeatures/LEAD_TIMEfeatures/MEAN_SIZE_2Dfeatures/MEAN_SIZE_3Dfeatures/QTN_REV_2Dfeatures/QTN_REV_3Dfeatures/QTY_DIMENSIONSfeatures/QTY_PART_LISTfeatures/QTY_SHEETSfeatures/QTY_TEXT_INFORMATIONfeatures/QTY_VIEWS"?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8406435features/ATP_2Dfeatures/DRAWING_CODE_2Dfeatures/LEAD_TIMEfeatures/MEAN_SIZE_2Dfeatures/MEAN_SIZE_3Dfeatures/QTN_REV_2Dfeatures/QTN_REV_3Dfeatures/QTY_DIMENSIONSfeatures/QTY_PART_LISTfeatures/QTY_SHEETSfeatures/QTY_TEXT_INFORMATIONfeatures/QTY_VIEWS"?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8406712features/ATP_2Dfeatures/DRAWING_CODE_2Dfeatures/LEAD_TIMEfeatures/MEAN_SIZE_2Dfeatures/MEAN_SIZE_3Dfeatures/QTN_REV_2Dfeatures/QTN_REV_3Dfeatures/QTY_DIMENSIONSfeatures/QTY_PART_LISTfeatures/QTY_SHEETSfeatures/QTY_TEXT_INFORMATIONfeatures/QTY_VIEWS"?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
2
?ATP_2D_lookup"
_generic_user_object
;
?DRAWING_CODE_2D_lookup"
_generic_user_object
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
?B?
)__inference_dense_4_layer_call_fn_8406721inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_4_layer_call_and_return_conditional_losses_8406732inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
+__inference_dropout_4_layer_call_fn_8406737inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
+__inference_dropout_4_layer_call_fn_8406742inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_dropout_4_layer_call_and_return_conditional_losses_8406747inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_dropout_4_layer_call_and_return_conditional_losses_8406759inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
)__inference_dense_5_layer_call_fn_8406768inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_5_layer_call_and_return_conditional_losses_8406779inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
+__inference_dropout_5_layer_call_fn_8406784inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
+__inference_dropout_5_layer_call_fn_8406789inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_dropout_5_layer_call_and_return_conditional_losses_8406794inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_dropout_5_layer_call_and_return_conditional_losses_8406806inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
)__inference_dense_6_layer_call_fn_8406815inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_6_layer_call_and_return_conditional_losses_8406826inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
+__inference_dropout_6_layer_call_fn_8406831inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
+__inference_dropout_6_layer_call_fn_8406836inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_dropout_6_layer_call_and_return_conditional_losses_8406841inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_dropout_6_layer_call_and_return_conditional_losses_8406853inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
)__inference_dense_7_layer_call_fn_8406862inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_7_layer_call_and_return_conditional_losses_8406873inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
+__inference_dropout_7_layer_call_fn_8406878inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
+__inference_dropout_7_layer_call_fn_8406883inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_dropout_7_layer_call_and_return_conditional_losses_8406888inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_dropout_7_layer_call_and_return_conditional_losses_8406900inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
"
_generic_user_object
?
?trace_02?
__inference__creator_8406905?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
 __inference__initializer_8406913?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_8406918?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
"
_generic_user_object
?
?trace_02?
__inference__creator_8406923?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
 __inference__initializer_8406931?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_8406936?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?B?
__inference__creator_8406905"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
 __inference__initializer_8406913"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_8406918"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__creator_8406923"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
 __inference__initializer_8406931"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_8406936"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
W:U82GAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/m
`:^2PAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/m
2:02"Adam/sequential_1/dense_4/kernel/m
,:*2 Adam/sequential_1/dense_4/bias/m
2:02"Adam/sequential_1/dense_5/kernel/m
,:*2 Adam/sequential_1/dense_5/bias/m
2:02"Adam/sequential_1/dense_6/kernel/m
,:*2 Adam/sequential_1/dense_6/bias/m
2:02"Adam/sequential_1/dense_7/kernel/m
,:*2 Adam/sequential_1/dense_7/bias/m
W:U82GAdam/sequential_1/dense_features_2/ATP_2D_embedding/embedding_weights/v
`:^2PAdam/sequential_1/dense_features_2/DRAWING_CODE_2D_embedding/embedding_weights/v
2:02"Adam/sequential_1/dense_4/kernel/v
,:*2 Adam/sequential_1/dense_4/bias/v
2:02"Adam/sequential_1/dense_5/kernel/v
,:*2 Adam/sequential_1/dense_5/bias/v
2:02"Adam/sequential_1/dense_6/kernel/v
,:*2 Adam/sequential_1/dense_6/bias/v
2:02"Adam/sequential_1/dense_7/kernel/v
,:*2 Adam/sequential_1/dense_7/bias/v
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant8
__inference__creator_8406905?

? 
? "? 8
__inference__creator_8406923?

? 
? "? :
__inference__destroyer_8406918?

? 
? "? :
__inference__destroyer_8406936?

? 
? "? D
 __inference__initializer_8406913 ????

? 
? "? D
 __inference__initializer_8406931 ????

? 
? "? ?
"__inference__wrapped_model_8404054?????$%34BCQR???
???
???
&
ATP_2D?
ATP_2D?????????
8
DRAWING_CODE_2D%?"
DRAWING_CODE_2D?????????
,
	LEAD_TIME?
	LEAD_TIME?????????
2
MEAN_SIZE_2D"?
MEAN_SIZE_2D?????????
2
MEAN_SIZE_3D"?
MEAN_SIZE_3D?????????
.

QTN_REV_2D ?

QTN_REV_2D?????????
.

QTN_REV_3D ?

QTN_REV_3D?????????
6
QTY_DIMENSIONS$?!
QTY_DIMENSIONS?????????
4
QTY_PART_LIST#? 
QTY_PART_LIST?????????
.

QTY_SHEETS ?

QTY_SHEETS?????????
B
QTY_TEXT_INFORMATION*?'
QTY_TEXT_INFORMATION?????????
,
	QTY_VIEWS?
	QTY_VIEWS?????????
? "3?0
.
output_1"?
output_1??????????
D__inference_dense_4_layer_call_and_return_conditional_losses_8406732\$%/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_4_layer_call_fn_8406721O$%/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_dense_5_layer_call_and_return_conditional_losses_8406779\34/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_5_layer_call_fn_8406768O34/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_dense_6_layer_call_and_return_conditional_losses_8406826\BC/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_6_layer_call_fn_8406815OBC/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_dense_7_layer_call_and_return_conditional_losses_8406873\QR/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_7_layer_call_fn_8406862OQR/?,
%?"
 ?
inputs?????????
? "???????????
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8406435?
???????
???
???
/
ATP_2D%?"
features/ATP_2D?????????
A
DRAWING_CODE_2D.?+
features/DRAWING_CODE_2D?????????
5
	LEAD_TIME(?%
features/LEAD_TIME?????????
;
MEAN_SIZE_2D+?(
features/MEAN_SIZE_2D?????????
;
MEAN_SIZE_3D+?(
features/MEAN_SIZE_3D?????????
7

QTN_REV_2D)?&
features/QTN_REV_2D?????????
7

QTN_REV_3D)?&
features/QTN_REV_3D?????????
?
QTY_DIMENSIONS-?*
features/QTY_DIMENSIONS?????????
=
QTY_PART_LIST,?)
features/QTY_PART_LIST?????????
7

QTY_SHEETS)?&
features/QTY_SHEETS?????????
K
QTY_TEXT_INFORMATION3?0
features/QTY_TEXT_INFORMATION?????????
5
	QTY_VIEWS(?%
features/QTY_VIEWS?????????

 
p 
? "%?"
?
0?????????
? ?
M__inference_dense_features_2_layer_call_and_return_conditional_losses_8406712?
???????
???
???
/
ATP_2D%?"
features/ATP_2D?????????
A
DRAWING_CODE_2D.?+
features/DRAWING_CODE_2D?????????
5
	LEAD_TIME(?%
features/LEAD_TIME?????????
;
MEAN_SIZE_2D+?(
features/MEAN_SIZE_2D?????????
;
MEAN_SIZE_3D+?(
features/MEAN_SIZE_3D?????????
7

QTN_REV_2D)?&
features/QTN_REV_2D?????????
7

QTN_REV_3D)?&
features/QTN_REV_3D?????????
?
QTY_DIMENSIONS-?*
features/QTY_DIMENSIONS?????????
=
QTY_PART_LIST,?)
features/QTY_PART_LIST?????????
7

QTY_SHEETS)?&
features/QTY_SHEETS?????????
K
QTY_TEXT_INFORMATION3?0
features/QTY_TEXT_INFORMATION?????????
5
	QTY_VIEWS(?%
features/QTY_VIEWS?????????

 
p
? "%?"
?
0?????????
? ?
2__inference_dense_features_2_layer_call_fn_8406130?
???????
???
???
/
ATP_2D%?"
features/ATP_2D?????????
A
DRAWING_CODE_2D.?+
features/DRAWING_CODE_2D?????????
5
	LEAD_TIME(?%
features/LEAD_TIME?????????
;
MEAN_SIZE_2D+?(
features/MEAN_SIZE_2D?????????
;
MEAN_SIZE_3D+?(
features/MEAN_SIZE_3D?????????
7

QTN_REV_2D)?&
features/QTN_REV_2D?????????
7

QTN_REV_3D)?&
features/QTN_REV_3D?????????
?
QTY_DIMENSIONS-?*
features/QTY_DIMENSIONS?????????
=
QTY_PART_LIST,?)
features/QTY_PART_LIST?????????
7

QTY_SHEETS)?&
features/QTY_SHEETS?????????
K
QTY_TEXT_INFORMATION3?0
features/QTY_TEXT_INFORMATION?????????
5
	QTY_VIEWS(?%
features/QTY_VIEWS?????????

 
p 
? "???????????
2__inference_dense_features_2_layer_call_fn_8406158?
???????
???
???
/
ATP_2D%?"
features/ATP_2D?????????
A
DRAWING_CODE_2D.?+
features/DRAWING_CODE_2D?????????
5
	LEAD_TIME(?%
features/LEAD_TIME?????????
;
MEAN_SIZE_2D+?(
features/MEAN_SIZE_2D?????????
;
MEAN_SIZE_3D+?(
features/MEAN_SIZE_3D?????????
7

QTN_REV_2D)?&
features/QTN_REV_2D?????????
7

QTN_REV_3D)?&
features/QTN_REV_3D?????????
?
QTY_DIMENSIONS-?*
features/QTY_DIMENSIONS?????????
=
QTY_PART_LIST,?)
features/QTY_PART_LIST?????????
7

QTY_SHEETS)?&
features/QTY_SHEETS?????????
K
QTY_TEXT_INFORMATION3?0
features/QTY_TEXT_INFORMATION?????????
5
	QTY_VIEWS(?%
features/QTY_VIEWS?????????

 
p
? "???????????
F__inference_dropout_4_layer_call_and_return_conditional_losses_8406747\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
F__inference_dropout_4_layer_call_and_return_conditional_losses_8406759\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ~
+__inference_dropout_4_layer_call_fn_8406737O3?0
)?&
 ?
inputs?????????
p 
? "??????????~
+__inference_dropout_4_layer_call_fn_8406742O3?0
)?&
 ?
inputs?????????
p
? "???????????
F__inference_dropout_5_layer_call_and_return_conditional_losses_8406794\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
F__inference_dropout_5_layer_call_and_return_conditional_losses_8406806\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ~
+__inference_dropout_5_layer_call_fn_8406784O3?0
)?&
 ?
inputs?????????
p 
? "??????????~
+__inference_dropout_5_layer_call_fn_8406789O3?0
)?&
 ?
inputs?????????
p
? "???????????
F__inference_dropout_6_layer_call_and_return_conditional_losses_8406841\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
F__inference_dropout_6_layer_call_and_return_conditional_losses_8406853\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ~
+__inference_dropout_6_layer_call_fn_8406831O3?0
)?&
 ?
inputs?????????
p 
? "??????????~
+__inference_dropout_6_layer_call_fn_8406836O3?0
)?&
 ?
inputs?????????
p
? "???????????
F__inference_dropout_7_layer_call_and_return_conditional_losses_8406888\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
F__inference_dropout_7_layer_call_and_return_conditional_losses_8406900\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ~
+__inference_dropout_7_layer_call_fn_8406878O3?0
)?&
 ?
inputs?????????
p 
? "??????????~
+__inference_dropout_7_layer_call_fn_8406883O3?0
)?&
 ?
inputs?????????
p
? "???????????
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405234?????$%34BCQR???
???
???
&
ATP_2D?
ATP_2D?????????
8
DRAWING_CODE_2D%?"
DRAWING_CODE_2D?????????
,
	LEAD_TIME?
	LEAD_TIME?????????
2
MEAN_SIZE_2D"?
MEAN_SIZE_2D?????????
2
MEAN_SIZE_3D"?
MEAN_SIZE_3D?????????
.

QTN_REV_2D ?

QTN_REV_2D?????????
.

QTN_REV_3D ?

QTN_REV_3D?????????
6
QTY_DIMENSIONS$?!
QTY_DIMENSIONS?????????
4
QTY_PART_LIST#? 
QTY_PART_LIST?????????
.

QTY_SHEETS ?

QTY_SHEETS?????????
B
QTY_TEXT_INFORMATION*?'
QTY_TEXT_INFORMATION?????????
,
	QTY_VIEWS?
	QTY_VIEWS?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405296?????$%34BCQR???
???
???
&
ATP_2D?
ATP_2D?????????
8
DRAWING_CODE_2D%?"
DRAWING_CODE_2D?????????
,
	LEAD_TIME?
	LEAD_TIME?????????
2
MEAN_SIZE_2D"?
MEAN_SIZE_2D?????????
2
MEAN_SIZE_3D"?
MEAN_SIZE_3D?????????
.

QTN_REV_2D ?

QTN_REV_2D?????????
.

QTN_REV_3D ?

QTN_REV_3D?????????
6
QTY_DIMENSIONS$?!
QTY_DIMENSIONS?????????
4
QTY_PART_LIST#? 
QTY_PART_LIST?????????
.

QTY_SHEETS ?

QTY_SHEETS?????????
B
QTY_TEXT_INFORMATION*?'
QTY_TEXT_INFORMATION?????????
,
	QTY_VIEWS?
	QTY_VIEWS?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8405755?????$%34BCQR???
???
???
-
ATP_2D#? 
inputs/ATP_2D?????????
?
DRAWING_CODE_2D,?)
inputs/DRAWING_CODE_2D?????????
3
	LEAD_TIME&?#
inputs/LEAD_TIME?????????
9
MEAN_SIZE_2D)?&
inputs/MEAN_SIZE_2D?????????
9
MEAN_SIZE_3D)?&
inputs/MEAN_SIZE_3D?????????
5

QTN_REV_2D'?$
inputs/QTN_REV_2D?????????
5

QTN_REV_3D'?$
inputs/QTN_REV_3D?????????
=
QTY_DIMENSIONS+?(
inputs/QTY_DIMENSIONS?????????
;
QTY_PART_LIST*?'
inputs/QTY_PART_LIST?????????
5

QTY_SHEETS'?$
inputs/QTY_SHEETS?????????
I
QTY_TEXT_INFORMATION1?.
inputs/QTY_TEXT_INFORMATION?????????
3
	QTY_VIEWS&?#
inputs/QTY_VIEWS?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_8406102?????$%34BCQR???
???
???
-
ATP_2D#? 
inputs/ATP_2D?????????
?
DRAWING_CODE_2D,?)
inputs/DRAWING_CODE_2D?????????
3
	LEAD_TIME&?#
inputs/LEAD_TIME?????????
9
MEAN_SIZE_2D)?&
inputs/MEAN_SIZE_2D?????????
9
MEAN_SIZE_3D)?&
inputs/MEAN_SIZE_3D?????????
5

QTN_REV_2D'?$
inputs/QTN_REV_2D?????????
5

QTN_REV_3D'?$
inputs/QTN_REV_3D?????????
=
QTY_DIMENSIONS+?(
inputs/QTY_DIMENSIONS?????????
;
QTY_PART_LIST*?'
inputs/QTY_PART_LIST?????????
5

QTY_SHEETS'?$
inputs/QTY_SHEETS?????????
I
QTY_TEXT_INFORMATION1?.
inputs/QTY_TEXT_INFORMATION?????????
3
	QTY_VIEWS&?#
inputs/QTY_VIEWS?????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_1_layer_call_fn_8404512?????$%34BCQR???
???
???
&
ATP_2D?
ATP_2D?????????
8
DRAWING_CODE_2D%?"
DRAWING_CODE_2D?????????
,
	LEAD_TIME?
	LEAD_TIME?????????
2
MEAN_SIZE_2D"?
MEAN_SIZE_2D?????????
2
MEAN_SIZE_3D"?
MEAN_SIZE_3D?????????
.

QTN_REV_2D ?

QTN_REV_2D?????????
.

QTN_REV_3D ?

QTN_REV_3D?????????
6
QTY_DIMENSIONS$?!
QTY_DIMENSIONS?????????
4
QTY_PART_LIST#? 
QTY_PART_LIST?????????
.

QTY_SHEETS ?

QTY_SHEETS?????????
B
QTY_TEXT_INFORMATION*?'
QTY_TEXT_INFORMATION?????????
,
	QTY_VIEWS?
	QTY_VIEWS?????????
p 

 
? "???????????
.__inference_sequential_1_layer_call_fn_8405172?????$%34BCQR???
???
???
&
ATP_2D?
ATP_2D?????????
8
DRAWING_CODE_2D%?"
DRAWING_CODE_2D?????????
,
	LEAD_TIME?
	LEAD_TIME?????????
2
MEAN_SIZE_2D"?
MEAN_SIZE_2D?????????
2
MEAN_SIZE_3D"?
MEAN_SIZE_3D?????????
.

QTN_REV_2D ?

QTN_REV_2D?????????
.

QTN_REV_3D ?

QTN_REV_3D?????????
6
QTY_DIMENSIONS$?!
QTY_DIMENSIONS?????????
4
QTY_PART_LIST#? 
QTY_PART_LIST?????????
.

QTY_SHEETS ?

QTY_SHEETS?????????
B
QTY_TEXT_INFORMATION*?'
QTY_TEXT_INFORMATION?????????
,
	QTY_VIEWS?
	QTY_VIEWS?????????
p

 
? "???????????
.__inference_sequential_1_layer_call_fn_8405392?????$%34BCQR???
???
???
-
ATP_2D#? 
inputs/ATP_2D?????????
?
DRAWING_CODE_2D,?)
inputs/DRAWING_CODE_2D?????????
3
	LEAD_TIME&?#
inputs/LEAD_TIME?????????
9
MEAN_SIZE_2D)?&
inputs/MEAN_SIZE_2D?????????
9
MEAN_SIZE_3D)?&
inputs/MEAN_SIZE_3D?????????
5

QTN_REV_2D'?$
inputs/QTN_REV_2D?????????
5

QTN_REV_3D'?$
inputs/QTN_REV_3D?????????
=
QTY_DIMENSIONS+?(
inputs/QTY_DIMENSIONS?????????
;
QTY_PART_LIST*?'
inputs/QTY_PART_LIST?????????
5

QTY_SHEETS'?$
inputs/QTY_SHEETS?????????
I
QTY_TEXT_INFORMATION1?.
inputs/QTY_TEXT_INFORMATION?????????
3
	QTY_VIEWS&?#
inputs/QTY_VIEWS?????????
p 

 
? "???????????
.__inference_sequential_1_layer_call_fn_8405436?????$%34BCQR???
???
???
-
ATP_2D#? 
inputs/ATP_2D?????????
?
DRAWING_CODE_2D,?)
inputs/DRAWING_CODE_2D?????????
3
	LEAD_TIME&?#
inputs/LEAD_TIME?????????
9
MEAN_SIZE_2D)?&
inputs/MEAN_SIZE_2D?????????
9
MEAN_SIZE_3D)?&
inputs/MEAN_SIZE_3D?????????
5

QTN_REV_2D'?$
inputs/QTN_REV_2D?????????
5

QTN_REV_3D'?$
inputs/QTN_REV_3D?????????
=
QTY_DIMENSIONS+?(
inputs/QTY_DIMENSIONS?????????
;
QTY_PART_LIST*?'
inputs/QTY_PART_LIST?????????
5

QTY_SHEETS'?$
inputs/QTY_SHEETS?????????
I
QTY_TEXT_INFORMATION1?.
inputs/QTY_TEXT_INFORMATION?????????
3
	QTY_VIEWS&?#
inputs/QTY_VIEWS?????????
p

 
? "???????????
%__inference_signature_wrapper_8405348?????$%34BCQR???
? 
???
&
ATP_2D?
ATP_2D?????????
8
DRAWING_CODE_2D%?"
DRAWING_CODE_2D?????????
,
	LEAD_TIME?
	LEAD_TIME?????????
2
MEAN_SIZE_2D"?
MEAN_SIZE_2D?????????
2
MEAN_SIZE_3D"?
MEAN_SIZE_3D?????????
.

QTN_REV_2D ?

QTN_REV_2D?????????
.

QTN_REV_3D ?

QTN_REV_3D?????????
6
QTY_DIMENSIONS$?!
QTY_DIMENSIONS?????????
4
QTY_PART_LIST#? 
QTY_PART_LIST?????????
.

QTY_SHEETS ?

QTY_SHEETS?????????
B
QTY_TEXT_INFORMATION*?'
QTY_TEXT_INFORMATION?????????
,
	QTY_VIEWS?
	QTY_VIEWS?????????"3?0
.
output_1"?
output_1?????????