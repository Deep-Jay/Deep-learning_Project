╞┘
и∙
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
Т
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
┴
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
executor_typestring Ии
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68╧╫
Д
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
: *
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
: *
dtype0
Д
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:@*
dtype0
Д
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
:@*
dtype0
Д
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:@*
dtype0
Д
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:@*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	А@*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:@*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:@ *
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
: *
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

: *
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
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
Д
random_flip_3/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*'
shared_namerandom_flip_3/StateVar
}
*random_flip_3/StateVar/Read/ReadVariableOpReadVariableOprandom_flip_3/StateVar*
_output_shapes
:*
dtype0	
Д
random_zoom_2/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*'
shared_namerandom_zoom_2/StateVar
}
*random_zoom_2/StateVar/Read/ReadVariableOpReadVariableOprandom_zoom_2/StateVar*
_output_shapes
:*
dtype0	
М
random_rotation_2/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*+
shared_namerandom_rotation_2/StateVar
Е
.random_rotation_2/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation_2/StateVar*
_output_shapes
:*
dtype0	
Т
Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_10/kernel/m
Л
+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*&
_output_shapes
: *
dtype0
В
Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_10/bias/m
{
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes
: *
dtype0
Т
Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_11/kernel/m
Л
+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*&
_output_shapes
: @*
dtype0
В
Adam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_11/bias/m
{
)Adam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_12/kernel/m
Л
+Adam/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_12/bias/m
{
)Adam/conv2d_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_13/kernel/m
Л
+Adam/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_13/bias/m
{
)Adam/conv2d_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_14/kernel/m
Л
+Adam/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_14/bias/m
{
)Adam/conv2d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/m*
_output_shapes
:@*
dtype0
З
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_5/kernel/m
А
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	А@*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:@*
dtype0
Ж
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:@ *
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
: *
dtype0
Ж
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_10/kernel/v
Л
+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*&
_output_shapes
: *
dtype0
В
Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_10/bias/v
{
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes
: *
dtype0
Т
Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_11/kernel/v
Л
+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*&
_output_shapes
: @*
dtype0
В
Adam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_11/bias/v
{
)Adam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_12/kernel/v
Л
+Adam/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_12/bias/v
{
)Adam/conv2d_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_13/kernel/v
Л
+Adam/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_13/bias/v
{
)Adam/conv2d_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_14/kernel/v
Л
+Adam/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_14/bias/v
{
)Adam/conv2d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/v*
_output_shapes
:@*
dtype0
З
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_5/kernel/v
А
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	А@*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:@*
dtype0
Ж
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:@ *
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
: *
dtype0
Ж
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
╥Щ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*МЩ
valueБЩB¤Ш BїШ
Є
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
и
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
╖
"layer-0
#layer-1
$layer-2
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses*
ж

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses*
О
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
ж

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses*
О
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
ж

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses*
О
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 
ж

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses*
О
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses* 
ж

ckernel
dbias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses*
О
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses* 
О
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses* 
ж

wkernel
xbias
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses*
н

kernel
	Аbias
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses*
о
Зkernel
	Иbias
Й	variables
Кtrainable_variables
Лregularization_losses
М	keras_api
Н__call__
+О&call_and_return_all_conditional_losses*
П
	Пiter
Рbeta_1
Сbeta_2

Тdecay
Уlearning_rate+m╡,m╢9m╖:m╕Gm╣Hm║Um╗Vm╝cm╜dm╛wm┐xm└m┴	Аm┬	Зm├	Иm─+v┼,v╞9v╟:v╚Gv╔Hv╩Uv╦Vv╠cv═dv╬wv╧xv╨v╤	Аv╥	Зv╙	Иv╘*
}
+0
,1
92
:3
G4
H5
U6
V7
c8
d9
w10
x11
12
А13
З14
И15*
}
+0
,1
92
:3
G4
H5
U6
V7
c8
d9
w10
x11
12
А13
З14
И15*
* 
╡
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Щserving_default* 
Ф
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses* 
Ф
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses* 
* 
* 
* 
Ц
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
* 
* 
о
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п_random_generator
░__call__
+▒&call_and_return_all_conditional_losses*
о
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢_random_generator
╖__call__
+╕&call_and_return_all_conditional_losses*
о
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜_random_generator
╛__call__
+┐&call_and_return_all_conditional_losses*
* 
* 
* 
Ш
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

+0
,1*

+0
,1*
* 
Ш
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

90
:1*

90
:1*
* 
Ш
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_12/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

G0
H1*
* 
Ш
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
▌layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
▐non_trainable_variables
▀layers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

U0
V1*

U0
V1*
* 
Ш
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

c0
d1*

c0
d1*
* 
Ш
эnon_trainable_variables
юlayers
яmetrics
 Ёlayer_regularization_losses
ёlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ц
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

w0
x1*

w0
x1*
* 
Ш
№non_trainable_variables
¤layers
■metrics
  layer_regularization_losses
Аlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
А1*

0
А1*
* 
Ю
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

З0
И1*

З0
И1*
* 
Ю
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Й	variables
Кtrainable_variables
Лregularization_losses
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses*
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
z
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
15*

Л0
М1*
* 
* 
* 
* 
* 
* 
Ь
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses* 
* 
* 
* 

0
1* 
* 
* 
* 
* 
* 
* 
Ь
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
░__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses* 

Ь
_generator*
* 
* 
* 
* 
* 
Ь
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses* 

в
_generator*
* 
* 
* 
* 
* 
Ь
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╛__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses* 

и
_generator*
* 
* 
* 

"0
#1
$2*
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

йtotal

кcount
л	variables
м	keras_api*
M

нtotal

оcount
п
_fn_kwargs
░	variables
▒	keras_api*
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

▓
_state_var*
* 
* 
* 
* 
* 

│
_state_var*
* 
* 
* 
* 
* 

┤
_state_var*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

й0
к1*

л	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

н0
о1*

░	variables*
В|
VARIABLE_VALUErandom_flip_3/StateVarRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUErandom_zoom_2/StateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUErandom_rotation_2/StateVarRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_10/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_10/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_11/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_11/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_12/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_12/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_13/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_13/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_14/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_14/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_10/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_10/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_11/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_11/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_12/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_12/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_13/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_13/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_14/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_14/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Щ
"serving_default_sequential_6_inputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
р
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_6_inputconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_31361
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
г
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*random_flip_3/StateVar/Read/ReadVariableOp*random_zoom_2/StateVar/Read/ReadVariableOp.random_rotation_2/StateVar/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp)Adam/conv2d_11/bias/m/Read/ReadVariableOp+Adam/conv2d_12/kernel/m/Read/ReadVariableOp)Adam/conv2d_12/bias/m/Read/ReadVariableOp+Adam/conv2d_13/kernel/m/Read/ReadVariableOp)Adam/conv2d_13/bias/m/Read/ReadVariableOp+Adam/conv2d_14/kernel/m/Read/ReadVariableOp)Adam/conv2d_14/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp)Adam/conv2d_11/bias/v/Read/ReadVariableOp+Adam/conv2d_12/kernel/v/Read/ReadVariableOp)Adam/conv2d_12/bias/v/Read/ReadVariableOp+Adam/conv2d_13/kernel/v/Read/ReadVariableOp)Adam/conv2d_13/bias/v/Read/ReadVariableOp+Adam/conv2d_14/kernel/v/Read/ReadVariableOp)Adam/conv2d_14/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst*I
TinB
@2>				*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_32576
ю
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1random_flip_3/StateVarrandom_zoom_2/StateVarrandom_rotation_2/StateVarAdam/conv2d_10/kernel/mAdam/conv2d_10/bias/mAdam/conv2d_11/kernel/mAdam/conv2d_11/bias/mAdam/conv2d_12/kernel/mAdam/conv2d_12/bias/mAdam/conv2d_13/kernel/mAdam/conv2d_13/bias/mAdam/conv2d_14/kernel/mAdam/conv2d_14/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/vAdam/conv2d_11/kernel/vAdam/conv2d_11/bias/vAdam/conv2d_12/kernel/vAdam/conv2d_12/bias/vAdam/conv2d_13/kernel/vAdam/conv2d_13/bias/vAdam/conv2d_14/kernel/vAdam/conv2d_14/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*H
TinA
?2=*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_32766╝а
Ъ
h
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29704

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_31854

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_31764

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Лn
┴
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_29951

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИвstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╢
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:         M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :П
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:         P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ╥
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ╥
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         |
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ╥
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         ^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ╥
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╦
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╟
F
*__inference_resizing_1_layer_call_fn_31960

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_29620j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ДЧ
А
H__inference_random_flip_3_layer_call_and_return_conditional_losses_32106

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИв(stateful_uniform_full_int/RngReadAndSkipв*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ┌
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskП
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╧
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЮ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ААТ
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskо
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?░
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :■
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ї
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         √
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╬
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:х
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         Ь
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:ы
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         АА╚
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ААk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?┬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         ╤
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         АА┐
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ААk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: б
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask█
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:         ААМ
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskи
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?п
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :я
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ь
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Й
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Є
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :┐
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:▄
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         Ц
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:т
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         АА┐
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ААh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╣
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         ╚
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         АА╢
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         АА~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:         ААЮ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ЧА
┼
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_32358

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИвstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а┐Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╢
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:         Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╪
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :г
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    б
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Э

Ї
B__inference_dense_5_layer_call_and_return_conditional_losses_30318

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Д
¤
D__inference_conv2d_14_layer_call_and_return_conditional_losses_31874

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Лn
┴
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_32224

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИвstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╢
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:         M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :П
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:         P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ╥
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ╥
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         |
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ╥
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         ^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ╥
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╦
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
▒
╧
G__inference_sequential_7_layer_call_and_return_conditional_losses_30100

inputs!
random_flip_3_30090:	!
random_zoom_2_30093:	%
random_rotation_2_30096:	
identityИв%random_flip_3/StatefulPartitionedCallв)random_rotation_2/StatefulPartitionedCallв%random_zoom_2/StatefulPartitionedCallё
%random_flip_3/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_3_30090*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_30075Щ
%random_zoom_2/StatefulPartitionedCallStatefulPartitionedCall.random_flip_3/StatefulPartitionedCall:output:0random_zoom_2_30093*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_29951е
)random_rotation_2/StatefulPartitionedCallStatefulPartitionedCall.random_zoom_2/StatefulPartitionedCall:output:0random_rotation_2_30096*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29836Л
IdentityIdentity2random_rotation_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА┬
NoOpNoOp&^random_flip_3/StatefulPartitionedCall*^random_rotation_2/StatefulPartitionedCall&^random_zoom_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         АА: : : 2N
%random_flip_3/StatefulPartitionedCall%random_flip_3/StatefulPartitionedCall2V
)random_rotation_2/StatefulPartitionedCall)random_rotation_2/StatefulPartitionedCall2N
%random_zoom_2/StatefulPartitionedCall%random_zoom_2/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ъ
Ю
)__inference_conv2d_13_layer_call_fn_31833

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_30274w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
 
═
,__inference_sequential_8_layer_call_fn_30394
sequential_6_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:	А@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_30359o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_6_input
А	
m
G__inference_sequential_6_layer_call_and_return_conditional_losses_29675
resizing_1_input
identity╧
resizing_1/PartitionedCallPartitionedCallresizing_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_29620ф
rescaling_1/PartitionedCallPartitionedCall#resizing_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_1_layer_call_and_return_conditional_losses_29630v
IdentityIdentity$rescaling_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:c _
1
_output_shapes
:         АА
*
_user_specified_nameresizing_1_input
Д
¤
D__inference_conv2d_12_layer_call_and_return_conditional_losses_31814

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_31794

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┬
}
-__inference_random_flip_3_layer_call_fn_31991

inputs
unknown:	
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_30075y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ъ
h
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_32240

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
т
c
G__inference_sequential_6_layer_call_and_return_conditional_losses_29633

inputs
identity┼
resizing_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_29620ф
rescaling_1/PartitionedCallPartitionedCall#resizing_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_1_layer_call_and_return_conditional_losses_29630v
IdentityIdentity$rescaling_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ы
c
G__inference_sequential_7_layer_call_and_return_conditional_losses_29707

inputs
identity╦
random_flip_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_29692ы
random_zoom_2/PartitionedCallPartitionedCall&random_flip_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_29698є
!random_rotation_2/PartitionedCallPartitionedCall&random_zoom_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29704|
IdentityIdentity*random_rotation_2/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
щ
R
,__inference_sequential_6_layer_call_fn_29669
resizing_1_input
identity╞
PartitionedCallPartitionedCallresizing_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_29661j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:c _
1
_output_shapes
:         АА
*
_user_specified_nameresizing_1_input
╪
▄
G__inference_sequential_7_layer_call_and_return_conditional_losses_30140
random_flip_3_input!
random_flip_3_30130:	!
random_zoom_2_30133:	%
random_rotation_2_30136:	
identityИв%random_flip_3/StatefulPartitionedCallв)random_rotation_2/StatefulPartitionedCallв%random_zoom_2/StatefulPartitionedCall■
%random_flip_3/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_3_inputrandom_flip_3_30130*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_30075Щ
%random_zoom_2/StatefulPartitionedCallStatefulPartitionedCall.random_flip_3/StatefulPartitionedCall:output:0random_zoom_2_30133*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_29951е
)random_rotation_2/StatefulPartitionedCallStatefulPartitionedCall.random_zoom_2/StatefulPartitionedCall:output:0random_rotation_2_30136*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29836Л
IdentityIdentity2random_rotation_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА┬
NoOpNoOp&^random_flip_3/StatefulPartitionedCall*^random_rotation_2/StatefulPartitionedCall&^random_zoom_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         АА: : : 2N
%random_flip_3/StatefulPartitionedCall%random_flip_3/StatefulPartitionedCall2V
)random_rotation_2/StatefulPartitionedCall)random_rotation_2/StatefulPartitionedCall2N
%random_zoom_2/StatefulPartitionedCall%random_zoom_2/StatefulPartitionedCall:f b
1
_output_shapes
:         АА
-
_user_specified_namerandom_flip_3_input
╛
Ф
'__inference_dense_6_layer_call_fn_31924

inputs
unknown:@ 
	unknown_0: 
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_30335o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ю

є
B__inference_dense_7_layer_call_and_return_conditional_losses_30352

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_31884

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╦
Б
1__inference_random_rotation_2_layer_call_fn_32236

inputs
unknown:	
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29836y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Є
Ю
)__inference_conv2d_10_layer_call_fn_31743

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30220y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ■■ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_30161

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
p
G__inference_sequential_7_layer_call_and_return_conditional_losses_30127
random_flip_3_input
identity╪
random_flip_3/PartitionedCallPartitionedCallrandom_flip_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_29692ы
random_zoom_2/PartitionedCallPartitionedCall&random_flip_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_29698є
!random_rotation_2/PartitionedCallPartitionedCall&random_zoom_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29704|
IdentityIdentity*random_rotation_2/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:f b
1
_output_shapes
:         АА
-
_user_specified_namerandom_flip_3_input
Х
c
G__inference_sequential_7_layer_call_and_return_conditional_losses_31411

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╕
L
0__inference_max_pooling2d_11_layer_call_fn_31789

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_30161Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█
┴
,__inference_sequential_8_layer_call_fn_30814

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:	А@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_30359o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ц
d
H__inference_random_flip_3_layer_call_and_return_conditional_losses_31995

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╪A
н
G__inference_sequential_8_layer_call_and_return_conditional_losses_30359

inputs)
conv2d_10_30221: 
conv2d_10_30223: )
conv2d_11_30239: @
conv2d_11_30241:@)
conv2d_12_30257:@@
conv2d_12_30259:@)
conv2d_13_30275:@@
conv2d_13_30277:@)
conv2d_14_30293:@@
conv2d_14_30295:@ 
dense_5_30319:	А@
dense_5_30321:@
dense_6_30336:@ 
dense_6_30338: 
dense_7_30353: 
dense_7_30355:
identityИв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв!conv2d_12/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCall╔
sequential_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_29633ш
sequential_7/PartitionedCallPartitionedCall%sequential_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_29707Ъ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall%sequential_7/PartitionedCall:output:0conv2d_10_30221conv2d_10_30223*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30220є
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_30149Ь
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_30239conv2d_11_30241*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30238є
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_30161Ь
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0conv2d_12_30257conv2d_12_30259*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_30256є
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_30173Ь
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_13_30275conv2d_13_30277*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_30274є
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_30185Ь
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_14_30293conv2d_14_30295*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_30292є
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_30197▌
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_30305Е
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_5_30319dense_5_30321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_30318Л
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_30336dense_6_30338*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_30335Л
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_30353dense_7_30355*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_30352w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         р
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╓
П
,__inference_sequential_8_layer_call_fn_30857

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@#
	unknown_6:@@
	unknown_7:@#
	unknown_8:@@
	unknown_9:@$

unknown_10:@@

unknown_11:@

unknown_12:	А@

unknown_13:@

unknown_14:@ 

unknown_15: 

unknown_16: 

unknown_17:
identityИвStatefulPartitionedCall╛
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_30577o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         АА: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Щ

є
B__inference_dense_6_layer_call_and_return_conditional_losses_30335

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:          a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
№A
╣
G__inference_sequential_8_layer_call_and_return_conditional_losses_30713
sequential_6_input)
conv2d_10_30666: 
conv2d_10_30668: )
conv2d_11_30672: @
conv2d_11_30674:@)
conv2d_12_30678:@@
conv2d_12_30680:@)
conv2d_13_30684:@@
conv2d_13_30686:@)
conv2d_14_30690:@@
conv2d_14_30692:@ 
dense_5_30697:	А@
dense_5_30699:@
dense_6_30702:@ 
dense_6_30704: 
dense_7_30707: 
dense_7_30709:
identityИв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв!conv2d_12/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCall╒
sequential_6/PartitionedCallPartitionedCallsequential_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_29633ш
sequential_7/PartitionedCallPartitionedCall%sequential_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_29707Ъ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall%sequential_7/PartitionedCall:output:0conv2d_10_30666conv2d_10_30668*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30220є
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_30149Ь
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_30672conv2d_11_30674*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30238є
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_30161Ь
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0conv2d_12_30678conv2d_12_30680*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_30256є
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_30173Ь
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_13_30684conv2d_13_30686*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_30274є
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_30185Ь
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_14_30690conv2d_14_30692*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_30292є
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_30197▌
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_30305Е
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_5_30697dense_5_30699*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_30318Л
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_30702dense_6_30704*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_30335Л
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_30707dense_7_30709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_30352w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         р
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_6_input
╧
─
#__inference_signature_wrapper_31361
sequential_6_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:	А@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_29607o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_6_input
╞
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_30305

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
═
I
-__inference_random_zoom_2_layer_call_fn_32111

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_29698j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
п
a
E__inference_resizing_1_layer_call_and_return_conditional_losses_31966

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
п
E
)__inference_flatten_2_layer_call_fn_31889

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_30305a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
·
Ы
,__inference_sequential_8_layer_call_fn_30661
sequential_6_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@#
	unknown_6:@@
	unknown_7:@#
	unknown_8:@@
	unknown_9:@$

unknown_10:@@

unknown_11:@

unknown_12:	А@

unknown_13:@

unknown_14:@ 

unknown_15: 

unknown_16: 

unknown_17:
identityИвStatefulPartitionedCall╩
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_30577o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         АА: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_6_input
╔
G
+__inference_rescaling_1_layer_call_fn_31971

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_1_layer_call_and_return_conditional_losses_29630j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Д
¤
D__inference_conv2d_14_layer_call_and_return_conditional_losses_30292

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
їv
╠
__inference__traced_save_32576
file_prefix/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop/
+savev2_conv2d_12_kernel_read_readvariableop-
)savev2_conv2d_12_bias_read_readvariableop/
+savev2_conv2d_13_kernel_read_readvariableop-
)savev2_conv2d_13_bias_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_random_flip_3_statevar_read_readvariableop	5
1savev2_random_zoom_2_statevar_read_readvariableop	9
5savev2_random_rotation_2_statevar_read_readvariableop	6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop4
0savev2_adam_conv2d_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop4
0savev2_adam_conv2d_11_bias_m_read_readvariableop6
2savev2_adam_conv2d_12_kernel_m_read_readvariableop4
0savev2_adam_conv2d_12_bias_m_read_readvariableop6
2savev2_adam_conv2d_13_kernel_m_read_readvariableop4
0savev2_adam_conv2d_13_bias_m_read_readvariableop6
2savev2_adam_conv2d_14_kernel_m_read_readvariableop4
0savev2_adam_conv2d_14_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop4
0savev2_adam_conv2d_10_bias_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop4
0savev2_adam_conv2d_11_bias_v_read_readvariableop6
2savev2_adam_conv2d_12_kernel_v_read_readvariableop4
0savev2_adam_conv2d_12_bias_v_read_readvariableop6
2savev2_adam_conv2d_13_kernel_v_read_readvariableop4
0savev2_adam_conv2d_13_bias_v_read_readvariableop6
2savev2_adam_conv2d_14_kernel_v_read_readvariableop4
0savev2_adam_conv2d_14_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: У"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*╝!
value▓!Bп!=B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHъ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*П
valueЕBВ=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ▌
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop+savev2_conv2d_12_kernel_read_readvariableop)savev2_conv2d_12_bias_read_readvariableop+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_random_flip_3_statevar_read_readvariableop1savev2_random_zoom_2_statevar_read_readvariableop5savev2_random_rotation_2_statevar_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop0savev2_adam_conv2d_11_bias_m_read_readvariableop2savev2_adam_conv2d_12_kernel_m_read_readvariableop0savev2_adam_conv2d_12_bias_m_read_readvariableop2savev2_adam_conv2d_13_kernel_m_read_readvariableop0savev2_adam_conv2d_13_bias_m_read_readvariableop2savev2_adam_conv2d_14_kernel_m_read_readvariableop0savev2_adam_conv2d_14_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop0savev2_adam_conv2d_11_bias_v_read_readvariableop2savev2_adam_conv2d_12_kernel_v_read_readvariableop0savev2_adam_conv2d_12_bias_v_read_readvariableop2savev2_adam_conv2d_13_kernel_v_read_readvariableop0savev2_adam_conv2d_13_bias_v_read_readvariableop2savev2_adam_conv2d_14_kernel_v_read_readvariableop0savev2_adam_conv2d_14_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *K
dtypesA
?2=				Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*╕
_input_shapesж
г: : : : @:@:@@:@:@@:@:@@:@:	А@:@:@ : : :: : : : : : : : : :::: : : @:@:@@:@:@@:@:@@:@:	А@:@:@ : : :: : : @:@:@@:@:@@:@:@@:@:	А@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::
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
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @:  

_output_shapes
:@:,!(
&
_output_shapes
:@@: "

_output_shapes
:@:,#(
&
_output_shapes
:@@: $

_output_shapes
:@:,%(
&
_output_shapes
:@@: &

_output_shapes
:@:%'!

_output_shapes
:	А@: (

_output_shapes
:@:$) 

_output_shapes

:@ : *

_output_shapes
: :$+ 

_output_shapes

: : ,

_output_shapes
::,-(
&
_output_shapes
: : .

_output_shapes
: :,/(
&
_output_shapes
: @: 0

_output_shapes
:@:,1(
&
_output_shapes
:@@: 2

_output_shapes
:@:,3(
&
_output_shapes
:@@: 4

_output_shapes
:@:,5(
&
_output_shapes
:@@: 6

_output_shapes
:@:%7!

_output_shapes
:	А@: 8

_output_shapes
:@:$9 

_output_shapes

:@ : :

_output_shapes
: :$; 

_output_shapes

: : <

_output_shapes
::=

_output_shapes
: 
╦
H
,__inference_sequential_7_layer_call_fn_31396

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_29707j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_30197

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_31824

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╕
L
0__inference_max_pooling2d_13_layer_call_fn_31849

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_30185Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
П
о
,__inference_sequential_7_layer_call_fn_31407

inputs
unknown:	
	unknown_0:	
	unknown_1:	
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_30100y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         АА: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╦
H
,__inference_sequential_6_layer_call_fn_31371

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_29661j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
т
c
G__inference_sequential_6_layer_call_and_return_conditional_losses_29661

inputs
identity┼
resizing_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_29620ф
rescaling_1/PartitionedCallPartitionedCall#resizing_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_1_layer_call_and_return_conditional_losses_29630v
IdentityIdentity$rescaling_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
┬
}
-__inference_random_zoom_2_layer_call_fn_32118

inputs
unknown:	
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_29951y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
°
b
F__inference_rescaling_1_layer_call_and_return_conditional_losses_29630

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:         ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:         ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Д
¤
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30238

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         }}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         }}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
║Y
╟
G__inference_sequential_8_layer_call_and_return_conditional_losses_30930

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@B
(conv2d_12_conv2d_readvariableop_resource:@@7
)conv2d_12_biasadd_readvariableop_resource:@B
(conv2d_13_conv2d_readvariableop_resource:@@7
)conv2d_13_biasadd_readvariableop_resource:@B
(conv2d_14_conv2d_readvariableop_resource:@@7
)conv2d_14_biasadd_readvariableop_resource:@9
&dense_5_matmul_readvariableop_resource:	А@5
'dense_5_biasadd_readvariableop_resource:@8
&dense_6_matmul_readvariableop_resource:@ 5
'dense_6_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: 5
'dense_7_biasadd_readvariableop_resource:
identityИв conv2d_10/BiasAdd/ReadVariableOpвconv2d_10/Conv2D/ReadVariableOpв conv2d_11/BiasAdd/ReadVariableOpвconv2d_11/Conv2D/ReadVariableOpв conv2d_12/BiasAdd/ReadVariableOpвconv2d_12/Conv2D/ReadVariableOpв conv2d_13/BiasAdd/ReadVariableOpвconv2d_13/Conv2D/ReadVariableOpв conv2d_14/BiasAdd/ReadVariableOpвconv2d_14/Conv2D/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвdense_7/BiasAdd/ReadVariableOpвdense_7/MatMul/ReadVariableOpt
#sequential_6/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ╦
-sequential_6/resizing_1/resize/ResizeBilinearResizeBilinearinputs,sequential_6/resizing_1/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(d
sequential_6/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;f
!sequential_6/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ╔
sequential_6/rescaling_1/mulMul>sequential_6/resizing_1/resize/ResizeBilinear:resized_images:0(sequential_6/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:         ААп
sequential_6/rescaling_1/addAddV2 sequential_6/rescaling_1/mul:z:0*sequential_6/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААР
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╩
conv2d_10/Conv2DConv2D sequential_6/rescaling_1/add:z:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
paddingVALID*
strides
Ж
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Э
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ n
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*1
_output_shapes
:         ■■ о
max_pooling2d_10/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Р
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╔
conv2d_11/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
paddingVALID*
strides
Ж
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:         }}@о
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:         >>@*
ksize
*
paddingVALID*
strides
Р
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv2d_12/Conv2DConv2D!max_pooling2d_11/MaxPool:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
Ж
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@l
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:         <<@о
max_pooling2d_12/MaxPoolMaxPoolconv2d_12/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Р
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv2d_13/Conv2DConv2D!max_pooling2d_12/MaxPool:output:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ж
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @l
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:         @о
max_pooling2d_13/MaxPoolMaxPoolconv2d_13/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Р
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv2d_14/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ж
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @l
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:         @о
max_pooling2d_14/MaxPoolMaxPoolconv2d_14/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  М
flatten_2/ReshapeReshape!max_pooling2d_14/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:         АЕ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Н
dense_5/MatMulMatMulflatten_2/Reshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @`
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:         @Д
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0Н
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          В
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          `
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:          Д
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Н
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         т
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
г	
c
G__inference_sequential_6_layer_call_and_return_conditional_losses_31391

inputs
identityg
resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ▒
 resizing_1/resize/ResizeBilinearResizeBilinearinputsresizing_1/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(W
rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;Y
rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    в
rescaling_1/mulMul1resizing_1/resize/ResizeBilinear:resized_images:0rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:         ААИ
rescaling_1/addAddV2rescaling_1/mul:z:0rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААe
IdentityIdentityrescaling_1/add:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Э

Ї
B__inference_dense_5_layer_call_and_return_conditional_losses_31915

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╕
L
0__inference_max_pooling2d_10_layer_call_fn_31759

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_30149Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ля
д%
!__inference__traced_restore_32766
file_prefix;
!assignvariableop_conv2d_10_kernel: /
!assignvariableop_1_conv2d_10_bias: =
#assignvariableop_2_conv2d_11_kernel: @/
!assignvariableop_3_conv2d_11_bias:@=
#assignvariableop_4_conv2d_12_kernel:@@/
!assignvariableop_5_conv2d_12_bias:@=
#assignvariableop_6_conv2d_13_kernel:@@/
!assignvariableop_7_conv2d_13_bias:@=
#assignvariableop_8_conv2d_14_kernel:@@/
!assignvariableop_9_conv2d_14_bias:@5
"assignvariableop_10_dense_5_kernel:	А@.
 assignvariableop_11_dense_5_bias:@4
"assignvariableop_12_dense_6_kernel:@ .
 assignvariableop_13_dense_6_bias: 4
"assignvariableop_14_dense_7_kernel: .
 assignvariableop_15_dense_7_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: 8
*assignvariableop_25_random_flip_3_statevar:	8
*assignvariableop_26_random_zoom_2_statevar:	<
.assignvariableop_27_random_rotation_2_statevar:	E
+assignvariableop_28_adam_conv2d_10_kernel_m: 7
)assignvariableop_29_adam_conv2d_10_bias_m: E
+assignvariableop_30_adam_conv2d_11_kernel_m: @7
)assignvariableop_31_adam_conv2d_11_bias_m:@E
+assignvariableop_32_adam_conv2d_12_kernel_m:@@7
)assignvariableop_33_adam_conv2d_12_bias_m:@E
+assignvariableop_34_adam_conv2d_13_kernel_m:@@7
)assignvariableop_35_adam_conv2d_13_bias_m:@E
+assignvariableop_36_adam_conv2d_14_kernel_m:@@7
)assignvariableop_37_adam_conv2d_14_bias_m:@<
)assignvariableop_38_adam_dense_5_kernel_m:	А@5
'assignvariableop_39_adam_dense_5_bias_m:@;
)assignvariableop_40_adam_dense_6_kernel_m:@ 5
'assignvariableop_41_adam_dense_6_bias_m: ;
)assignvariableop_42_adam_dense_7_kernel_m: 5
'assignvariableop_43_adam_dense_7_bias_m:E
+assignvariableop_44_adam_conv2d_10_kernel_v: 7
)assignvariableop_45_adam_conv2d_10_bias_v: E
+assignvariableop_46_adam_conv2d_11_kernel_v: @7
)assignvariableop_47_adam_conv2d_11_bias_v:@E
+assignvariableop_48_adam_conv2d_12_kernel_v:@@7
)assignvariableop_49_adam_conv2d_12_bias_v:@E
+assignvariableop_50_adam_conv2d_13_kernel_v:@@7
)assignvariableop_51_adam_conv2d_13_bias_v:@E
+assignvariableop_52_adam_conv2d_14_kernel_v:@@7
)assignvariableop_53_adam_conv2d_14_bias_v:@<
)assignvariableop_54_adam_dense_5_kernel_v:	А@5
'assignvariableop_55_adam_dense_5_bias_v:@;
)assignvariableop_56_adam_dense_6_kernel_v:@ 5
'assignvariableop_57_adam_dense_6_bias_v: ;
)assignvariableop_58_adam_dense_7_kernel_v: 5
'assignvariableop_59_adam_dense_7_bias_v:
identity_61ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ц"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*╝!
value▓!Bп!=B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHэ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*П
valueЕBВ=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╥
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesў
Ї:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*K
dtypesA
?2=				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_12_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_12_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_13_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_13_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_14_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_14_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_7_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_7_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:Ы
AssignVariableOp_25AssignVariableOp*assignvariableop_25_random_flip_3_statevarIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:Ы
AssignVariableOp_26AssignVariableOp*assignvariableop_26_random_zoom_2_statevarIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0	*
_output_shapes
:Я
AssignVariableOp_27AssignVariableOp.assignvariableop_27_random_rotation_2_statevarIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_10_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_conv2d_10_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_11_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_conv2d_11_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_12_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_12_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_13_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_13_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_14_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_14_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_5_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_5_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_6_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_6_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_7_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_7_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_conv2d_10_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_conv2d_10_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_conv2d_11_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_conv2d_11_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_conv2d_12_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_conv2d_12_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_conv2d_13_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_conv2d_13_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv2d_14_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_conv2d_14_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_dense_5_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_dense_5_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_dense_6_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_dense_6_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_7_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_7_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ў

Identity_60Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_61IdentityIdentity_60:output:0^NoOp_1*
T0*
_output_shapes
: ф

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_61Identity_61:output:0*Н
_input_shapes|
z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ц
d
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_32122

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
┴
Х
'__inference_dense_5_layer_call_fn_31904

inputs
unknown:	А@
	unknown_0:@
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_30318o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
█D
╞
G__inference_sequential_8_layer_call_and_return_conditional_losses_30771
sequential_6_input 
sequential_7_30717:	 
sequential_7_30719:	 
sequential_7_30721:	)
conv2d_10_30724: 
conv2d_10_30726: )
conv2d_11_30730: @
conv2d_11_30732:@)
conv2d_12_30736:@@
conv2d_12_30738:@)
conv2d_13_30742:@@
conv2d_13_30744:@)
conv2d_14_30748:@@
conv2d_14_30750:@ 
dense_5_30755:	А@
dense_5_30757:@
dense_6_30760:@ 
dense_6_30762: 
dense_7_30765: 
dense_7_30767:
identityИв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв!conv2d_12/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallв$sequential_7/StatefulPartitionedCall╒
sequential_6/PartitionedCallPartitionedCallsequential_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_29661╖
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall%sequential_6/PartitionedCall:output:0sequential_7_30717sequential_7_30719sequential_7_30721*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_30100в
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall-sequential_7/StatefulPartitionedCall:output:0conv2d_10_30724conv2d_10_30726*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30220є
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_30149Ь
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_30730conv2d_11_30732*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30238є
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_30161Ь
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0conv2d_12_30736conv2d_12_30738*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_30256є
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_30173Ь
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_13_30742conv2d_13_30744*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_30274є
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_30185Ь
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_14_30748conv2d_14_30750*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_30292є
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_30197▌
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_30305Е
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_5_30755dense_5_30757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_30318Л
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_30760dense_6_30762*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_30335Л
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_30765dense_7_30767*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_30352w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         З
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         АА: : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_6_input
╦
H
,__inference_sequential_6_layer_call_fn_31366

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_29633j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Д
¤
D__inference_conv2d_13_layer_call_and_return_conditional_losses_31844

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ц
d
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_29698

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Р
¤
D__inference_conv2d_10_layer_call_and_return_conditional_losses_31754

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ■■ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ■■ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Д
¤
D__inference_conv2d_12_layer_call_and_return_conditional_losses_30256

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs
а╘
Э
G__inference_sequential_7_layer_call_and_return_conditional_losses_31734

inputsM
?random_flip_3_stateful_uniform_full_int_rngreadandskip_resource:	D
6random_zoom_2_stateful_uniform_rngreadandskip_resource:	H
:random_rotation_2_stateful_uniform_rngreadandskip_resource:	
identityИв6random_flip_3/stateful_uniform_full_int/RngReadAndSkipв8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipв1random_rotation_2/stateful_uniform/RngReadAndSkipв-random_zoom_2/stateful_uniform/RngReadAndSkipw
-random_flip_3/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip_3/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ┼
,random_flip_3/stateful_uniform_full_int/ProdProd6random_flip_3/stateful_uniform_full_int/shape:output:06random_flip_3/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: p
.random_flip_3/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Э
.random_flip_3/stateful_uniform_full_int/Cast_1Cast5random_flip_3/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Т
6random_flip_3/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip?random_flip_3_stateful_uniform_full_int_rngreadandskip_resource7random_flip_3/stateful_uniform_full_int/Cast/x:output:02random_flip_3/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Е
;random_flip_3/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=random_flip_3/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_flip_3/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
5random_flip_3/stateful_uniform_full_int/strided_sliceStridedSlice>random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip_3/stateful_uniform_full_int/strided_slice/stack:output:0Frandom_flip_3/stateful_uniform_full_int/strided_slice/stack_1:output:0Frandom_flip_3/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskл
/random_flip_3/stateful_uniform_full_int/BitcastBitcast>random_flip_3/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0З
=random_flip_3/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
7random_flip_3/stateful_uniform_full_int/strided_slice_1StridedSlice>random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0Frandom_flip_3/stateful_uniform_full_int/strided_slice_1/stack:output:0Hrandom_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Hrandom_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:п
1random_flip_3/stateful_uniform_full_int/Bitcast_1Bitcast@random_flip_3/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip_3/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :╫
'random_flip_3/stateful_uniform_full_intStatelessRandomUniformFullIntV26random_flip_3/stateful_uniform_full_int/shape:output:0:random_flip_3/stateful_uniform_full_int/Bitcast_1:output:08random_flip_3/stateful_uniform_full_int/Bitcast:output:04random_flip_3/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip_3/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R в
random_flip_3/stackPack0random_flip_3/stateful_uniform_full_int:output:0!random_flip_3/zeros_like:output:0*
N*
T0	*
_output_shapes

:r
!random_flip_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╜
random_flip_3/strided_sliceStridedSlicerandom_flip_3/stack:output:0*random_flip_3/strided_slice/stack:output:0,random_flip_3/strided_slice/stack_1:output:0,random_flip_3/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskм
Arandom_flip_3/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ААо
4random_flip_3/stateless_random_flip_left_right/ShapeShapeJrandom_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:М
Brandom_flip_3/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: О
Drandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:О
Drandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╝
<random_flip_3/stateless_random_flip_left_right/strided_sliceStridedSlice=random_flip_3/stateless_random_flip_left_right/Shape:output:0Krandom_flip_3/stateless_random_flip_left_right/strided_slice/stack:output:0Mrandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_1:output:0Mrandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╩
Mrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shapePackErandom_flip_3/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:Р
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╠
drandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip_3/strided_slice:output:0* 
_output_shapes
::ж
drandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :─
`random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Vrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0jrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0nrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0mrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         Я
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/subSubTrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Trandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ╝
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mulMulirandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Orandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         е
Grandom_flip_3/stateless_random_flip_left_right/stateless_random_uniformAddV2Orandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Trandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         А
>random_flip_3/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :А
>random_flip_3/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :А
>random_flip_3/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ф
<random_flip_3/stateless_random_flip_left_right/Reshape/shapePackErandom_flip_3/stateless_random_flip_left_right/strided_slice:output:0Grandom_flip_3/stateless_random_flip_left_right/Reshape/shape/1:output:0Grandom_flip_3/stateless_random_flip_left_right/Reshape/shape/2:output:0Grandom_flip_3/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:П
6random_flip_3/stateless_random_flip_left_right/ReshapeReshapeKrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform:z:0Erandom_flip_3/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         ╕
4random_flip_3/stateless_random_flip_left_right/RoundRound?random_flip_3/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         З
=random_flip_3/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Х
8random_flip_3/stateless_random_flip_left_right/ReverseV2	ReverseV2Jrandom_flip_3/stateless_random_flip_left_right/control_dependency:output:0Frandom_flip_3/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ААЄ
2random_flip_3/stateless_random_flip_left_right/mulMul8random_flip_3/stateless_random_flip_left_right/Round:y:0Arandom_flip_3/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ААy
4random_flip_3/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ь
2random_flip_3/stateless_random_flip_left_right/subSub=random_flip_3/stateless_random_flip_left_right/sub/x:output:08random_flip_3/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         √
4random_flip_3/stateless_random_flip_left_right/mul_1Mul6random_flip_3/stateless_random_flip_left_right/sub:z:0Jrandom_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ААщ
2random_flip_3/stateless_random_flip_left_right/addAddV26random_flip_3/stateless_random_flip_left_right/mul:z:08random_flip_3/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ААy
/random_flip_3/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:y
/random_flip_3/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ╦
.random_flip_3/stateful_uniform_full_int_1/ProdProd8random_flip_3/stateful_uniform_full_int_1/shape:output:08random_flip_3/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: r
0random_flip_3/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :б
0random_flip_3/stateful_uniform_full_int_1/Cast_1Cast7random_flip_3/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╤
8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip?random_flip_3_stateful_uniform_full_int_rngreadandskip_resource9random_flip_3/stateful_uniform_full_int_1/Cast/x:output:04random_flip_3/stateful_uniform_full_int_1/Cast_1:y:07^random_flip_3/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:З
=random_flip_3/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
7random_flip_3/stateful_uniform_full_int_1/strided_sliceStridedSlice@random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip_3/stateful_uniform_full_int_1/strided_slice/stack:output:0Hrandom_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Hrandom_flip_3/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskп
1random_flip_3/stateful_uniform_full_int_1/BitcastBitcast@random_flip_3/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Й
?random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Л
Arandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Л
Arandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
9random_flip_3/stateful_uniform_full_int_1/strided_slice_1StridedSlice@random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0Hrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Jrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Jrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:│
3random_flip_3/stateful_uniform_full_int_1/Bitcast_1BitcastBrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-random_flip_3/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :с
)random_flip_3/stateful_uniform_full_int_1StatelessRandomUniformFullIntV28random_flip_3/stateful_uniform_full_int_1/shape:output:0<random_flip_3/stateful_uniform_full_int_1/Bitcast_1:output:0:random_flip_3/stateful_uniform_full_int_1/Bitcast:output:06random_flip_3/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	d
random_flip_3/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R и
random_flip_3/stack_1Pack2random_flip_3/stateful_uniform_full_int_1:output:0#random_flip_3/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:t
#random_flip_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%random_flip_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%random_flip_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
random_flip_3/strided_slice_1StridedSlicerandom_flip_3/stack_1:output:0,random_flip_3/strided_slice_1/stack:output:0.random_flip_3/strided_slice_1/stack_1:output:0.random_flip_3/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЕ
>random_flip_3/stateless_random_flip_up_down/control_dependencyIdentity6random_flip_3/stateless_random_flip_left_right/add:z:0*
T0*E
_class;
97loc:@random_flip_3/stateless_random_flip_left_right/add*1
_output_shapes
:         ААи
1random_flip_3/stateless_random_flip_up_down/ShapeShapeGrandom_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:Й
?random_flip_3/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Л
Arandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Л
Arandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:н
9random_flip_3/stateless_random_flip_up_down/strided_sliceStridedSlice:random_flip_3/stateless_random_flip_up_down/Shape:output:0Hrandom_flip_3/stateless_random_flip_up_down/strided_slice/stack:output:0Jrandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_1:output:0Jrandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask─
Jrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shapePackBrandom_flip_3/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Н
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╦
arandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter&random_flip_3/strided_slice_1:output:0* 
_output_shapes
::г
arandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :╡
]random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Srandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0grandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0krandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0jrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         Ц
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/subSubQrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Qrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: │
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mulMulfrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Lrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Ь
Drandom_flip_3/stateless_random_flip_up_down/stateless_random_uniformAddV2Lrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Qrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         }
;random_flip_3/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :}
;random_flip_3/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :}
;random_flip_3/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Е
9random_flip_3/stateless_random_flip_up_down/Reshape/shapePackBrandom_flip_3/stateless_random_flip_up_down/strided_slice:output:0Drandom_flip_3/stateless_random_flip_up_down/Reshape/shape/1:output:0Drandom_flip_3/stateless_random_flip_up_down/Reshape/shape/2:output:0Drandom_flip_3/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ж
3random_flip_3/stateless_random_flip_up_down/ReshapeReshapeHrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform:z:0Brandom_flip_3/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         ▓
1random_flip_3/stateless_random_flip_up_down/RoundRound<random_flip_3/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         Д
:random_flip_3/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:М
5random_flip_3/stateless_random_flip_up_down/ReverseV2	ReverseV2Grandom_flip_3/stateless_random_flip_up_down/control_dependency:output:0Crandom_flip_3/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ААщ
/random_flip_3/stateless_random_flip_up_down/mulMul5random_flip_3/stateless_random_flip_up_down/Round:y:0>random_flip_3/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ААv
1random_flip_3/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?у
/random_flip_3/stateless_random_flip_up_down/subSub:random_flip_3/stateless_random_flip_up_down/sub/x:output:05random_flip_3/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         Є
1random_flip_3/stateless_random_flip_up_down/mul_1Mul3random_flip_3/stateless_random_flip_up_down/sub:z:0Grandom_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         ААр
/random_flip_3/stateless_random_flip_up_down/addAddV23random_flip_3/stateless_random_flip_up_down/mul:z:05random_flip_3/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         ААv
random_zoom_2/ShapeShape3random_flip_3/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:k
!random_zoom_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#random_zoom_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#random_zoom_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
random_zoom_2/strided_sliceStridedSlicerandom_zoom_2/Shape:output:0*random_zoom_2/strided_slice/stack:output:0,random_zoom_2/strided_slice/stack_1:output:0,random_zoom_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
#random_zoom_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        x
%random_zoom_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        o
%random_zoom_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
random_zoom_2/strided_slice_1StridedSlicerandom_zoom_2/Shape:output:0,random_zoom_2/strided_slice_1/stack:output:0.random_zoom_2/strided_slice_1/stack_1:output:0.random_zoom_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
random_zoom_2/CastCast&random_zoom_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: v
#random_zoom_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        x
%random_zoom_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         o
%random_zoom_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
random_zoom_2/strided_slice_2StridedSlicerandom_zoom_2/Shape:output:0,random_zoom_2/strided_slice_2/stack:output:0.random_zoom_2/strided_slice_2/stack_1:output:0.random_zoom_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
random_zoom_2/Cast_1Cast&random_zoom_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: h
&random_zoom_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :▒
$random_zoom_2/stateful_uniform/shapePack$random_zoom_2/strided_slice:output:0/random_zoom_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:g
"random_zoom_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?g
"random_zoom_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?n
$random_zoom_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: к
#random_zoom_2/stateful_uniform/ProdProd-random_zoom_2/stateful_uniform/shape:output:0-random_zoom_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: g
%random_zoom_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Л
%random_zoom_2/stateful_uniform/Cast_1Cast,random_zoom_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ю
-random_zoom_2/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_2_stateful_uniform_rngreadandskip_resource.random_zoom_2/stateful_uniform/Cast/x:output:0)random_zoom_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:|
2random_zoom_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4random_zoom_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
,random_zoom_2/stateful_uniform/strided_sliceStridedSlice5random_zoom_2/stateful_uniform/RngReadAndSkip:value:0;random_zoom_2/stateful_uniform/strided_slice/stack:output:0=random_zoom_2/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЩ
&random_zoom_2/stateful_uniform/BitcastBitcast5random_zoom_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
4random_zoom_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:А
6random_zoom_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6random_zoom_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ш
.random_zoom_2/stateful_uniform/strided_slice_1StridedSlice5random_zoom_2/stateful_uniform/RngReadAndSkip:value:0=random_zoom_2/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_2/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Э
(random_zoom_2/stateful_uniform/Bitcast_1Bitcast7random_zoom_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;random_zoom_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :╒
7random_zoom_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_2/stateful_uniform/shape:output:01random_zoom_2/stateful_uniform/Bitcast_1:output:0/random_zoom_2/stateful_uniform/Bitcast:output:0Drandom_zoom_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         д
"random_zoom_2/stateful_uniform/subSub+random_zoom_2/stateful_uniform/max:output:0+random_zoom_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: ┼
"random_zoom_2/stateful_uniform/mulMul@random_zoom_2/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         о
random_zoom_2/stateful_uniformAddV2&random_zoom_2/stateful_uniform/mul:z:0+random_zoom_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:         [
random_zoom_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╟
random_zoom_2/concatConcatV2"random_zoom_2/stateful_uniform:z:0"random_zoom_2/stateful_uniform:z:0"random_zoom_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         l
random_zoom_2/zoom_matrix/ShapeShaperandom_zoom_2/concat:output:0*
T0*
_output_shapes
:w
-random_zoom_2/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/random_zoom_2/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_zoom_2/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╙
'random_zoom_2/zoom_matrix/strided_sliceStridedSlice(random_zoom_2/zoom_matrix/Shape:output:06random_zoom_2/zoom_matrix/strided_slice/stack:output:08random_zoom_2/zoom_matrix/strided_slice/stack_1:output:08random_zoom_2/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_zoom_2/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Й
random_zoom_2/zoom_matrix/subSubrandom_zoom_2/Cast_1:y:0(random_zoom_2/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: h
#random_zoom_2/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ю
!random_zoom_2/zoom_matrix/truedivRealDiv!random_zoom_2/zoom_matrix/sub:z:0,random_zoom_2/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: Д
/random_zoom_2/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ж
1random_zoom_2/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_2/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_2/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_2/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╕
random_zoom_2/zoom_matrix/sub_1Sub*random_zoom_2/zoom_matrix/sub_1/x:output:02random_zoom_2/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         в
random_zoom_2/zoom_matrix/mulMul%random_zoom_2/zoom_matrix/truediv:z:0#random_zoom_2/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         f
!random_zoom_2/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
random_zoom_2/zoom_matrix/sub_2Subrandom_zoom_2/Cast:y:0*random_zoom_2/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: j
%random_zoom_2/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @д
#random_zoom_2/zoom_matrix/truediv_1RealDiv#random_zoom_2/zoom_matrix/sub_2:z:0.random_zoom_2/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: Д
/random_zoom_2/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_2/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_2/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_2/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_2/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╕
random_zoom_2/zoom_matrix/sub_3Sub*random_zoom_2/zoom_matrix/sub_3/x:output:02random_zoom_2/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         ж
random_zoom_2/zoom_matrix/mul_1Mul'random_zoom_2/zoom_matrix/truediv_1:z:0#random_zoom_2/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         Д
/random_zoom_2/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ж
1random_zoom_2/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_2/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_2/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom_2/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :┴
&random_zoom_2/zoom_matrix/zeros/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:01random_zoom_2/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom_2/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
random_zoom_2/zoom_matrix/zerosFill/random_zoom_2/zoom_matrix/zeros/packed:output:0.random_zoom_2/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         l
*random_zoom_2/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :┼
(random_zoom_2/zoom_matrix/zeros_1/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:03random_zoom_2/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_2/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    └
!random_zoom_2/zoom_matrix/zeros_1Fill1random_zoom_2/zoom_matrix/zeros_1/packed:output:00random_zoom_2/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         Д
/random_zoom_2/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_2/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_2/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_2/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskl
*random_zoom_2/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :┼
(random_zoom_2/zoom_matrix/zeros_2/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:03random_zoom_2/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_2/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    └
!random_zoom_2/zoom_matrix/zeros_2Fill1random_zoom_2/zoom_matrix/zeros_2/packed:output:00random_zoom_2/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         g
%random_zoom_2/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╔
 random_zoom_2/zoom_matrix/concatConcatV22random_zoom_2/zoom_matrix/strided_slice_3:output:0(random_zoom_2/zoom_matrix/zeros:output:0!random_zoom_2/zoom_matrix/mul:z:0*random_zoom_2/zoom_matrix/zeros_1:output:02random_zoom_2/zoom_matrix/strided_slice_4:output:0#random_zoom_2/zoom_matrix/mul_1:z:0*random_zoom_2/zoom_matrix/zeros_2:output:0.random_zoom_2/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         А
random_zoom_2/transform/ShapeShape3random_flip_3/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:u
+random_zoom_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╡
%random_zoom_2/transform/strided_sliceStridedSlice&random_zoom_2/transform/Shape:output:04random_zoom_2/transform/strided_slice/stack:output:06random_zoom_2/transform/strided_slice/stack_1:output:06random_zoom_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
"random_zoom_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    В
2random_zoom_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV33random_flip_3/stateless_random_flip_up_down/add:z:0)random_zoom_2/zoom_matrix/concat:output:0.random_zoom_2/transform/strided_slice:output:0+random_zoom_2/transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARО
random_rotation_2/ShapeShapeGrandom_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:o
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        |
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        s
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:│
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        |
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         s
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:│
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: И
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а┐k
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?r
(random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ╢
'random_rotation_2/stateful_uniform/ProdProd1random_rotation_2/stateful_uniform/shape:output:01random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :У
)random_rotation_2/stateful_uniform/Cast_1Cast0random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ■
1random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_2_stateful_uniform_rngreadandskip_resource2random_rotation_2/stateful_uniform/Cast/x:output:0-random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:А
6random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
0random_rotation_2/stateful_uniform/strided_sliceStridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0?random_rotation_2/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskб
*random_rotation_2/stateful_uniform/BitcastBitcast9random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0В
8random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
2random_rotation_2/stateful_uniform/strided_slice_1StridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:е
,random_rotation_2/stateful_uniform/Bitcast_1Bitcast;random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Б
?random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :х
;random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_2/stateful_uniform/shape:output:05random_rotation_2/stateful_uniform/Bitcast_1:output:03random_rotation_2/stateful_uniform/Bitcast:output:0Hrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ░
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: ═
&random_rotation_2/stateful_uniform/mulMulDrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         ╢
"random_rotation_2/stateful_uniformAddV2*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         l
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: В
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         n
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?б
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ▓
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         В
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         n
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ┤
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         ┤
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         ┤
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         p
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @┼
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         n
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: Д
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         n
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?б
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ╢
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         Д
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         n
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ╢
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         ╢
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         ┤
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         r
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @╔
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         }
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:√
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskД
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         И
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskД
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         И
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЪ
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         И
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ░
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskД
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         И
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskД
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         И
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskИ
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▓
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :┘
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╥
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         o
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :░
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         Ш
!random_rotation_2/transform/ShapeShapeGrandom_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:y
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    к
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Grandom_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:01random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARд
IdentityIdentityKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ААЮ
NoOpNoOp7^random_flip_3/stateful_uniform_full_int/RngReadAndSkip9^random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip2^random_rotation_2/stateful_uniform/RngReadAndSkip.^random_zoom_2/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         АА: : : 2p
6random_flip_3/stateful_uniform_full_int/RngReadAndSkip6random_flip_3/stateful_uniform_full_int/RngReadAndSkip2t
8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip2f
1random_rotation_2/stateful_uniform/RngReadAndSkip1random_rotation_2/stateful_uniform/RngReadAndSkip2^
-random_zoom_2/stateful_uniform/RngReadAndSkip-random_zoom_2/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
°
b
F__inference_rescaling_1_layer_call_and_return_conditional_losses_31979

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:         ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:         ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Д
¤
D__inference_conv2d_11_layer_call_and_return_conditional_losses_31784

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         }}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         }}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╞
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_31895

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Р
¤
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30220

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ■■ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ■■ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
щ
R
,__inference_sequential_6_layer_call_fn_29636
resizing_1_input
identity╞
PartitionedCallPartitionedCallresizing_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_29633j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:c _
1
_output_shapes
:         АА
*
_user_specified_nameresizing_1_input
ъ
Ю
)__inference_conv2d_11_layer_call_fn_31773

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30238w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         }}@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╛
Ф
'__inference_dense_7_layer_call_fn_31944

inputs
unknown: 
	unknown_0:
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_30352o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Д
¤
D__inference_conv2d_13_layer_call_and_return_conditional_losses_30274

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╖D
║
G__inference_sequential_8_layer_call_and_return_conditional_losses_30577

inputs 
sequential_7_30523:	 
sequential_7_30525:	 
sequential_7_30527:	)
conv2d_10_30530: 
conv2d_10_30532: )
conv2d_11_30536: @
conv2d_11_30538:@)
conv2d_12_30542:@@
conv2d_12_30544:@)
conv2d_13_30548:@@
conv2d_13_30550:@)
conv2d_14_30554:@@
conv2d_14_30556:@ 
dense_5_30561:	А@
dense_5_30563:@
dense_6_30566:@ 
dense_6_30568: 
dense_7_30571: 
dense_7_30573:
identityИв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв!conv2d_12/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallв$sequential_7/StatefulPartitionedCall╔
sequential_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_29661╖
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall%sequential_6/PartitionedCall:output:0sequential_7_30523sequential_7_30525sequential_7_30527*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_30100в
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall-sequential_7/StatefulPartitionedCall:output:0conv2d_10_30530conv2d_10_30532*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30220є
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_30149Ь
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_30536conv2d_11_30538*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30238є
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_30161Ь
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0conv2d_12_30542conv2d_12_30544*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_30256є
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_30173Ь
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_13_30548conv2d_13_30550*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_30274є
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_30185Ь
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_14_30554conv2d_14_30556*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_30292є
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_30197▌
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_30305Е
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_5_30561dense_5_30563*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_30318Л
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_30566dense_6_30568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_30335Л
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_30571dense_7_30573*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_30352w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         З
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         АА: : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ДЧ
А
H__inference_random_flip_3_layer_call_and_return_conditional_losses_30075

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИв(stateful_uniform_full_int/RngReadAndSkipв*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ┌
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskП
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╧
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЮ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ААТ
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskо
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?░
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :■
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ї
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         √
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╬
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:х
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         Ь
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:ы
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         АА╚
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ААk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?┬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         ╤
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         АА┐
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ААk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: б
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask█
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:         ААМ
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskи
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?п
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :я
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ь
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Й
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Є
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :┐
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:▄
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         Ц
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:т
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         АА┐
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ААh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╣
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         ╚
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         АА╢
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         АА~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:         ААЮ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
▌ё
┘
G__inference_sequential_8_layer_call_and_return_conditional_losses_31322

inputsZ
Lsequential_7_random_flip_3_stateful_uniform_full_int_rngreadandskip_resource:	Q
Csequential_7_random_zoom_2_stateful_uniform_rngreadandskip_resource:	U
Gsequential_7_random_rotation_2_stateful_uniform_rngreadandskip_resource:	B
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@B
(conv2d_12_conv2d_readvariableop_resource:@@7
)conv2d_12_biasadd_readvariableop_resource:@B
(conv2d_13_conv2d_readvariableop_resource:@@7
)conv2d_13_biasadd_readvariableop_resource:@B
(conv2d_14_conv2d_readvariableop_resource:@@7
)conv2d_14_biasadd_readvariableop_resource:@9
&dense_5_matmul_readvariableop_resource:	А@5
'dense_5_biasadd_readvariableop_resource:@8
&dense_6_matmul_readvariableop_resource:@ 5
'dense_6_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: 5
'dense_7_biasadd_readvariableop_resource:
identityИв conv2d_10/BiasAdd/ReadVariableOpвconv2d_10/Conv2D/ReadVariableOpв conv2d_11/BiasAdd/ReadVariableOpвconv2d_11/Conv2D/ReadVariableOpв conv2d_12/BiasAdd/ReadVariableOpвconv2d_12/Conv2D/ReadVariableOpв conv2d_13/BiasAdd/ReadVariableOpвconv2d_13/Conv2D/ReadVariableOpв conv2d_14/BiasAdd/ReadVariableOpвconv2d_14/Conv2D/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвdense_7/BiasAdd/ReadVariableOpвdense_7/MatMul/ReadVariableOpвCsequential_7/random_flip_3/stateful_uniform_full_int/RngReadAndSkipвEsequential_7/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipв>sequential_7/random_rotation_2/stateful_uniform/RngReadAndSkipв:sequential_7/random_zoom_2/stateful_uniform/RngReadAndSkipt
#sequential_6/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ╦
-sequential_6/resizing_1/resize/ResizeBilinearResizeBilinearinputs,sequential_6/resizing_1/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(d
sequential_6/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;f
!sequential_6/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ╔
sequential_6/rescaling_1/mulMul>sequential_6/resizing_1/resize/ResizeBilinear:resized_images:0(sequential_6/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:         ААп
sequential_6/rescaling_1/addAddV2 sequential_6/rescaling_1/mul:z:0*sequential_6/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААД
:sequential_7/random_flip_3/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_7/random_flip_3/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ь
9sequential_7/random_flip_3/stateful_uniform_full_int/ProdProdCsequential_7/random_flip_3/stateful_uniform_full_int/shape:output:0Csequential_7/random_flip_3/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: }
;sequential_7/random_flip_3/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :╖
;sequential_7/random_flip_3/stateful_uniform_full_int/Cast_1CastBsequential_7/random_flip_3/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╞
Csequential_7/random_flip_3/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipLsequential_7_random_flip_3_stateful_uniform_full_int_rngreadandskip_resourceDsequential_7/random_flip_3/stateful_uniform_full_int/Cast/x:output:0?sequential_7/random_flip_3/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Т
Hsequential_7/random_flip_3/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ф
Jsequential_7/random_flip_3/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ф
Jsequential_7/random_flip_3/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
Bsequential_7/random_flip_3/stateful_uniform_full_int/strided_sliceStridedSliceKsequential_7/random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0Qsequential_7/random_flip_3/stateful_uniform_full_int/strided_slice/stack:output:0Ssequential_7/random_flip_3/stateful_uniform_full_int/strided_slice/stack_1:output:0Ssequential_7/random_flip_3/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask┼
<sequential_7/random_flip_3/stateful_uniform_full_int/BitcastBitcastKsequential_7/random_flip_3/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ф
Jsequential_7/random_flip_3/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц
Lsequential_7/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц
Lsequential_7/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╓
Dsequential_7/random_flip_3/stateful_uniform_full_int/strided_slice_1StridedSliceKsequential_7/random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0Ssequential_7/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack:output:0Usequential_7/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Usequential_7/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:╔
>sequential_7/random_flip_3/stateful_uniform_full_int/Bitcast_1BitcastMsequential_7/random_flip_3/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0z
8sequential_7/random_flip_3/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ш
4sequential_7/random_flip_3/stateful_uniform_full_intStatelessRandomUniformFullIntV2Csequential_7/random_flip_3/stateful_uniform_full_int/shape:output:0Gsequential_7/random_flip_3/stateful_uniform_full_int/Bitcast_1:output:0Esequential_7/random_flip_3/stateful_uniform_full_int/Bitcast:output:0Asequential_7/random_flip_3/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	o
%sequential_7/random_flip_3/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R ╔
 sequential_7/random_flip_3/stackPack=sequential_7/random_flip_3/stateful_uniform_full_int:output:0.sequential_7/random_flip_3/zeros_like:output:0*
N*
T0	*
_output_shapes

:
.sequential_7/random_flip_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0sequential_7/random_flip_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0sequential_7/random_flip_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ■
(sequential_7/random_flip_3/strided_sliceStridedSlice)sequential_7/random_flip_3/stack:output:07sequential_7/random_flip_3/strided_slice/stack:output:09sequential_7/random_flip_3/strided_slice/stack_1:output:09sequential_7/random_flip_3/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskщ
Nsequential_7/random_flip_3/stateless_random_flip_left_right/control_dependencyIdentity sequential_6/rescaling_1/add:z:0*
T0*/
_class%
#!loc:@sequential_6/rescaling_1/add*1
_output_shapes
:         АА╚
Asequential_7/random_flip_3/stateless_random_flip_left_right/ShapeShapeWsequential_7/random_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:Щ
Osequential_7/random_flip_3/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ы
Qsequential_7/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ы
Qsequential_7/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
Isequential_7/random_flip_3/stateless_random_flip_left_right/strided_sliceStridedSliceJsequential_7/random_flip_3/stateless_random_flip_left_right/Shape:output:0Xsequential_7/random_flip_3/stateless_random_flip_left_right/strided_slice/stack:output:0Zsequential_7/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_1:output:0Zsequential_7/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskф
Zsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shapePackRsequential_7/random_flip_3/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:Э
Xsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
Xsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ц
qsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter1sequential_7/random_flip_3/strided_slice:output:0* 
_output_shapes
::│
qsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Е
msequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2csequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0wsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0{sequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0zsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ╞
Xsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/subSubasequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/max:output:0asequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: у
Xsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mulMulvsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0\sequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         ╠
Tsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniformAddV2\sequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0asequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         Н
Ksequential_7/random_flip_3/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Н
Ksequential_7/random_flip_3/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Н
Ksequential_7/random_flip_3/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╒
Isequential_7/random_flip_3/stateless_random_flip_left_right/Reshape/shapePackRsequential_7/random_flip_3/stateless_random_flip_left_right/strided_slice:output:0Tsequential_7/random_flip_3/stateless_random_flip_left_right/Reshape/shape/1:output:0Tsequential_7/random_flip_3/stateless_random_flip_left_right/Reshape/shape/2:output:0Tsequential_7/random_flip_3/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:╢
Csequential_7/random_flip_3/stateless_random_flip_left_right/ReshapeReshapeXsequential_7/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform:z:0Rsequential_7/random_flip_3/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         ╥
Asequential_7/random_flip_3/stateless_random_flip_left_right/RoundRoundLsequential_7/random_flip_3/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         Ф
Jsequential_7/random_flip_3/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:╝
Esequential_7/random_flip_3/stateless_random_flip_left_right/ReverseV2	ReverseV2Wsequential_7/random_flip_3/stateless_random_flip_left_right/control_dependency:output:0Ssequential_7/random_flip_3/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ААЩ
?sequential_7/random_flip_3/stateless_random_flip_left_right/mulMulEsequential_7/random_flip_3/stateless_random_flip_left_right/Round:y:0Nsequential_7/random_flip_3/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ААЖ
Asequential_7/random_flip_3/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
?sequential_7/random_flip_3/stateless_random_flip_left_right/subSubJsequential_7/random_flip_3/stateless_random_flip_left_right/sub/x:output:0Esequential_7/random_flip_3/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         в
Asequential_7/random_flip_3/stateless_random_flip_left_right/mul_1MulCsequential_7/random_flip_3/stateless_random_flip_left_right/sub:z:0Wsequential_7/random_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ААР
?sequential_7/random_flip_3/stateless_random_flip_left_right/addAddV2Csequential_7/random_flip_3/stateless_random_flip_left_right/mul:z:0Esequential_7/random_flip_3/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ААЖ
<sequential_7/random_flip_3/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ж
<sequential_7/random_flip_3/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Є
;sequential_7/random_flip_3/stateful_uniform_full_int_1/ProdProdEsequential_7/random_flip_3/stateful_uniform_full_int_1/shape:output:0Esequential_7/random_flip_3/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: 
=sequential_7/random_flip_3/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :╗
=sequential_7/random_flip_3/stateful_uniform_full_int_1/Cast_1CastDsequential_7/random_flip_3/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Т
Esequential_7/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipLsequential_7_random_flip_3_stateful_uniform_full_int_rngreadandskip_resourceFsequential_7/random_flip_3/stateful_uniform_full_int_1/Cast/x:output:0Asequential_7/random_flip_3/stateful_uniform_full_int_1/Cast_1:y:0D^sequential_7/random_flip_3/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Ф
Jsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ц
Lsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц
Lsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
Dsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_sliceStridedSliceMsequential_7/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0Ssequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack:output:0Usequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Usequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask╔
>sequential_7/random_flip_3/stateful_uniform_full_int_1/BitcastBitcastMsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ц
Lsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ш
Nsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ш
Nsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
Fsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice_1StridedSliceMsequential_7/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0Usequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Wsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Wsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:═
@sequential_7/random_flip_3/stateful_uniform_full_int_1/Bitcast_1BitcastOsequential_7/random_flip_3/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0|
:sequential_7/random_flip_3/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :в
6sequential_7/random_flip_3/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Esequential_7/random_flip_3/stateful_uniform_full_int_1/shape:output:0Isequential_7/random_flip_3/stateful_uniform_full_int_1/Bitcast_1:output:0Gsequential_7/random_flip_3/stateful_uniform_full_int_1/Bitcast:output:0Csequential_7/random_flip_3/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	q
'sequential_7/random_flip_3/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ╧
"sequential_7/random_flip_3/stack_1Pack?sequential_7/random_flip_3/stateful_uniform_full_int_1:output:00sequential_7/random_flip_3/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:Б
0sequential_7/random_flip_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Г
2sequential_7/random_flip_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Г
2sequential_7/random_flip_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      И
*sequential_7/random_flip_3/strided_slice_1StridedSlice+sequential_7/random_flip_3/stack_1:output:09sequential_7/random_flip_3/strided_slice_1/stack:output:0;sequential_7/random_flip_3/strided_slice_1/stack_1:output:0;sequential_7/random_flip_3/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskм
Ksequential_7/random_flip_3/stateless_random_flip_up_down/control_dependencyIdentityCsequential_7/random_flip_3/stateless_random_flip_left_right/add:z:0*
T0*R
_classH
FDloc:@sequential_7/random_flip_3/stateless_random_flip_left_right/add*1
_output_shapes
:         АА┬
>sequential_7/random_flip_3/stateless_random_flip_up_down/ShapeShapeTsequential_7/random_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:Ц
Lsequential_7/random_flip_3/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ш
Nsequential_7/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ш
Nsequential_7/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
Fsequential_7/random_flip_3/stateless_random_flip_up_down/strided_sliceStridedSliceGsequential_7/random_flip_3/stateless_random_flip_up_down/Shape:output:0Usequential_7/random_flip_3/stateless_random_flip_up_down/strided_slice/stack:output:0Wsequential_7/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_1:output:0Wsequential_7/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask▐
Wsequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shapePackOsequential_7/random_flip_3/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Ъ
Usequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
Usequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?х
nsequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter3sequential_7/random_flip_3/strided_slice_1:output:0* 
_output_shapes
::░
nsequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ў
jsequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2`sequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0tsequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0xsequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0wsequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ╜
Usequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/subSub^sequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/max:output:0^sequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ┌
Usequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mulMulssequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Ysequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         ├
Qsequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniformAddV2Ysequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0^sequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         К
Hsequential_7/random_flip_3/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :К
Hsequential_7/random_flip_3/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :К
Hsequential_7/random_flip_3/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╞
Fsequential_7/random_flip_3/stateless_random_flip_up_down/Reshape/shapePackOsequential_7/random_flip_3/stateless_random_flip_up_down/strided_slice:output:0Qsequential_7/random_flip_3/stateless_random_flip_up_down/Reshape/shape/1:output:0Qsequential_7/random_flip_3/stateless_random_flip_up_down/Reshape/shape/2:output:0Qsequential_7/random_flip_3/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:н
@sequential_7/random_flip_3/stateless_random_flip_up_down/ReshapeReshapeUsequential_7/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform:z:0Osequential_7/random_flip_3/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         ╠
>sequential_7/random_flip_3/stateless_random_flip_up_down/RoundRoundIsequential_7/random_flip_3/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         С
Gsequential_7/random_flip_3/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:│
Bsequential_7/random_flip_3/stateless_random_flip_up_down/ReverseV2	ReverseV2Tsequential_7/random_flip_3/stateless_random_flip_up_down/control_dependency:output:0Psequential_7/random_flip_3/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ААР
<sequential_7/random_flip_3/stateless_random_flip_up_down/mulMulBsequential_7/random_flip_3/stateless_random_flip_up_down/Round:y:0Ksequential_7/random_flip_3/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ААГ
>sequential_7/random_flip_3/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?К
<sequential_7/random_flip_3/stateless_random_flip_up_down/subSubGsequential_7/random_flip_3/stateless_random_flip_up_down/sub/x:output:0Bsequential_7/random_flip_3/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         Щ
>sequential_7/random_flip_3/stateless_random_flip_up_down/mul_1Mul@sequential_7/random_flip_3/stateless_random_flip_up_down/sub:z:0Tsequential_7/random_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         ААЗ
<sequential_7/random_flip_3/stateless_random_flip_up_down/addAddV2@sequential_7/random_flip_3/stateless_random_flip_up_down/mul:z:0Bsequential_7/random_flip_3/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         ААР
 sequential_7/random_zoom_2/ShapeShape@sequential_7/random_flip_3/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:x
.sequential_7/random_zoom_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential_7/random_zoom_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential_7/random_zoom_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╪
(sequential_7/random_zoom_2/strided_sliceStridedSlice)sequential_7/random_zoom_2/Shape:output:07sequential_7/random_zoom_2/strided_slice/stack:output:09sequential_7/random_zoom_2/strided_slice/stack_1:output:09sequential_7/random_zoom_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskГ
0sequential_7/random_zoom_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        Е
2sequential_7/random_zoom_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        |
2sequential_7/random_zoom_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
*sequential_7/random_zoom_2/strided_slice_1StridedSlice)sequential_7/random_zoom_2/Shape:output:09sequential_7/random_zoom_2/strided_slice_1/stack:output:0;sequential_7/random_zoom_2/strided_slice_1/stack_1:output:0;sequential_7/random_zoom_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
sequential_7/random_zoom_2/CastCast3sequential_7/random_zoom_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Г
0sequential_7/random_zoom_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        Е
2sequential_7/random_zoom_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         |
2sequential_7/random_zoom_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
*sequential_7/random_zoom_2/strided_slice_2StridedSlice)sequential_7/random_zoom_2/Shape:output:09sequential_7/random_zoom_2/strided_slice_2/stack:output:0;sequential_7/random_zoom_2/strided_slice_2/stack_1:output:0;sequential_7/random_zoom_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!sequential_7/random_zoom_2/Cast_1Cast3sequential_7/random_zoom_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: u
3sequential_7/random_zoom_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :╪
1sequential_7/random_zoom_2/stateful_uniform/shapePack1sequential_7/random_zoom_2/strided_slice:output:0<sequential_7/random_zoom_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:t
/sequential_7/random_zoom_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?t
/sequential_7/random_zoom_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?{
1sequential_7/random_zoom_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ╤
0sequential_7/random_zoom_2/stateful_uniform/ProdProd:sequential_7/random_zoom_2/stateful_uniform/shape:output:0:sequential_7/random_zoom_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: t
2sequential_7/random_zoom_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :е
2sequential_7/random_zoom_2/stateful_uniform/Cast_1Cast9sequential_7/random_zoom_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: в
:sequential_7/random_zoom_2/stateful_uniform/RngReadAndSkipRngReadAndSkipCsequential_7_random_zoom_2_stateful_uniform_rngreadandskip_resource;sequential_7/random_zoom_2/stateful_uniform/Cast/x:output:06sequential_7/random_zoom_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:Й
?sequential_7/random_zoom_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Л
Asequential_7/random_zoom_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Л
Asequential_7/random_zoom_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:│
9sequential_7/random_zoom_2/stateful_uniform/strided_sliceStridedSliceBsequential_7/random_zoom_2/stateful_uniform/RngReadAndSkip:value:0Hsequential_7/random_zoom_2/stateful_uniform/strided_slice/stack:output:0Jsequential_7/random_zoom_2/stateful_uniform/strided_slice/stack_1:output:0Jsequential_7/random_zoom_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask│
3sequential_7/random_zoom_2/stateful_uniform/BitcastBitcastBsequential_7/random_zoom_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Л
Asequential_7/random_zoom_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Н
Csequential_7/random_zoom_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Н
Csequential_7/random_zoom_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
;sequential_7/random_zoom_2/stateful_uniform/strided_slice_1StridedSliceBsequential_7/random_zoom_2/stateful_uniform/RngReadAndSkip:value:0Jsequential_7/random_zoom_2/stateful_uniform/strided_slice_1/stack:output:0Lsequential_7/random_zoom_2/stateful_uniform/strided_slice_1/stack_1:output:0Lsequential_7/random_zoom_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:╖
5sequential_7/random_zoom_2/stateful_uniform/Bitcast_1BitcastDsequential_7/random_zoom_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0К
Hsequential_7/random_zoom_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ц
Dsequential_7/random_zoom_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2:sequential_7/random_zoom_2/stateful_uniform/shape:output:0>sequential_7/random_zoom_2/stateful_uniform/Bitcast_1:output:0<sequential_7/random_zoom_2/stateful_uniform/Bitcast:output:0Qsequential_7/random_zoom_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         ╦
/sequential_7/random_zoom_2/stateful_uniform/subSub8sequential_7/random_zoom_2/stateful_uniform/max:output:08sequential_7/random_zoom_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: ь
/sequential_7/random_zoom_2/stateful_uniform/mulMulMsequential_7/random_zoom_2/stateful_uniform/StatelessRandomUniformV2:output:03sequential_7/random_zoom_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         ╒
+sequential_7/random_zoom_2/stateful_uniformAddV23sequential_7/random_zoom_2/stateful_uniform/mul:z:08sequential_7/random_zoom_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:         h
&sequential_7/random_zoom_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :√
!sequential_7/random_zoom_2/concatConcatV2/sequential_7/random_zoom_2/stateful_uniform:z:0/sequential_7/random_zoom_2/stateful_uniform:z:0/sequential_7/random_zoom_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         Ж
,sequential_7/random_zoom_2/zoom_matrix/ShapeShape*sequential_7/random_zoom_2/concat:output:0*
T0*
_output_shapes
:Д
:sequential_7/random_zoom_2/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ж
<sequential_7/random_zoom_2/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ж
<sequential_7/random_zoom_2/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
4sequential_7/random_zoom_2/zoom_matrix/strided_sliceStridedSlice5sequential_7/random_zoom_2/zoom_matrix/Shape:output:0Csequential_7/random_zoom_2/zoom_matrix/strided_slice/stack:output:0Esequential_7/random_zoom_2/zoom_matrix/strided_slice/stack_1:output:0Esequential_7/random_zoom_2/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
,sequential_7/random_zoom_2/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?░
*sequential_7/random_zoom_2/zoom_matrix/subSub%sequential_7/random_zoom_2/Cast_1:y:05sequential_7/random_zoom_2/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: u
0sequential_7/random_zoom_2/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @┼
.sequential_7/random_zoom_2/zoom_matrix/truedivRealDiv.sequential_7/random_zoom_2/zoom_matrix/sub:z:09sequential_7/random_zoom_2/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: С
<sequential_7/random_zoom_2/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            У
>sequential_7/random_zoom_2/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_7/random_zoom_2/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ┘
6sequential_7/random_zoom_2/zoom_matrix/strided_slice_1StridedSlice*sequential_7/random_zoom_2/concat:output:0Esequential_7/random_zoom_2/zoom_matrix/strided_slice_1/stack:output:0Gsequential_7/random_zoom_2/zoom_matrix/strided_slice_1/stack_1:output:0Gsequential_7/random_zoom_2/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masks
.sequential_7/random_zoom_2/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▀
,sequential_7/random_zoom_2/zoom_matrix/sub_1Sub7sequential_7/random_zoom_2/zoom_matrix/sub_1/x:output:0?sequential_7/random_zoom_2/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         ╔
*sequential_7/random_zoom_2/zoom_matrix/mulMul2sequential_7/random_zoom_2/zoom_matrix/truediv:z:00sequential_7/random_zoom_2/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         s
.sequential_7/random_zoom_2/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▓
,sequential_7/random_zoom_2/zoom_matrix/sub_2Sub#sequential_7/random_zoom_2/Cast:y:07sequential_7/random_zoom_2/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: w
2sequential_7/random_zoom_2/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @╦
0sequential_7/random_zoom_2/zoom_matrix/truediv_1RealDiv0sequential_7/random_zoom_2/zoom_matrix/sub_2:z:0;sequential_7/random_zoom_2/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: С
<sequential_7/random_zoom_2/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_7/random_zoom_2/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_7/random_zoom_2/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ┘
6sequential_7/random_zoom_2/zoom_matrix/strided_slice_2StridedSlice*sequential_7/random_zoom_2/concat:output:0Esequential_7/random_zoom_2/zoom_matrix/strided_slice_2/stack:output:0Gsequential_7/random_zoom_2/zoom_matrix/strided_slice_2/stack_1:output:0Gsequential_7/random_zoom_2/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masks
.sequential_7/random_zoom_2/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▀
,sequential_7/random_zoom_2/zoom_matrix/sub_3Sub7sequential_7/random_zoom_2/zoom_matrix/sub_3/x:output:0?sequential_7/random_zoom_2/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         ═
,sequential_7/random_zoom_2/zoom_matrix/mul_1Mul4sequential_7/random_zoom_2/zoom_matrix/truediv_1:z:00sequential_7/random_zoom_2/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         С
<sequential_7/random_zoom_2/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            У
>sequential_7/random_zoom_2/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_7/random_zoom_2/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ┘
6sequential_7/random_zoom_2/zoom_matrix/strided_slice_3StridedSlice*sequential_7/random_zoom_2/concat:output:0Esequential_7/random_zoom_2/zoom_matrix/strided_slice_3/stack:output:0Gsequential_7/random_zoom_2/zoom_matrix/strided_slice_3/stack_1:output:0Gsequential_7/random_zoom_2/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskw
5sequential_7/random_zoom_2/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ш
3sequential_7/random_zoom_2/zoom_matrix/zeros/packedPack=sequential_7/random_zoom_2/zoom_matrix/strided_slice:output:0>sequential_7/random_zoom_2/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:w
2sequential_7/random_zoom_2/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    с
,sequential_7/random_zoom_2/zoom_matrix/zerosFill<sequential_7/random_zoom_2/zoom_matrix/zeros/packed:output:0;sequential_7/random_zoom_2/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         y
7sequential_7/random_zoom_2/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ь
5sequential_7/random_zoom_2/zoom_matrix/zeros_1/packedPack=sequential_7/random_zoom_2/zoom_matrix/strided_slice:output:0@sequential_7/random_zoom_2/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:y
4sequential_7/random_zoom_2/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ч
.sequential_7/random_zoom_2/zoom_matrix/zeros_1Fill>sequential_7/random_zoom_2/zoom_matrix/zeros_1/packed:output:0=sequential_7/random_zoom_2/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         С
<sequential_7/random_zoom_2/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_7/random_zoom_2/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_7/random_zoom_2/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ┘
6sequential_7/random_zoom_2/zoom_matrix/strided_slice_4StridedSlice*sequential_7/random_zoom_2/concat:output:0Esequential_7/random_zoom_2/zoom_matrix/strided_slice_4/stack:output:0Gsequential_7/random_zoom_2/zoom_matrix/strided_slice_4/stack_1:output:0Gsequential_7/random_zoom_2/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masky
7sequential_7/random_zoom_2/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ь
5sequential_7/random_zoom_2/zoom_matrix/zeros_2/packedPack=sequential_7/random_zoom_2/zoom_matrix/strided_slice:output:0@sequential_7/random_zoom_2/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:y
4sequential_7/random_zoom_2/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ч
.sequential_7/random_zoom_2/zoom_matrix/zeros_2Fill>sequential_7/random_zoom_2/zoom_matrix/zeros_2/packed:output:0=sequential_7/random_zoom_2/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         t
2sequential_7/random_zoom_2/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╛
-sequential_7/random_zoom_2/zoom_matrix/concatConcatV2?sequential_7/random_zoom_2/zoom_matrix/strided_slice_3:output:05sequential_7/random_zoom_2/zoom_matrix/zeros:output:0.sequential_7/random_zoom_2/zoom_matrix/mul:z:07sequential_7/random_zoom_2/zoom_matrix/zeros_1:output:0?sequential_7/random_zoom_2/zoom_matrix/strided_slice_4:output:00sequential_7/random_zoom_2/zoom_matrix/mul_1:z:07sequential_7/random_zoom_2/zoom_matrix/zeros_2:output:0;sequential_7/random_zoom_2/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         Ъ
*sequential_7/random_zoom_2/transform/ShapeShape@sequential_7/random_flip_3/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:В
8sequential_7/random_zoom_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_7/random_zoom_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_7/random_zoom_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
2sequential_7/random_zoom_2/transform/strided_sliceStridedSlice3sequential_7/random_zoom_2/transform/Shape:output:0Asequential_7/random_zoom_2/transform/strided_slice/stack:output:0Csequential_7/random_zoom_2/transform/strided_slice/stack_1:output:0Csequential_7/random_zoom_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:t
/sequential_7/random_zoom_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ├
?sequential_7/random_zoom_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3@sequential_7/random_flip_3/stateless_random_flip_up_down/add:z:06sequential_7/random_zoom_2/zoom_matrix/concat:output:0;sequential_7/random_zoom_2/transform/strided_slice:output:08sequential_7/random_zoom_2/transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARи
$sequential_7/random_rotation_2/ShapeShapeTsequential_7/random_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:|
2sequential_7/random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_7/random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_7/random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
,sequential_7/random_rotation_2/strided_sliceStridedSlice-sequential_7/random_rotation_2/Shape:output:0;sequential_7/random_rotation_2/strided_slice/stack:output:0=sequential_7/random_rotation_2/strided_slice/stack_1:output:0=sequential_7/random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЗ
4sequential_7/random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        Й
6sequential_7/random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        А
6sequential_7/random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
.sequential_7/random_rotation_2/strided_slice_1StridedSlice-sequential_7/random_rotation_2/Shape:output:0=sequential_7/random_rotation_2/strided_slice_1/stack:output:0?sequential_7/random_rotation_2/strided_slice_1/stack_1:output:0?sequential_7/random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskФ
#sequential_7/random_rotation_2/CastCast7sequential_7/random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: З
4sequential_7/random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        Й
6sequential_7/random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         А
6sequential_7/random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
.sequential_7/random_rotation_2/strided_slice_2StridedSlice-sequential_7/random_rotation_2/Shape:output:0=sequential_7/random_rotation_2/strided_slice_2/stack:output:0?sequential_7/random_rotation_2/strided_slice_2/stack_1:output:0?sequential_7/random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЦ
%sequential_7/random_rotation_2/Cast_1Cast7sequential_7/random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: в
5sequential_7/random_rotation_2/stateful_uniform/shapePack5sequential_7/random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:x
3sequential_7/random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а┐x
3sequential_7/random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?
5sequential_7/random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ▌
4sequential_7/random_rotation_2/stateful_uniform/ProdProd>sequential_7/random_rotation_2/stateful_uniform/shape:output:0>sequential_7/random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: x
6sequential_7/random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :н
6sequential_7/random_rotation_2/stateful_uniform/Cast_1Cast=sequential_7/random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ▓
>sequential_7/random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkipGsequential_7_random_rotation_2_stateful_uniform_rngreadandskip_resource?sequential_7/random_rotation_2/stateful_uniform/Cast/x:output:0:sequential_7/random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:Н
Csequential_7/random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: П
Esequential_7/random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:П
Esequential_7/random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╟
=sequential_7/random_rotation_2/stateful_uniform/strided_sliceStridedSliceFsequential_7/random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Lsequential_7/random_rotation_2/stateful_uniform/strided_slice/stack:output:0Nsequential_7/random_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Nsequential_7/random_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask╗
7sequential_7/random_rotation_2/stateful_uniform/BitcastBitcastFsequential_7/random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0П
Esequential_7/random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:С
Gsequential_7/random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:С
Gsequential_7/random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
?sequential_7/random_rotation_2/stateful_uniform/strided_slice_1StridedSliceFsequential_7/random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Nsequential_7/random_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Psequential_7/random_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Psequential_7/random_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:┐
9sequential_7/random_rotation_2/stateful_uniform/Bitcast_1BitcastHsequential_7/random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0О
Lsequential_7/random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ж
Hsequential_7/random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2>sequential_7/random_rotation_2/stateful_uniform/shape:output:0Bsequential_7/random_rotation_2/stateful_uniform/Bitcast_1:output:0@sequential_7/random_rotation_2/stateful_uniform/Bitcast:output:0Usequential_7/random_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ╫
3sequential_7/random_rotation_2/stateful_uniform/subSub<sequential_7/random_rotation_2/stateful_uniform/max:output:0<sequential_7/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: Ї
3sequential_7/random_rotation_2/stateful_uniform/mulMulQsequential_7/random_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:07sequential_7/random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         ▌
/sequential_7/random_rotation_2/stateful_uniformAddV27sequential_7/random_rotation_2/stateful_uniform/mul:z:0<sequential_7/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         y
4sequential_7/random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?─
2sequential_7/random_rotation_2/rotation_matrix/subSub)sequential_7/random_rotation_2/Cast_1:y:0=sequential_7/random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: Ь
2sequential_7/random_rotation_2/rotation_matrix/CosCos3sequential_7/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         {
6sequential_7/random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╚
4sequential_7/random_rotation_2/rotation_matrix/sub_1Sub)sequential_7/random_rotation_2/Cast_1:y:0?sequential_7/random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ┘
2sequential_7/random_rotation_2/rotation_matrix/mulMul6sequential_7/random_rotation_2/rotation_matrix/Cos:y:08sequential_7/random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         Ь
2sequential_7/random_rotation_2/rotation_matrix/SinSin3sequential_7/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         {
6sequential_7/random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╞
4sequential_7/random_rotation_2/rotation_matrix/sub_2Sub'sequential_7/random_rotation_2/Cast:y:0?sequential_7/random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: █
4sequential_7/random_rotation_2/rotation_matrix/mul_1Mul6sequential_7/random_rotation_2/rotation_matrix/Sin:y:08sequential_7/random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         █
4sequential_7/random_rotation_2/rotation_matrix/sub_3Sub6sequential_7/random_rotation_2/rotation_matrix/mul:z:08sequential_7/random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         █
4sequential_7/random_rotation_2/rotation_matrix/sub_4Sub6sequential_7/random_rotation_2/rotation_matrix/sub:z:08sequential_7/random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         }
8sequential_7/random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ь
6sequential_7/random_rotation_2/rotation_matrix/truedivRealDiv8sequential_7/random_rotation_2/rotation_matrix/sub_4:z:0Asequential_7/random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         {
6sequential_7/random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╞
4sequential_7/random_rotation_2/rotation_matrix/sub_5Sub'sequential_7/random_rotation_2/Cast:y:0?sequential_7/random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: Ю
4sequential_7/random_rotation_2/rotation_matrix/Sin_1Sin3sequential_7/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         {
6sequential_7/random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╚
4sequential_7/random_rotation_2/rotation_matrix/sub_6Sub)sequential_7/random_rotation_2/Cast_1:y:0?sequential_7/random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ▌
4sequential_7/random_rotation_2/rotation_matrix/mul_2Mul8sequential_7/random_rotation_2/rotation_matrix/Sin_1:y:08sequential_7/random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         Ю
4sequential_7/random_rotation_2/rotation_matrix/Cos_1Cos3sequential_7/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         {
6sequential_7/random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╞
4sequential_7/random_rotation_2/rotation_matrix/sub_7Sub'sequential_7/random_rotation_2/Cast:y:0?sequential_7/random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ▌
4sequential_7/random_rotation_2/rotation_matrix/mul_3Mul8sequential_7/random_rotation_2/rotation_matrix/Cos_1:y:08sequential_7/random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         ▌
2sequential_7/random_rotation_2/rotation_matrix/addAddV28sequential_7/random_rotation_2/rotation_matrix/mul_2:z:08sequential_7/random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         █
4sequential_7/random_rotation_2/rotation_matrix/sub_8Sub8sequential_7/random_rotation_2/rotation_matrix/sub_5:z:06sequential_7/random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         
:sequential_7/random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ё
8sequential_7/random_rotation_2/rotation_matrix/truediv_1RealDiv8sequential_7/random_rotation_2/rotation_matrix/sub_8:z:0Csequential_7/random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         Ч
4sequential_7/random_rotation_2/rotation_matrix/ShapeShape3sequential_7/random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:М
Bsequential_7/random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: О
Dsequential_7/random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:О
Dsequential_7/random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╝
<sequential_7/random_rotation_2/rotation_matrix/strided_sliceStridedSlice=sequential_7/random_rotation_2/rotation_matrix/Shape:output:0Ksequential_7/random_rotation_2/rotation_matrix/strided_slice/stack:output:0Msequential_7/random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0Msequential_7/random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЮ
4sequential_7/random_rotation_2/rotation_matrix/Cos_2Cos3sequential_7/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         Х
Dsequential_7/random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      я
>sequential_7/random_rotation_2/rotation_matrix/strided_slice_1StridedSlice8sequential_7/random_rotation_2/rotation_matrix/Cos_2:y:0Msequential_7/random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЮ
4sequential_7/random_rotation_2/rotation_matrix/Sin_2Sin3sequential_7/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         Х
Dsequential_7/random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      я
>sequential_7/random_rotation_2/rotation_matrix/strided_slice_2StridedSlice8sequential_7/random_rotation_2/rotation_matrix/Sin_2:y:0Msequential_7/random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask┤
2sequential_7/random_rotation_2/rotation_matrix/NegNegGsequential_7/random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         Х
Dsequential_7/random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ё
>sequential_7/random_rotation_2/rotation_matrix/strided_slice_3StridedSlice:sequential_7/random_rotation_2/rotation_matrix/truediv:z:0Msequential_7/random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЮ
4sequential_7/random_rotation_2/rotation_matrix/Sin_3Sin3sequential_7/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         Х
Dsequential_7/random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      я
>sequential_7/random_rotation_2/rotation_matrix/strided_slice_4StridedSlice8sequential_7/random_rotation_2/rotation_matrix/Sin_3:y:0Msequential_7/random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЮ
4sequential_7/random_rotation_2/rotation_matrix/Cos_3Cos3sequential_7/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:         Х
Dsequential_7/random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      я
>sequential_7/random_rotation_2/rotation_matrix/strided_slice_5StridedSlice8sequential_7/random_rotation_2/rotation_matrix/Cos_3:y:0Msequential_7/random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskХ
Dsequential_7/random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_7/random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      є
>sequential_7/random_rotation_2/rotation_matrix/strided_slice_6StridedSlice<sequential_7/random_rotation_2/rotation_matrix/truediv_1:z:0Msequential_7/random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_7/random_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask
=sequential_7/random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :А
;sequential_7/random_rotation_2/rotation_matrix/zeros/packedPackEsequential_7/random_rotation_2/rotation_matrix/strided_slice:output:0Fsequential_7/random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
:sequential_7/random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ∙
4sequential_7/random_rotation_2/rotation_matrix/zerosFillDsequential_7/random_rotation_2/rotation_matrix/zeros/packed:output:0Csequential_7/random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         |
:sequential_7/random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :е
5sequential_7/random_rotation_2/rotation_matrix/concatConcatV2Gsequential_7/random_rotation_2/rotation_matrix/strided_slice_1:output:06sequential_7/random_rotation_2/rotation_matrix/Neg:y:0Gsequential_7/random_rotation_2/rotation_matrix/strided_slice_3:output:0Gsequential_7/random_rotation_2/rotation_matrix/strided_slice_4:output:0Gsequential_7/random_rotation_2/rotation_matrix/strided_slice_5:output:0Gsequential_7/random_rotation_2/rotation_matrix/strided_slice_6:output:0=sequential_7/random_rotation_2/rotation_matrix/zeros:output:0Csequential_7/random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         ▓
.sequential_7/random_rotation_2/transform/ShapeShapeTsequential_7/random_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:Ж
<sequential_7/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:И
>sequential_7/random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:И
>sequential_7/random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
6sequential_7/random_rotation_2/transform/strided_sliceStridedSlice7sequential_7/random_rotation_2/transform/Shape:output:0Esequential_7/random_rotation_2/transform/strided_slice/stack:output:0Gsequential_7/random_rotation_2/transform/strided_slice/stack_1:output:0Gsequential_7/random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:x
3sequential_7/random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ы
Csequential_7/random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Tsequential_7/random_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:0>sequential_7/random_rotation_2/rotation_matrix/concat:output:0?sequential_7/random_rotation_2/transform/strided_slice:output:0<sequential_7/random_rotation_2/transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARР
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0В
conv2d_10/Conv2DConv2DXsequential_7/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
paddingVALID*
strides
Ж
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Э
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ n
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*1
_output_shapes
:         ■■ о
max_pooling2d_10/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Р
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╔
conv2d_11/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
paddingVALID*
strides
Ж
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:         }}@о
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:         >>@*
ksize
*
paddingVALID*
strides
Р
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv2d_12/Conv2DConv2D!max_pooling2d_11/MaxPool:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
Ж
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@l
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:         <<@о
max_pooling2d_12/MaxPoolMaxPoolconv2d_12/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Р
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv2d_13/Conv2DConv2D!max_pooling2d_12/MaxPool:output:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ж
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @l
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:         @о
max_pooling2d_13/MaxPoolMaxPoolconv2d_13/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Р
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv2d_14/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ж
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @l
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:         @о
max_pooling2d_14/MaxPoolMaxPoolconv2d_14/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  М
flatten_2/ReshapeReshape!max_pooling2d_14/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:         АЕ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Н
dense_5/MatMulMatMulflatten_2/Reshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @`
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:         @Д
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0Н
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          В
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          `
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:          Д
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Н
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ю
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOpD^sequential_7/random_flip_3/stateful_uniform_full_int/RngReadAndSkipF^sequential_7/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip?^sequential_7/random_rotation_2/stateful_uniform/RngReadAndSkip;^sequential_7/random_zoom_2/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         АА: : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2К
Csequential_7/random_flip_3/stateful_uniform_full_int/RngReadAndSkipCsequential_7/random_flip_3/stateful_uniform_full_int/RngReadAndSkip2О
Esequential_7/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipEsequential_7/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip2А
>sequential_7/random_rotation_2/stateful_uniform/RngReadAndSkip>sequential_7/random_rotation_2/stateful_uniform/RngReadAndSkip2x
:sequential_7/random_zoom_2/stateful_uniform/RngReadAndSkip:sequential_7/random_zoom_2/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ъ
Ю
)__inference_conv2d_14_layer_call_fn_31863

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_30292w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╒
M
1__inference_random_rotation_2_layer_call_fn_32229

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29704j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╕
L
0__inference_max_pooling2d_12_layer_call_fn_31819

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_30173Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ц
d
H__inference_random_flip_3_layer_call_and_return_conditional_losses_29692

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_30173

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
п
a
E__inference_resizing_1_layer_call_and_return_conditional_losses_29620

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_30185

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
г	
c
G__inference_sequential_6_layer_call_and_return_conditional_losses_31381

inputs
identityg
resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ▒
 resizing_1/resize/ResizeBilinearResizeBilinearinputsresizing_1/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(W
rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;Y
rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    в
rescaling_1/mulMul1resizing_1/resize/ResizeBilinear:resized_images:0rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:         ААИ
rescaling_1/addAddV2rescaling_1/mul:z:0rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААe
IdentityIdentityrescaling_1/add:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
А	
m
G__inference_sequential_6_layer_call_and_return_conditional_losses_29681
resizing_1_input
identity╧
resizing_1/PartitionedCallPartitionedCallresizing_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_29620ф
rescaling_1/PartitionedCallPartitionedCall#resizing_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_1_layer_call_and_return_conditional_losses_29630v
IdentityIdentity$rescaling_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:c _
1
_output_shapes
:         АА
*
_user_specified_nameresizing_1_input
Ю

є
B__inference_dense_7_layer_call_and_return_conditional_losses_31955

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_30149

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Аn
╠
 __inference__wrapped_model_29607
sequential_6_inputO
5sequential_8_conv2d_10_conv2d_readvariableop_resource: D
6sequential_8_conv2d_10_biasadd_readvariableop_resource: O
5sequential_8_conv2d_11_conv2d_readvariableop_resource: @D
6sequential_8_conv2d_11_biasadd_readvariableop_resource:@O
5sequential_8_conv2d_12_conv2d_readvariableop_resource:@@D
6sequential_8_conv2d_12_biasadd_readvariableop_resource:@O
5sequential_8_conv2d_13_conv2d_readvariableop_resource:@@D
6sequential_8_conv2d_13_biasadd_readvariableop_resource:@O
5sequential_8_conv2d_14_conv2d_readvariableop_resource:@@D
6sequential_8_conv2d_14_biasadd_readvariableop_resource:@F
3sequential_8_dense_5_matmul_readvariableop_resource:	А@B
4sequential_8_dense_5_biasadd_readvariableop_resource:@E
3sequential_8_dense_6_matmul_readvariableop_resource:@ B
4sequential_8_dense_6_biasadd_readvariableop_resource: E
3sequential_8_dense_7_matmul_readvariableop_resource: B
4sequential_8_dense_7_biasadd_readvariableop_resource:
identityИв-sequential_8/conv2d_10/BiasAdd/ReadVariableOpв,sequential_8/conv2d_10/Conv2D/ReadVariableOpв-sequential_8/conv2d_11/BiasAdd/ReadVariableOpв,sequential_8/conv2d_11/Conv2D/ReadVariableOpв-sequential_8/conv2d_12/BiasAdd/ReadVariableOpв,sequential_8/conv2d_12/Conv2D/ReadVariableOpв-sequential_8/conv2d_13/BiasAdd/ReadVariableOpв,sequential_8/conv2d_13/Conv2D/ReadVariableOpв-sequential_8/conv2d_14/BiasAdd/ReadVariableOpв,sequential_8/conv2d_14/Conv2D/ReadVariableOpв+sequential_8/dense_5/BiasAdd/ReadVariableOpв*sequential_8/dense_5/MatMul/ReadVariableOpв+sequential_8/dense_6/BiasAdd/ReadVariableOpв*sequential_8/dense_6/MatMul/ReadVariableOpв+sequential_8/dense_7/BiasAdd/ReadVariableOpв*sequential_8/dense_7/MatMul/ReadVariableOpБ
0sequential_8/sequential_6/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ё
:sequential_8/sequential_6/resizing_1/resize/ResizeBilinearResizeBilinearsequential_6_input9sequential_8/sequential_6/resizing_1/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(q
,sequential_8/sequential_6/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;s
.sequential_8/sequential_6/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
)sequential_8/sequential_6/rescaling_1/mulMulKsequential_8/sequential_6/resizing_1/resize/ResizeBilinear:resized_images:05sequential_8/sequential_6/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:         АА╓
)sequential_8/sequential_6/rescaling_1/addAddV2-sequential_8/sequential_6/rescaling_1/mul:z:07sequential_8/sequential_6/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААк
,sequential_8/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ё
sequential_8/conv2d_10/Conv2DConv2D-sequential_8/sequential_6/rescaling_1/add:z:04sequential_8/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
paddingVALID*
strides
а
-sequential_8/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0─
sequential_8/conv2d_10/BiasAddBiasAdd&sequential_8/conv2d_10/Conv2D:output:05sequential_8/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ И
sequential_8/conv2d_10/ReluRelu'sequential_8/conv2d_10/BiasAdd:output:0*
T0*1
_output_shapes
:         ■■ ╚
%sequential_8/max_pooling2d_10/MaxPoolMaxPool)sequential_8/conv2d_10/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
к
,sequential_8/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ё
sequential_8/conv2d_11/Conv2DConv2D.sequential_8/max_pooling2d_10/MaxPool:output:04sequential_8/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
paddingVALID*
strides
а
-sequential_8/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_8/conv2d_11/BiasAddBiasAdd&sequential_8/conv2d_11/Conv2D:output:05sequential_8/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@Ж
sequential_8/conv2d_11/ReluRelu'sequential_8/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:         }}@╚
%sequential_8/max_pooling2d_11/MaxPoolMaxPool)sequential_8/conv2d_11/Relu:activations:0*/
_output_shapes
:         >>@*
ksize
*
paddingVALID*
strides
к
,sequential_8/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_8/conv2d_12/Conv2DConv2D.sequential_8/max_pooling2d_11/MaxPool:output:04sequential_8/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
а
-sequential_8/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_8/conv2d_12/BiasAddBiasAdd&sequential_8/conv2d_12/Conv2D:output:05sequential_8/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@Ж
sequential_8/conv2d_12/ReluRelu'sequential_8/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:         <<@╚
%sequential_8/max_pooling2d_12/MaxPoolMaxPool)sequential_8/conv2d_12/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
к
,sequential_8/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_8/conv2d_13/Conv2DConv2D.sequential_8/max_pooling2d_12/MaxPool:output:04sequential_8/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
а
-sequential_8/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_8/conv2d_13/BiasAddBiasAdd&sequential_8/conv2d_13/Conv2D:output:05sequential_8/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Ж
sequential_8/conv2d_13/ReluRelu'sequential_8/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:         @╚
%sequential_8/max_pooling2d_13/MaxPoolMaxPool)sequential_8/conv2d_13/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
к
,sequential_8/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_8/conv2d_14/Conv2DConv2D.sequential_8/max_pooling2d_13/MaxPool:output:04sequential_8/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
а
-sequential_8/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_8/conv2d_14/BiasAddBiasAdd&sequential_8/conv2d_14/Conv2D:output:05sequential_8/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Ж
sequential_8/conv2d_14/ReluRelu'sequential_8/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:         @╚
%sequential_8/max_pooling2d_14/MaxPoolMaxPool)sequential_8/conv2d_14/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
m
sequential_8/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  │
sequential_8/flatten_2/ReshapeReshape.sequential_8/max_pooling2d_14/MaxPool:output:0%sequential_8/flatten_2/Const:output:0*
T0*(
_output_shapes
:         АЯ
*sequential_8/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_8_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0┤
sequential_8/dense_5/MatMulMatMul'sequential_8/flatten_2/Reshape:output:02sequential_8/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ь
+sequential_8/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_8_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╡
sequential_8/dense_5/BiasAddBiasAdd%sequential_8/dense_5/MatMul:product:03sequential_8/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @z
sequential_8/dense_5/ReluRelu%sequential_8/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:         @Ю
*sequential_8/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_8_dense_6_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0┤
sequential_8/dense_6/MatMulMatMul'sequential_8/dense_5/Relu:activations:02sequential_8/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ь
+sequential_8/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_8_dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╡
sequential_8/dense_6/BiasAddBiasAdd%sequential_8/dense_6/MatMul:product:03sequential_8/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          z
sequential_8/dense_6/ReluRelu%sequential_8/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:          Ю
*sequential_8/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_8_dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0┤
sequential_8/dense_7/MatMulMatMul'sequential_8/dense_6/Relu:activations:02sequential_8/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ь
+sequential_8/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_8_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
sequential_8/dense_7/BiasAddBiasAdd%sequential_8/dense_7/MatMul:product:03sequential_8/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         А
sequential_8/dense_7/SoftmaxSoftmax%sequential_8/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         u
IdentityIdentity&sequential_8/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ▓
NoOpNoOp.^sequential_8/conv2d_10/BiasAdd/ReadVariableOp-^sequential_8/conv2d_10/Conv2D/ReadVariableOp.^sequential_8/conv2d_11/BiasAdd/ReadVariableOp-^sequential_8/conv2d_11/Conv2D/ReadVariableOp.^sequential_8/conv2d_12/BiasAdd/ReadVariableOp-^sequential_8/conv2d_12/Conv2D/ReadVariableOp.^sequential_8/conv2d_13/BiasAdd/ReadVariableOp-^sequential_8/conv2d_13/Conv2D/ReadVariableOp.^sequential_8/conv2d_14/BiasAdd/ReadVariableOp-^sequential_8/conv2d_14/Conv2D/ReadVariableOp,^sequential_8/dense_5/BiasAdd/ReadVariableOp+^sequential_8/dense_5/MatMul/ReadVariableOp,^sequential_8/dense_6/BiasAdd/ReadVariableOp+^sequential_8/dense_6/MatMul/ReadVariableOp,^sequential_8/dense_7/BiasAdd/ReadVariableOp+^sequential_8/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2^
-sequential_8/conv2d_10/BiasAdd/ReadVariableOp-sequential_8/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_10/Conv2D/ReadVariableOp,sequential_8/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_11/BiasAdd/ReadVariableOp-sequential_8/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_11/Conv2D/ReadVariableOp,sequential_8/conv2d_11/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_12/BiasAdd/ReadVariableOp-sequential_8/conv2d_12/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_12/Conv2D/ReadVariableOp,sequential_8/conv2d_12/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_13/BiasAdd/ReadVariableOp-sequential_8/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_13/Conv2D/ReadVariableOp,sequential_8/conv2d_13/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_14/BiasAdd/ReadVariableOp-sequential_8/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_14/Conv2D/ReadVariableOp,sequential_8/conv2d_14/Conv2D/ReadVariableOp2Z
+sequential_8/dense_5/BiasAdd/ReadVariableOp+sequential_8/dense_5/BiasAdd/ReadVariableOp2X
*sequential_8/dense_5/MatMul/ReadVariableOp*sequential_8/dense_5/MatMul/ReadVariableOp2Z
+sequential_8/dense_6/BiasAdd/ReadVariableOp+sequential_8/dense_6/BiasAdd/ReadVariableOp2X
*sequential_8/dense_6/MatMul/ReadVariableOp*sequential_8/dense_6/MatMul/ReadVariableOp2Z
+sequential_8/dense_7/BiasAdd/ReadVariableOp+sequential_8/dense_7/BiasAdd/ReadVariableOp2X
*sequential_8/dense_7/MatMul/ReadVariableOp*sequential_8/dense_7/MatMul/ReadVariableOp:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_6_input
╢
╗
,__inference_sequential_7_layer_call_fn_30120
random_flip_3_input
unknown:	
	unknown_0:	
	unknown_1:	
identityИвStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_3_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_30100y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         АА: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:         АА
-
_user_specified_namerandom_flip_3_input
Є
U
,__inference_sequential_7_layer_call_fn_29710
random_flip_3_input
identity╔
PartitionedCallPartitionedCallrandom_flip_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_29707j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:f b
1
_output_shapes
:         АА
-
_user_specified_namerandom_flip_3_input
ъ
Ю
)__inference_conv2d_12_layer_call_fn_31803

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_30256w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         <<@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs
Щ

є
B__inference_dense_6_layer_call_and_return_conditional_losses_31935

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:          a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ЧА
┼
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29836

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИвstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а┐Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╢
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:         Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╪
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :г
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    б
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╕
L
0__inference_max_pooling2d_14_layer_call_fn_31879

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_30197Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
═
I
-__inference_random_flip_3_layer_call_fn_31984

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_29692j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╩
serving_default╢
[
sequential_6_inputE
$serving_default_sequential_6_input:0         АА;
dense_70
StatefulPartitionedCall:0         tensorflow/serving/predict:╚щ
М
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
─
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_sequential
╤
"layer-0
#layer-1
$layer-2
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_sequential
╗

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
е
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
е
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
е
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
е
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

ckernel
dbias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
е
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
е
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

wkernel
xbias
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
┬

kernel
	Аbias
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Зkernel
	Иbias
Й	variables
Кtrainable_variables
Лregularization_losses
М	keras_api
Н__call__
+О&call_and_return_all_conditional_losses"
_tf_keras_layer
Ю
	Пiter
Рbeta_1
Сbeta_2

Тdecay
Уlearning_rate+m╡,m╢9m╖:m╕Gm╣Hm║Um╗Vm╝cm╜dm╛wm┐xm└m┴	Аm┬	Зm├	Иm─+v┼,v╞9v╟:v╚Gv╔Hv╩Uv╦Vv╠cv═dv╬wv╧xv╨v╤	Аv╥	Зv╙	Иv╘"
	optimizer
Щ
+0
,1
92
:3
G4
H5
U6
V7
c8
d9
w10
x11
12
А13
З14
И15"
trackable_list_wrapper
Щ
+0
,1
92
:3
G4
H5
U6
V7
c8
d9
w10
x11
12
А13
З14
И15"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
■2√
,__inference_sequential_8_layer_call_fn_30394
,__inference_sequential_8_layer_call_fn_30814
,__inference_sequential_8_layer_call_fn_30857
,__inference_sequential_8_layer_call_fn_30661└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ъ2ч
G__inference_sequential_8_layer_call_and_return_conditional_losses_30930
G__inference_sequential_8_layer_call_and_return_conditional_losses_31322
G__inference_sequential_8_layer_call_and_return_conditional_losses_30713
G__inference_sequential_8_layer_call_and_return_conditional_losses_30771└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╓B╙
 __inference__wrapped_model_29607sequential_6_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
-
Щserving_default"
signature_map
л
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses"
_tf_keras_layer
л
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
■2√
,__inference_sequential_6_layer_call_fn_29636
,__inference_sequential_6_layer_call_fn_31366
,__inference_sequential_6_layer_call_fn_31371
,__inference_sequential_6_layer_call_fn_29669└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ъ2ч
G__inference_sequential_6_layer_call_and_return_conditional_losses_31381
G__inference_sequential_6_layer_call_and_return_conditional_losses_31391
G__inference_sequential_6_layer_call_and_return_conditional_losses_29675
G__inference_sequential_6_layer_call_and_return_conditional_losses_29681└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
├
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п_random_generator
░__call__
+▒&call_and_return_all_conditional_losses"
_tf_keras_layer
├
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢_random_generator
╖__call__
+╕&call_and_return_all_conditional_losses"
_tf_keras_layer
├
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜_random_generator
╛__call__
+┐&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
■2√
,__inference_sequential_7_layer_call_fn_29710
,__inference_sequential_7_layer_call_fn_31396
,__inference_sequential_7_layer_call_fn_31407
,__inference_sequential_7_layer_call_fn_30120└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ъ2ч
G__inference_sequential_7_layer_call_and_return_conditional_losses_31411
G__inference_sequential_7_layer_call_and_return_conditional_losses_31734
G__inference_sequential_7_layer_call_and_return_conditional_losses_30127
G__inference_sequential_7_layer_call_and_return_conditional_losses_30140└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
*:( 2conv2d_10/kernel
: 2conv2d_10/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_conv2d_10_layer_call_fn_31743в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_10_layer_call_and_return_conditional_losses_31754в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
┌2╫
0__inference_max_pooling2d_10_layer_call_fn_31759в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ї2Є
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_31764в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
*:( @2conv2d_11/kernel
:@2conv2d_11/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_conv2d_11_layer_call_fn_31773в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_11_layer_call_and_return_conditional_losses_31784в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
┌2╫
0__inference_max_pooling2d_11_layer_call_fn_31789в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ї2Є
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_31794в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
*:(@@2conv2d_12/kernel
:@2conv2d_12/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
▌layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_conv2d_12_layer_call_fn_31803в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_12_layer_call_and_return_conditional_losses_31814в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▐non_trainable_variables
▀layers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
┌2╫
0__inference_max_pooling2d_12_layer_call_fn_31819в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ї2Є
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_31824в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
*:(@@2conv2d_13/kernel
:@2conv2d_13/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_conv2d_13_layer_call_fn_31833в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_13_layer_call_and_return_conditional_losses_31844в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
┌2╫
0__inference_max_pooling2d_13_layer_call_fn_31849в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ї2Є
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_31854в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
*:(@@2conv2d_14/kernel
:@2conv2d_14/bias
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
эnon_trainable_variables
юlayers
яmetrics
 Ёlayer_regularization_losses
ёlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_conv2d_14_layer_call_fn_31863в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_14_layer_call_and_return_conditional_losses_31874в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
┌2╫
0__inference_max_pooling2d_14_layer_call_fn_31879в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ї2Є
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_31884в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_flatten_2_layer_call_fn_31889в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_flatten_2_layer_call_and_return_conditional_losses_31895в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
!:	А@2dense_5/kernel
:@2dense_5/bias
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
№non_trainable_variables
¤layers
■metrics
  layer_regularization_losses
Аlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
╤2╬
'__inference_dense_5_layer_call_fn_31904в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_dense_5_layer_call_and_return_conditional_losses_31915в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 :@ 2dense_6/kernel
: 2dense_6/bias
/
0
А1"
trackable_list_wrapper
/
0
А1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
╤2╬
'__inference_dense_6_layer_call_fn_31924в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_dense_6_layer_call_and_return_conditional_losses_31935в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 : 2dense_7/kernel
:2dense_7/bias
0
З0
И1"
trackable_list_wrapper
0
З0
И1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Й	variables
Кtrainable_variables
Лregularization_losses
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
╤2╬
'__inference_dense_7_layer_call_fn_31944в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_dense_7_layer_call_and_return_conditional_losses_31955в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
Ц
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
15"
trackable_list_wrapper
0
Л0
М1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╒B╥
#__inference_signature_wrapper_31361sequential_6_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_resizing_1_layer_call_fn_31960в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_resizing_1_layer_call_and_return_conditional_losses_31966в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_rescaling_1_layer_call_fn_31971в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_rescaling_1_layer_call_and_return_conditional_losses_31979в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
.
0
1"
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
╕
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
░__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses"
_generic_user_object
/
Ь
_generator"
_generic_user_object
Ш2Х
-__inference_random_flip_3_layer_call_fn_31984
-__inference_random_flip_3_layer_call_fn_31991┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╬2╦
H__inference_random_flip_3_layer_call_and_return_conditional_losses_31995
H__inference_random_flip_3_layer_call_and_return_conditional_losses_32106┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses"
_generic_user_object
/
в
_generator"
_generic_user_object
Ш2Х
-__inference_random_zoom_2_layer_call_fn_32111
-__inference_random_zoom_2_layer_call_fn_32118┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╬2╦
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_32122
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_32224┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╛__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses"
_generic_user_object
/
и
_generator"
_generic_user_object
а2Э
1__inference_random_rotation_2_layer_call_fn_32229
1__inference_random_rotation_2_layer_call_fn_32236┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╓2╙
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_32240
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_32358┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
5
"0
#1
$2"
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
R

йtotal

кcount
л	variables
м	keras_api"
_tf_keras_metric
c

нtotal

оcount
п
_fn_kwargs
░	variables
▒	keras_api"
_tf_keras_metric
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
/
▓
_state_var"
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
/
│
_state_var"
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
/
┤
_state_var"
_generic_user_object
:  (2total
:  (2count
0
й0
к1"
trackable_list_wrapper
.
л	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
н0
о1"
trackable_list_wrapper
.
░	variables"
_generic_user_object
": 	2random_flip_3/StateVar
": 	2random_zoom_2/StateVar
&:$	2random_rotation_2/StateVar
/:- 2Adam/conv2d_10/kernel/m
!: 2Adam/conv2d_10/bias/m
/:- @2Adam/conv2d_11/kernel/m
!:@2Adam/conv2d_11/bias/m
/:-@@2Adam/conv2d_12/kernel/m
!:@2Adam/conv2d_12/bias/m
/:-@@2Adam/conv2d_13/kernel/m
!:@2Adam/conv2d_13/bias/m
/:-@@2Adam/conv2d_14/kernel/m
!:@2Adam/conv2d_14/bias/m
&:$	А@2Adam/dense_5/kernel/m
:@2Adam/dense_5/bias/m
%:#@ 2Adam/dense_6/kernel/m
: 2Adam/dense_6/bias/m
%:# 2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
/:- 2Adam/conv2d_10/kernel/v
!: 2Adam/conv2d_10/bias/v
/:- @2Adam/conv2d_11/kernel/v
!:@2Adam/conv2d_11/bias/v
/:-@@2Adam/conv2d_12/kernel/v
!:@2Adam/conv2d_12/bias/v
/:-@@2Adam/conv2d_13/kernel/v
!:@2Adam/conv2d_13/bias/v
/:-@@2Adam/conv2d_14/kernel/v
!:@2Adam/conv2d_14/bias/v
&:$	А@2Adam/dense_5/kernel/v
:@2Adam/dense_5/bias/v
%:#@ 2Adam/dense_6/kernel/v
: 2Adam/dense_6/bias/v
%:# 2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v┤
 __inference__wrapped_model_29607П+,9:GHUVcdwxАЗИEвB
;в8
6К3
sequential_6_input         АА
к "1к.
,
dense_7!К
dense_7         ╕
D__inference_conv2d_10_layer_call_and_return_conditional_losses_31754p+,9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         ■■ 
Ъ Р
)__inference_conv2d_10_layer_call_fn_31743c+,9в6
/в,
*К'
inputs         АА
к ""К         ■■ ┤
D__inference_conv2d_11_layer_call_and_return_conditional_losses_31784l9:7в4
-в*
(К%
inputs          
к "-в*
#К 
0         }}@
Ъ М
)__inference_conv2d_11_layer_call_fn_31773_9:7в4
-в*
(К%
inputs          
к " К         }}@┤
D__inference_conv2d_12_layer_call_and_return_conditional_losses_31814lGH7в4
-в*
(К%
inputs         >>@
к "-в*
#К 
0         <<@
Ъ М
)__inference_conv2d_12_layer_call_fn_31803_GH7в4
-в*
(К%
inputs         >>@
к " К         <<@┤
D__inference_conv2d_13_layer_call_and_return_conditional_losses_31844lUV7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ М
)__inference_conv2d_13_layer_call_fn_31833_UV7в4
-в*
(К%
inputs         @
к " К         @┤
D__inference_conv2d_14_layer_call_and_return_conditional_losses_31874lcd7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ М
)__inference_conv2d_14_layer_call_fn_31863_cd7в4
-в*
(К%
inputs         @
к " К         @г
B__inference_dense_5_layer_call_and_return_conditional_losses_31915]wx0в-
&в#
!К
inputs         А
к "%в"
К
0         @
Ъ {
'__inference_dense_5_layer_call_fn_31904Pwx0в-
&в#
!К
inputs         А
к "К         @г
B__inference_dense_6_layer_call_and_return_conditional_losses_31935]А/в,
%в"
 К
inputs         @
к "%в"
К
0          
Ъ {
'__inference_dense_6_layer_call_fn_31924PА/в,
%в"
 К
inputs         @
к "К          д
B__inference_dense_7_layer_call_and_return_conditional_losses_31955^ЗИ/в,
%в"
 К
inputs          
к "%в"
К
0         
Ъ |
'__inference_dense_7_layer_call_fn_31944QЗИ/в,
%в"
 К
inputs          
к "К         й
D__inference_flatten_2_layer_call_and_return_conditional_losses_31895a7в4
-в*
(К%
inputs         @
к "&в#
К
0         А
Ъ Б
)__inference_flatten_2_layer_call_fn_31889T7в4
-в*
(К%
inputs         @
к "К         Аю
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_31764ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_10_layer_call_fn_31759СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_31794ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_11_layer_call_fn_31789СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_31824ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_12_layer_call_fn_31819СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_31854ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_13_layer_call_fn_31849СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_31884ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_14_layer_call_fn_31879СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╝
H__inference_random_flip_3_layer_call_and_return_conditional_losses_31995p=в:
3в0
*К'
inputs         АА
p 
к "/в,
%К"
0         АА
Ъ └
H__inference_random_flip_3_layer_call_and_return_conditional_losses_32106t▓=в:
3в0
*К'
inputs         АА
p
к "/в,
%К"
0         АА
Ъ Ф
-__inference_random_flip_3_layer_call_fn_31984c=в:
3в0
*К'
inputs         АА
p 
к ""К         ААШ
-__inference_random_flip_3_layer_call_fn_31991g▓=в:
3в0
*К'
inputs         АА
p
к ""К         АА└
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_32240p=в:
3в0
*К'
inputs         АА
p 
к "/в,
%К"
0         АА
Ъ ─
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_32358t┤=в:
3в0
*К'
inputs         АА
p
к "/в,
%К"
0         АА
Ъ Ш
1__inference_random_rotation_2_layer_call_fn_32229c=в:
3в0
*К'
inputs         АА
p 
к ""К         ААЬ
1__inference_random_rotation_2_layer_call_fn_32236g┤=в:
3в0
*К'
inputs         АА
p
к ""К         АА╝
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_32122p=в:
3в0
*К'
inputs         АА
p 
к "/в,
%К"
0         АА
Ъ └
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_32224t│=в:
3в0
*К'
inputs         АА
p
к "/в,
%К"
0         АА
Ъ Ф
-__inference_random_zoom_2_layer_call_fn_32111c=в:
3в0
*К'
inputs         АА
p 
к ""К         ААШ
-__inference_random_zoom_2_layer_call_fn_32118g│=в:
3в0
*К'
inputs         АА
p
к ""К         АА╢
F__inference_rescaling_1_layer_call_and_return_conditional_losses_31979l9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ О
+__inference_rescaling_1_layer_call_fn_31971_9в6
/в,
*К'
inputs         АА
к ""К         АА╡
E__inference_resizing_1_layer_call_and_return_conditional_losses_31966l9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ Н
*__inference_resizing_1_layer_call_fn_31960_9в6
/в,
*К'
inputs         АА
к ""К         АА╔
G__inference_sequential_6_layer_call_and_return_conditional_losses_29675~KвH
Aв>
4К1
resizing_1_input         АА
p 

 
к "/в,
%К"
0         АА
Ъ ╔
G__inference_sequential_6_layer_call_and_return_conditional_losses_29681~KвH
Aв>
4К1
resizing_1_input         АА
p

 
к "/в,
%К"
0         АА
Ъ ┐
G__inference_sequential_6_layer_call_and_return_conditional_losses_31381tAв>
7в4
*К'
inputs         АА
p 

 
к "/в,
%К"
0         АА
Ъ ┐
G__inference_sequential_6_layer_call_and_return_conditional_losses_31391tAв>
7в4
*К'
inputs         АА
p

 
к "/в,
%К"
0         АА
Ъ б
,__inference_sequential_6_layer_call_fn_29636qKвH
Aв>
4К1
resizing_1_input         АА
p 

 
к ""К         ААб
,__inference_sequential_6_layer_call_fn_29669qKвH
Aв>
4К1
resizing_1_input         АА
p

 
к ""К         ААЧ
,__inference_sequential_6_layer_call_fn_31366gAв>
7в4
*К'
inputs         АА
p 

 
к ""К         ААЧ
,__inference_sequential_6_layer_call_fn_31371gAв>
7в4
*К'
inputs         АА
p

 
к ""К         АА═
G__inference_sequential_7_layer_call_and_return_conditional_losses_30127БNвK
DвA
7К4
random_flip_3_input         АА
p 

 
к "/в,
%К"
0         АА
Ъ ╒
G__inference_sequential_7_layer_call_and_return_conditional_losses_30140Й▓│┤NвK
DвA
7К4
random_flip_3_input         АА
p

 
к "/в,
%К"
0         АА
Ъ ┐
G__inference_sequential_7_layer_call_and_return_conditional_losses_31411tAв>
7в4
*К'
inputs         АА
p 

 
к "/в,
%К"
0         АА
Ъ ╟
G__inference_sequential_7_layer_call_and_return_conditional_losses_31734|▓│┤Aв>
7в4
*К'
inputs         АА
p

 
к "/в,
%К"
0         АА
Ъ д
,__inference_sequential_7_layer_call_fn_29710tNвK
DвA
7К4
random_flip_3_input         АА
p 

 
к ""К         ААм
,__inference_sequential_7_layer_call_fn_30120|▓│┤NвK
DвA
7К4
random_flip_3_input         АА
p

 
к ""К         ААЧ
,__inference_sequential_7_layer_call_fn_31396gAв>
7в4
*К'
inputs         АА
p 

 
к ""К         ААЯ
,__inference_sequential_7_layer_call_fn_31407o▓│┤Aв>
7в4
*К'
inputs         АА
p

 
к ""К         АА╫
G__inference_sequential_8_layer_call_and_return_conditional_losses_30713Л+,9:GHUVcdwxАЗИMвJ
Cв@
6К3
sequential_6_input         АА
p 

 
к "%в"
К
0         
Ъ ▌
G__inference_sequential_8_layer_call_and_return_conditional_losses_30771С▓│┤+,9:GHUVcdwxАЗИMвJ
Cв@
6К3
sequential_6_input         АА
p

 
к "%в"
К
0         
Ъ ╩
G__inference_sequential_8_layer_call_and_return_conditional_losses_30930+,9:GHUVcdwxАЗИAв>
7в4
*К'
inputs         АА
p 

 
к "%в"
К
0         
Ъ ╤
G__inference_sequential_8_layer_call_and_return_conditional_losses_31322Е▓│┤+,9:GHUVcdwxАЗИAв>
7в4
*К'
inputs         АА
p

 
к "%в"
К
0         
Ъ о
,__inference_sequential_8_layer_call_fn_30394~+,9:GHUVcdwxАЗИMвJ
Cв@
6К3
sequential_6_input         АА
p 

 
к "К         ╡
,__inference_sequential_8_layer_call_fn_30661Д▓│┤+,9:GHUVcdwxАЗИMвJ
Cв@
6К3
sequential_6_input         АА
p

 
к "К         в
,__inference_sequential_8_layer_call_fn_30814r+,9:GHUVcdwxАЗИAв>
7в4
*К'
inputs         АА
p 

 
к "К         и
,__inference_sequential_8_layer_call_fn_30857x▓│┤+,9:GHUVcdwxАЗИAв>
7в4
*К'
inputs         АА
p

 
к "К         ═
#__inference_signature_wrapper_31361е+,9:GHUVcdwxАЗИ[вX
в 
QкN
L
sequential_6_input6К3
sequential_6_input         АА"1к.
,
dense_7!К
dense_7         