(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



BeginPackage["SuperDataAnalysis`"]


Protect[$workingDirectory,$loadedFile,$loadedFilePath,$data,$loadedFileName,$s1Length, $s1Values,$s2Length,$s2Values,$s3Length,$s3Values, $s4Length,$s4Values];



(* ::Input::Initialization:: *)
MyFunction::usage="MyFunction[x] is a function that does something.";


(* ::Input::Initialization:: *)
SetWorkingDirectory::usage=
"Set the working directory, which will be openeded when calling LoadGlobalFile.";

LoadGlobalFile::usage="LoadGlobalFile[]\n Loads a file, sets the global variables loadedFile, $loadedFilePath, $data, $loadedFileName, and extracts the number of sweeps and associated sweep variables.";


(* ::Input::Initialization:: *)
FindPartitionLength2Sweeps::usage="FindPartitionLength2Sweeps[SWLColumnNumber_:3,SWLNumber_:3] \n Looks for the appearance of SWLNumber in SWLColumn to determine the length of the smaller of two sweeps.";


(* ::Input::Initialization:: *)
FindPartitionLength3Sweeps::usage="FindPartitionLength3Sweeps[SWLColumnNumber_:4,SWLNumber1_:3,SWLNumber2_:7]\n Like FindPartitionLength2Sweeps, expect this function looks for two SWLNumbers, to find the length of the innermost sweep when using three sweeps.";


(* ::Input::Initialization:: *)
FindPartitionLength4Sweeps::usage="FindPartitionLength4Sweeps[SWLColumnNumber_:5,SWLNumber1_:3,SWLNumber2_:7,SWLNumber3_:15]\n Like FindPartitionLength2Sweeps, expect this function looks for three SWLNumbers, to find the length of the innermost sweep when using four sweeps.";


(* ::Input::Initialization:: *)
TakeColumn::usage="TakeColumn[data_List:$data,column_Integer]\n Extracts the indicated column from a two dimensional matrix and returns it as a list with depth one. If no data argument is passed, it takes from the global $data.";


(* ::Input::Initialization:: *)
S2Split::usage="S2Split[list_List]\n Splits the input list into seperate lists, each with length $S1Length (one value of S2)";


(* ::Input::Initialization:: *)
S2SplitPart::usage="S3Split[list_List, n_Integer]\n Returnes the nth part (S2 value) of the S2Split, with n = 1 corresponding to the first part.";


(* ::Input::Initialization:: *)
S3Split::usage="S3Split[list_List]\n Splits the input list into seperate lists, each with length $S1Length * S2Length (one value of S3)";


(* ::Input::Initialization:: *)
S3SplitPart::usage="S3Split[list_List, n_Integerta]\n Returnes the nth part (S3 value) of the S3Split, with n = 1 corresponding to the first part.";


(* ::Input::Initialization:: *)
S3S2Split::usage="S3S2Split[list_List]\n first applies S3Split, and then S2Split, thus returning a list of depth 3.";


(* ::Input::Initialization:: *)
S4Split::usage="S4Split[list_List]\n Splits the input list into seperate lists, each with length $S1Length * $s2Length * $s3Length (one value of S4)";


(* ::Input::Initialization:: *)
S4SplitPart::usage="S3Split[list_List, n_Integer]\n Returnes the nth part (S4 value) of the S4Split, with n = 1 corresponding to the first part.";


(* ::Input::Initialization:: *)
S4S3Split::usage="S4S3Split[list_List]\n first applies S4Split, and then S3Split, thus returning a list of depth 3.";


(* ::Input::Initialization:: *)
S4S3S2Split::usage = "S4S3S2Split[list_List]\n first applies S4Split, then S3Split, then S2Split, thus returning a list of depth 4.";


(* ::Input::Initialization:: *)
FindSwitch::usage = "FindSwitch[sign_Integer : 1, data_List,fallBackValue_:-1]\nFindSwitch[ sign_Integer : 1, value_List,data_List,treshold_,fallBackValue_:-1]\n FindSwitch looks at the difference between two adjacent data points, and tracks the largest value, which might work poorly when the data is noisy. The sign of the jump is determined by sign_Integer, which is 1 by default (positive jump). When the largest difference is smaller than the treshold value, the fallBackValue is returned. There are two versions of the FindSwitch function. If only a data list is given, the function returns the index of the data point where the jump occurs. If also a corresponding value list is supplied, a list of lenght two is returned, where the first element is the index of the point where the jump occurs, and the second element is the cossesponding value.";


(* ::Input::Initialization:: *)
ShowSwitch::usage = "ShowSwitch[ sign_Integer : 1,data_List,treshold_,fallBackValue_: -1]\nShowSwitch[ sign_Integer : 1,value_List,data_List,treshold_,fallBackValue_: -1]\n ShowSwitch uses FindSwitch to detect a jump, and then plots the data with a point that indicates the detected jump point.";


(* ::Input::Initialization:: *)
FindSwitchArray::usage = "FindSwitchArray[ sign_Integer: 1,data_List,treshold_Real,fallBackValue_Integer :-1]\nFindSwitchArray[ sign_Integer: 1,value_List,data_List,treshold_Real,fallBackValue_Integer :-1]\n FindSwitchArray aapplies FindSwitch to a list of lists";


(* ::Input::Initialization:: *)
ShowSwitchArray::usage = "ShowSwitchArray[ sign_Integer: 1,data_List,treshold_Real,fallBackValue_Integer :-1]\nShowSwitchArray[ sign_Integer: 1,value_List,data_List,treshold_Real,fallBackValue_Integer :-1]\n ShowSwitchArray aapplies FindSwitch to a list of lists";


(* ::Input::Initialization:: *)
FindSlope::usage = "FindSlope[sign_Integer : 1, data_List,threshold_Real,pointsToAverage_Integer : 3,fallBackValue_:0]\nFindSwitch[sign_Integer : 1, value_List,data_List, pointsToAverage_Integer : 3,treshold_Real,fallBackValue_:-1]\n FindSlope applies a moving average, then takes the differnce between subsequent points, and finds the first point (difference) larger than the treshold value. The sign of the slope is determined by sign_Integer, which is 1 by default (positive). When the largest difference is smaller than the treshold value, the fallBackValue is returned. There are two versions of the FindSwitch function. If only a data list is given, the function returns the index of the data point where the jump occurs. If also a corresponding value list is supplied, a list of lenght two is returned, where the first element is the index of the point where the jump occurs, and the second element is the cossesponding value.";


(* ::Input::Initialization:: *)
ShowFindSlope::usage = "ShowFindSlope[sign_Integer : 1,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_: 0]\nShowSwitch[ sign_Integer : 1,value_List,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_: -1]\n ShowFindSlope uses FindSlope to detect a slope, and then plots the data with a point that indicates the detected critical point.";


(* ::Input::Initialization:: *)
DebugFindSlope::usage = "DebugFindSlope[sign_Integer : 1,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_: 0]\nShowSwitch[ sign_Integer : 1,value_List,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_: -1]\n ShowFindSlope uses FindSlope to detect a slope, and then plots the data with a point that indicates the detected critical point. Also plots the smoothed, step-wise derived function.";


(* ::Input::Initialization:: *)
FindSlopeArray::usage = "FindSlopeArray[sign_Integer : 1,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_: 0]\nFindSlopeArray[ sign_Integer : 1,value_List,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_: -1]\n FindSlopeArray uses FindSlope to detect a slope, works on a list of lists.";


(* ::Input::Initialization:: *)
ShowFindSlopeArray::usage = "FindSlopeArray[sign_Integer : 1,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_: 0]\nFindSlopeArray[ sign_Integer : 1,value_List,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_: -1]\n FindSlopeArray uses FindSlope to detect a slope and also plots the data with the selected point indicated, works on a list of lists.";


Begin["`Private`"]


SetWorkingDirectory[]:=Module[{},
Unprotect[$workingDirectory];
$workingDirectory=SystemDialogInput["Directory","G:\\My Drive\\PhD Pisa\\Calculations, Data and Designs\\Measurements"];
Protect[$workingDirectory];
Print["Working directory set to: "<>$workingDirectory]
]


(* ::Input::Initialization:: *)
LoadGlobalFile[]:=Module[{},
Unprotect[$s1Length,$s2Length,$s2Values,$s3Length,$s3Values,$s4Length,$s4Values];
Clear[$s1Length,$s2Length,$s2Values,$s3Length,$s3Values,$s4Length,$s4Values];
Protect[$s1Length,$s2Length,$s2Values,$s3Length,$s3Values,$s4Length,$s4Values];

Unprotect[$loadedFile,$loadedFilePath,$data,$loadedFileName];

$loadedFilePath = SystemDialogInput["FileOpen",$workingDirectory];
$loadedFile =Import[$loadedFilePath, "Table"];
$loadedFileName = FileBaseName[FileNameTake[$loadedFilePath]] ;

Print["Directory = ",SetDirectory[DirectoryName[$loadedFilePath]]," \nFile name = ",$loadedFileName];
Print["First row of selectedFile: ",$loadedFile[[1]]];

$data=Delete[$loadedFile,1];

FindNumberOfSweeps[];

Protect[$loadedFile,$loadedFilePath,$data,$loadedFileName];
]


(* ::Input::Initialization:: *)
FindNumberOfSweeps:=Module[{sweepsN=0},
MapIndexed[If[#=="SWL",Print["Number of sweeps detected: ",sweepsN= First[#2]-1]]&,$loadedFile[[1]]];
Switch[sweepsN,0,Print["No SWL detected"],1,Variables1Sweep[],2,Variables2Sweeps[],3,Variables3Sweeps[],4,Variables4Sweeps[]];
]


(* ::Input::Initialization:: *)
Variables1Sweep[]:=Module[{},
Unprotect[$s1Length,$s1Values,$s2Length,$s2Values,$s3Length,$s3Values];

$s1Length = Length[$data];
$s1Values = TakeColumn[1];

Print["s1Length = ", $s1Length];
Print["s1Values = ", $s1Values];


Protect[$s1Length,$s1Values,$s2Length,$s2Values,$s3Length,$s3Values];
]


(* ::Input::Initialization:: *)
Variables2Sweeps[]:=Module[{},
Unprotect[$s1Length,$s1Values,$s2Length,$s2Values,$s3Length,$s3Values];

$s1Length =FindPartitionLength2Sweeps[];
$s2Length = Length[$data]/$s1Length;

$s1Values = S2Split[TakeColumn[1]][[1]];
$s2Values=Map[Mean,S2Split[TakeColumn[2]]];

Print["s1Length = ", $s1Length];
Print["s1Values = ", $s1Values];
Print["s2Length = ", $s2Length];
Print["s2Values = ", $s2Values];

Protect[$s1Length,$s1Values,$s2Length,$s2Values,$s3Length,$s3Values];
]


(* ::Input::Initialization:: *)
Variables3Sweeps[]:=Module[{},
Unprotect[$s1Length,$s1Values,$s2Length,$s2Values,$s3Length,$s3Values];

$s1Length =FindPartitionLength3Sweeps[4,3,7];
$s2Length = FindPartitionLength2Sweeps[4,7]/$s1Length;
$s3Length = Length[$data]/$s1Length/$s2Length;

If[NumberQ[$s1Length]&&NumberQ[$s2Length]&& NumberQ[$s3Length] ,

$s1Values = S3S2Split[TakeColumn[1]][[1]][[1]];
$s2Values=Map[Mean,S3S2Split[TakeColumn[2]][[1]]];
$s3Values=Map[Mean,S3Split[TakeColumn[3]]];

Print["s1Length = ",$s1Length];
Print["s2Length = ", $s2Length];
Print["s3Length = ", $s3Length];

Print["s1Values = ", $s1Values];
Print["s2Values = ", $s2Values];
Print["s3Values = ", $s3Values];

,
Print["s1Length = ",$s1Length];
Print["s2Length = ", $s2Length];
Print["s3Length = ", $s3Length];

Print["At least one of these lenghts is not a number, no values determined!"]
]
Protect[$s1Length,$s1Values,$s2Length,$s2Values,$s3Length,$s3Values];
]


(* ::Input::Initialization:: *)
Variables4Sweeps[]:=Module[{},
Unprotect[$s1Length,$s1Values,$s2Length,$s2Values,$s3Length,$s3Values, $s4Length, $s4Values];

$s1Length =FindPartitionLength4Sweeps[5,3,7,15];
$s2Length = FindPartitionLength3Sweeps[5,7,15]/$s1Length;
$s3Length = FindPartitionLength2Sweeps[5,15]/$s1Length/$s2Length;
$s4Length = Length[$data]/$s1Length/$s2Length/$s3Length;

If[NumberQ[$s1Length]&&NumberQ[$s2Length]&& NumberQ[$s3Length] &&NumberQ[$s4Length],

$s1Values = S4S3S2Split[TakeColumn[1]][[1]][[1]][[1]];
$s2Values=Map[Mean,S4S3S2Split[TakeColumn[2]][[1]][[1]]];
$s3Values=Map[Mean,S4S3Split[TakeColumn[3]][[1]]];
$s4Values=Map[Mean,S4Split[TakeColumn[4]]];

Print["s1Length = ",$s1Length];
Print["s2Length = ", $s2Length];
Print["s3Length = ", $s3Length];
Print["s4Length = ", $s4Length];

Print["s1Values = ", $s1Values];
Print["s2Values = ", $s2Values];
Print["s3Values = ", $s3Values];
Print["s4Values = ", $s4Values];

,
Print["s1Length = ",$s1Length];
Print["s2Length = ", $s2Length];
Print["s3Length = ", $s3Length];
Print["s4Length = ", $s4Length];
Print["At least one of these lenghts is not a number, no values determined!"]
]

Protect[$s1Length,$s1Values,$s2Length,$s2Values,$s3Length,$s3Values, $s4Length, $s4Values];
]


(* ::Input::Initialization:: *)
FindPartitionLength2Sweeps[SWLColumnNumber_:3,SWLNumber_:3]:= Module[{SWLColumn,partitions},
SWLColumn = Transpose[$data][[SWLColumnNumber]];
partitions=0;
Do[
If[SWLColumn[[i]]==SWLNumber,partitions+=1]
,{i,0,Length[SWLColumn]}];
Length[SWLColumn]/partitions
]


(* ::Input::Initialization:: *)
FindPartitionLength3Sweeps[SWLColumnNumber_:4,SWLNumber1_:3,SWLNumber2_:7]:= Module[{SWLColumn,partitions},
SWLColumn = Transpose[$data][[SWLColumnNumber]];
partitions=0;
Do[
If[SWLColumn[[i]]==SWLNumber1 ||SWLColumn[[i]]==SWLNumber2,partitions+=1]
,{i,0,Length[SWLColumn]}];
Length[SWLColumn]/partitions
]


(* ::Input::Initialization:: *)
FindPartitionLength4Sweeps[SWLColumnNumber_:5,SWLNumber1_:3,SWLNumber2_:7,SWLNumber3_:15]:= Module[{SWLColumn,partitions},
SWLColumn = Transpose[$data][[SWLColumnNumber]];
partitions=0;
Do[
If[SWLColumn[[i]]==SWLNumber1 ||SWLColumn[[i]]==SWLNumber2 ||SWLColumn[[i]]==SWLNumber3,partitions+=1]
,{i,0,Length[SWLColumn]}];
Length[SWLColumn]/partitions
]


(* ::Input::Initialization:: *)
TakeColumn[data_List:$data,column_Integer] := Transpose[data][[column]];


(* ::Input::Initialization:: *)
S2Split[list_List]:= Table[list[[1+(n-1)*($s1Length);;(n)*$s1Length ]],{n,1,$s2Length}]


(* ::Input::Initialization:: *)
S2SplitPart[list_List, n_Integer]:= list[[1+(n-1)*($s1Length);;(n)*$s1Length ]]


(* ::Input::Initialization:: *)
S3Split[list_List]:=Table[list[[1+(n-1)*($s1Length*$s2Length);;(n)*$s1Length * $s2Length]],{n,1,$s3Length}]


(* ::Input::Initialization:: *)
S3SplitPart[list_List,n_Integer]:=list[[1+(n-1)*($s1Length*$s2Length);;(n)*$s1Length * $s2Length]]


(* ::Input::Initialization:: *)
S3S2Split[list_List] := Map[S2Split[#]&,S3Split[list]]


(* ::Input::Initialization:: *)
S4Split[list_List]:=Table[list[[1+(n-1)*($s1Length*$s2Length*$s3Length);;(n)*$s1Length * $s2Length*$s3Length]],{n,1,$s4Length}]


(* ::Input::Initialization:: *)
S4SplitPart[list_List,n_Integer]:=list[[1+(n-1)*($s1Length*$s2Length*$s3Length);;(n)*$s1Length * $s2Length*$s3Length]]


(* ::Input::Initialization:: *)
S4S3Split[list_List]:= Map[S3Split[#]&,S4Split[list]]


(* ::Input::Initialization:: *)
S4S3S2Split[list_List]:= Map[S2Split[#]&,Map[S3Split[#]&,S4Split[list]],{2}]


(* ::Input::Initialization:: *)
FindSwitch[ sign_Integer : 1,data_List,treshold_,fallBackValue_ :-1]:=If[#[[2]]<treshold,fallBackValue,#[[1]]]&[{Ordering[sign*Differences[data],-1][[1]],Max[Differences[data]]}]


(* ::Input::Initialization:: *)
FindSwitch[ sign_Integer : 1, value_List,data_List,treshold_,fallBackValue_ :-1]:=If[#[[2]]<treshold,{fallBackValue,fallBackValue},{#[[1]],value[[#[[1]]]]}]&[{Ordering[sign*Differences[data],-1][[1]],Max[Differences[data]]}]


(* ::Input::Initialization:: *)
ShowSwitch[ sign_Integer : 1,data_List,treshold_,fallBackValue_ : -1]:=Module[{switchingPoint},
switchingPoint=FindSwitch[sign,data,treshold,fallBackValue];
{switchingPoint,Show[ListLinePlot[data,PlotRange->Full],Graphics[{PointSize[0.025],Point[{switchingPoint,data[[switchingPoint]]}]}],PlotRange->All]}]


(* ::Input::Initialization:: *)
ShowSwitch[ sign_Integer : 1,value_List,data_List,treshold_,fallBackValue_ : -1]:=Module[{switchingPoint, switchingValue},
switchingPoint=FindSwitch[sign,value,data,treshold,fallBackValue][[1]];
switchingValue = FindSwitch[sign,value,data,treshold,fallBackValue][[2]];
{switchingPoint,switchingValue,Show[ListLinePlot[Transpose[{value,data}],PlotRange->Full],Graphics[{PointSize[0.025],Point[{value[[switchingPoint]],data[[switchingPoint]]}]}]]}]


(* ::Input::Initialization:: *)
FindSwitchArray[ sign_Integer : 1,data_List,treshold_Real,fallBackValue_Integer :-1]:=Map[FindSwitch[sign,#,treshold,fallBackValue]&,data]


(* ::Input::Initialization:: *)
FindSwitchArray[ sign_Integer : 1,value_List,data_List,treshold_Real,fallBackValue_Integer :-1]:=MapThread[FindSwitch[sign,#1,#2,treshold,fallBackValue]&,{value,data}]


(* ::Input::Initialization:: *)
ShowSwitchArray[ sign_Integer : 1,data_List,treshold_Real,fallBackValue_Integer :-1]:=Module[{switchingPoints},
{FindSwitchArray[sign, data,treshold, fallBackValue],Map[Show[ListLinePlot[#],Graphics[{PointSize[0.025],Point[{FindSwitch[#,treshold,fallBackValue],#[[FindSwitch[#,treshold,fallBackValue]]]}]}]]&,data]}]


(* ::Input::Initialization:: *)
ShowSwitchArray[ sign_Integer : 1,value_List,data_List,treshold_Real,fallBackValue_Integer :-1]:=MapThread[ShowSwitch[sign, #1,#2,treshold, fallBackValue]&,{value,data}]


(* ::Input::Initialization:: *)
Clear[FindSlope,ShowFindSlope,DebugFindSlope]
(*
Old Versions that have a problem when multiple points have the exact same value, i.e. when Position returns a list instead of a single element
FindSlope[sign_Integer : 1,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_ :0]:=Module[{point, dif},
dif =Differences [MovingAverage[sign * data,pointsToAverage]];
point = Select[dif,#>treshold&,1];
If[Length[point]\[Equal]0,{fallBackValue},Flatten[Position[dif,point[[1]]]][[1]]+pointsToAverage-1]
]

FindSlope[sign_Integer : 1, value_List,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_ :0]:=Module[{point, dif},
dif =Differences [MovingAverage[sign * data,pointsToAverage]];
point = Select[dif,#>treshold&,1];
If[Length[point]\[Equal]0,{fallBackValue, fallBackValue},Flatten[{Position[dif,point[[1]]]+pointsToAverage-1,value[[Flatten[Position[dif,point[[1]]]+pointsToAverage-1]]]}]]
]*)
FindSlope[sign_Integer : 1,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_ :0]:=Module[{point, dif},
dif =Differences [MovingAverage[sign * data,pointsToAverage]];
point = Select[dif,#>treshold&,1];
If[Length[point]==0,{fallBackValue},Flatten[Position[dif,point[[1]]]][[1]]+pointsToAverage-1]
]

FindSlope[sign_Integer : 1, value_List,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_ :0]:=Module[{point, dif},
dif =Differences [MovingAverage[sign * data,pointsToAverage]];
point = Select[dif,#>treshold&,1];
If[Length[point]==0,{fallBackValue, fallBackValue},Flatten[{Position[dif,point[[1]]][[1]]+pointsToAverage-1,value[[Flatten[Position[dif,point[[1]]][[1]]+pointsToAverage-1]]]}]]
]

ShowFindSlope[sign_Integer : 1,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_ :0]:=Module[{switchingPoint},
switchingPoint=FindSlope[sign,data,treshold,pointsToAverage,fallBackValue];
{switchingPoint,Show[ListLinePlot[data,PlotRange->Full],Graphics[{PointSize[0.025],Point[{switchingPoint,data[[switchingPoint]]}]}],PlotRange->All]}
]
ShowFindSlope[sign_Integer : 1,value_List,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_ : 0]:=Module[{switchingPoint, switchingValue},
switchingPoint=FindSlope[sign,value,data,treshold,pointsToAverage,fallBackValue][[1]];
switchingValue = FindSlope[sign,value,data,treshold,pointsToAverage,fallBackValue][[2]];
{switchingPoint,switchingValue,Show[ListLinePlot[Transpose[{value,data}],PlotRange->Full],Graphics[{PointSize[0.025],Point[{value[[switchingPoint]],data[[switchingPoint]]}]}]]}]

DebugFindSlope[sign_Integer : 1,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_ :0]:=Module[{switchingPoint,der},
der = Differences [MovingAverage[sign * data,pointsToAverage]];
switchingPoint=FindSlope[sign,data,treshold,pointsToAverage,fallBackValue];
{
switchingPoint,
Show[ListLinePlot[data,PlotRange->Full],Graphics[{PointSize[0.025],Point[{switchingPoint,data[[switchingPoint]]}]}],PlotRange->All],
Show[ListLinePlot[der,PlotRange->Full],Graphics[{PointSize[0.025],Point[{switchingPoint-pointsToAverage+1,der[[switchingPoint-pointsToAverage+1]]}]}],PlotRange->All]
}
]

FindSlopeArray[sign_Integer : 1,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_Integer :0]:=Map[FindSlope[sign,#,treshold,pointsToAverage,fallBackValue]&,data]
FindSlopeArray[sign_Integer : 1,value_List,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_Integer :0]:=
Module[{x},
x=MapThread[FindSlope[sign,#1,#2,treshold,pointsToAverage,fallBackValue]&,{value,data}];
Transpose[x][[2]]
]

ShowFindSlopeArray[sign_Integer : 1,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_Integer :0]:=Map[ShowFindSlope[sign, #,treshold,pointsToAverage, fallBackValue]&,data]
ShowFindSlopeArray[sign_Integer : 1,value_List,data_List,treshold_Real,pointsToAverage_Integer : 3,fallBackValue_Integer :0]:=MapThread[ShowFindSlope[sign, #1,#2,treshold,pointsToAverage, fallBackValue]&,{value,data}]


End[]


EndPackage[]



