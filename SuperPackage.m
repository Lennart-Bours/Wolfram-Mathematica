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



BeginPackage["SuperPackage`"]


kB=1.3806504*10^-23;
q = 1.602176487*10^-19;
\[CapitalPhi]0=2.067 10^-15; (*Flux quantum*)
\[HBar]=1.054571628251774*10^-34;
h = 6.62606979*10^\[Minus]34;
fact=1.0\[Pi]/Exp[EulerGamma];(* When normalizing E by \[CapitalDelta]0 and T by Tc, this factor appears as \[CapitalDelta]0/(kb Tc) = fact *)



\[CapitalSigma]AlMn=4.5*10^9;
\[CapitalSigma]Al=2.5*10^8;
\[CapitalSigma]Cu = 2 * 10^9;


Set\[CapitalDelta]0::usage="Set the real value of the gap.";
Get\[CapitalDelta]0::usage="Gives the real value of the gap.";

GetTc::usage ="Gies the value of the critical temperature in Kelvin, is defined when setting \[CapitalDelta]0."

Set\[Gamma]::usage = "Set the value of Dynes' \[Gamma].";
Get\[Gamma]::usage = "Get the value of the Dynes' \[Gamma].";

SetvF::usage = "Set the value of the Fermi velocity.";
GetvF::usage = "Get the value of the Fermi velocity.";


fermi::usage = "fermi[energy,T] \n The Fermi districution function.";
\[Rho]Graphene::usage = "\[Rho]Graphene [energy] \n The low energy approximation of the DoS in graphene in units of \!\(\*SuperscriptBox[\(cm\), \(-2\)]\)"


\[CapitalDelta]::usage="\[CapitalDelta][T] \n Gives the gap.";
\[Rho]QP::usage = "\[Rho]QP[energy,T,\[Gamma]:0] \n The BCS quasiparticle density of states."; 



GQ::usage = "GQ[T] \n The quantum of thermal conductance. Input T is expected in units of Tc, as per usual."


\[Rho]TJJ::usage = "\[Rho]TJJ[energy, flux, T, L, \[Phi]0:0] \n The density of states of a topological Josephson junction, not including the Andreev bound states. The length is expected in units of \[Xi]0 (which is itself rescaled by \[CapitalDelta]0). The superconducting phase difference \[Phi]0 is optional, and 0 by default.";


transmissionTJJ::usage = "transmissionTJJ[energy, flux, T, L, \[Phi]0:0] \n The transmission function of a topological Josepson junction for right-moving particles, not including the Andreev bound states. The length is expected in units of \[Xi]0 (which is itself rescaled by \[CapitalDelta]0). The superconducting phase difference \[Phi]0 is optional, and 0 by default.";
transmissionTJJU::usage = "transmissionTJJ[energy, flux, T, L, \[Phi]0:0] \n The transmission function of a topological Josepson junction for right-moving particles along the upper edge, not including the Andreev bound states. The length is expected in units of \[Xi]0 (which is itself rescaled by \[CapitalDelta]0). The superconducting phase difference \[Phi]0 is optional, and 0 by default.";
transmissionTJJL::usage = "transmissionTJJ[energy, flux, T, L, \[Phi]0:0] \n The transmission function of a topological Josepson junction for right-moving particles along the lower edge, not including the Andreev bound states. The length is expected in units of \[Xi]0 (which is itself rescaled by \[CapitalDelta]0). The superconducting phase difference \[Phi]0 is optional, and 0 by default.";


GNProbe::usage = "GNProbeLinear[flux, T, L, \[Phi]0:0, V:0 ,RTunnelProbe:1, rescale -> True] \n The thermal conductance of a normal probe - TJJ."


GGProbe::usage = "GGProbeLinear[flux, T, L, \[Phi]0:0, V:0 ,RTunnelProbe:1, rescale -> True] \n The thermal conductance of a graphene probe - TJJ."


thermalConductanceTJJ::usage = "thermalConductanceTJJ[flux_,T_,L_,\[Phi]0:0,rescale -> True (False)] \n The thermal conductance of a topological Josephson junction, in the linear approximation. When setting rescale -> False, a value for \[Phi]0 must be provided.";


JJunctionLinear::usage = "JJunctionLinear [flux, Ts1 ,Ts2 ,L ,\[Phi]0:0] \n The heat current through a topological Josephson junction, within the linear approximation.";

JJunctionNonLinear::usage = "JJunctionNonLinear [flux, Ts1, Ts2, L, \[Phi]0:0, rescale -> True (False)] \n The (non linear) heat current through a topological Josephson junction.";


JNIS::usage = "JNIS[tempN, tempS, \[Gamma]:0, RTunnelProbe:1, rescale -> True] \n The heat current through an NIS tunnel junction."

JNProbe::usage ="JNProbe[flux, tempNProbe, tempJunction, L, \[Phi]0:0, RTunnelProbe:1, rescale -> True (False)] \n The heat current between a normal metal probe, tunnel coupled to one side of a topological Josephson junction. The length is expected in units of \[Xi]0 (which is itself rescaled by \[CapitalDelta]0). Can be descaled using rescale -> False as the last argument, in this case \[Phi]0 and RTunnelProbe must be provided."

JNProbeNoise::usage="JNProbe[flux, tempNProbe, tempJunction, L, \[Phi]0:0, V:0, RTunnelProbe:1, rescale -> True (False) \n The thermal noise of JNProbe"

JNProbeAssymetric::usage = "JNProbeAssymetric."

JNProbeMin::usage = "JNProbeMin."

JNProbePlus::usage = "JNProbePlus."


JGProbe::usage = "JGProbe [flux, tempNProbe, tempJunction, L, \[Phi]0:0, V:0, RTunnelProbe:1, rescale -> True] \n The heat current between a graphene probe and the topological junction."


rectificationCoefficient::usage = "rectificationCoefficient[flux_, TCold_, THot_, L_, \[Phi]0_:0] \n The rectification coefficient using JNProbe defined as \!\(\*SubscriptBox[\(J\), \(forward\)]\)/\!\(\*SubscriptBox[\(J\), \(backward\)]\) with the NProbe at THot and the topological junction at TCold and visa versa."


rectCoefficientRatio::usage = "rectCoefficientRatio[f[..., T1, T2,...], T1, T2, THot, TCold] \n The rectification coefficient defined as -\!\(\*SubscriptBox[\(J\), \(forward\)]\)/\!\(\*SubscriptBox[\(J\), \(backward\)]\). The first argument is the expession for J that is to be used. The variables for temperature (T1,T2) must be consistent!"


rectCoefficientRelative::usage = "rectCoefficientRelative[f[..., T1, T2,...],T1, T2 THot, TCold] \n The rectification coefficient defined as 100 (\!\(\*SubscriptBox[\(J\), \(forward\)]\)-\!\(\*SubscriptBox[\(J\), \(backward\)]\))/\!\(\*SubscriptBox[\(J\), \(backward\)]\). The first argument is the expession for J that is to be used. The variables for temperature (T1,T2) must be consistent!"





Begin["`Private`"]


delta=Interpolation[Import[NotebookDirectory[]<>"gapnew.dat","Table"]];

QephAl=Interpolation[Import[NotebookDirectory[]<>"SuperElectronPhonon_Tc1.3K_gamma5x10^-4_Tbath25mK_mod.dat","Table"],InterpolationOrder ->1];


\[CapitalDelta]0;
Set\[CapitalDelta]0 [\[CapitalDelta]0in_]:= Module[{},
(\[CapitalDelta]0 = \[CapitalDelta]0in)  ;
Tc = \[CapitalDelta]0in/(fact*kB) (*Real value of the BCS critical temperature*)];
Get\[CapitalDelta]0[]:=\[CapitalDelta]0;

\[Gamma];
Set\[Gamma][\[Gamma]in_] := (\[Gamma] = \[Gamma]in);
Get\[Gamma][] := \[Gamma];

vF;
SetvF[vFin_] := (vF = vFin);
GetvF[] := vF;

GetTc := Tc;
RTunnelProbe := 10^3;


fermi[energy_,T_]:= 1/(Exp[(fact energy)/ T]+1);
\[Rho]Graphene[energy_]:= 2/Pi Abs[energy]/(h * 10^8)^2; (* DoS per cm^-2 for graphene, degeneracy of 4 included. From Katsnelson (1.72) *)


Options[\[CapitalDelta]] = {rescale -> True}
\[CapitalDelta][T_,OptionsPattern[]]:= Module[{prefactor},

If[ OptionValue[rescale] ,prefactor = 1,prefactor =  \[CapitalDelta]0];
prefactor*delta[T]]


\[Rho]QP[energy_,T_,\[Gamma]_:0]:=Abs[Re[(energy+ I \[Gamma])/Sqrt[(energy+I \[Gamma])^2-\[CapitalDelta][T]^2]  ]];


(*Thermal conductance quantum*)
GQ [T_]:=  Pi^2 kB^2 T Tc/ (6 Pi \[HBar]);


(* The heatcurrent through a NIS junction, the DoS of the normal metal is set to 1 *)
Options[JNIS]={rescale->True}
JNIS[tempN_,tempS_,\[Gamma]_:0,RTunnelProbe_:1, OptionsPattern[]]:= Module[{prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor = \[CapitalDelta]0^2/(q^2 RTunnelProbe)];
prefactor*NIntegrate[ energy * \[Rho]QP[energy,tempS,\[Gamma]]*(fermi[energy,tempN]-fermi[energy,tempS]),{energy,-10,-\[CapitalDelta][tempS],\[CapitalDelta][tempS],10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->6, Method->{"Oscillatory","SymbolicProcessing"->False},WorkingPrecision->MachinePrecision]]


"ps[flux,L] gives the finite Cooper pair momentum in response to a magnetic flux penetrating the junction. Note that the width of the junction is defined implicitly";
ps[flux_,L_]:=(* \[CapitalDelta]0 *) (Pi*\[HBar])/L*flux; (*Finite Cooper pair momentum, simplified*)
energyMin[energy_,flux_,L_]  :=(* \[CapitalDelta]0 *)energy-vF*ps[flux,L]/2;
energyPlus[energy_,flux_,L_]:=(* \[CapitalDelta]0 *)energy+vF*ps[flux,L]/2;

(* \[Rho]TJJ does not contain the ABS, and thus cannot be used to calculate subgap electronic transport *)
(* \[CapitalDelta][T]*\[Xi][T] in the cosine replaced with \[HBar] vF \[Rule] there is no T dependence in the cosine *)
\[Rho]TJJ[energy_,flux_,T_,L_,\[Phi]0_:0]:=Abs[energyMin[energy,flux,L]]/Sqrt[energyMin[energy,flux,L]^2-\[CapitalDelta][T]^2] HeavisideTheta[Abs[energyMin[energy,flux,L]
]-\[CapitalDelta][T]]*((energyMin[energy,flux,L]^2-\[CapitalDelta][T]^2)/(energyMin[energy,flux,L]^2-\[CapitalDelta][T]^2 Cos[(\[Phi]0+Pi*flux)/2-(energyMin[energy,flux,L]*L)/(\[HBar] vF)]^2))+Abs[energyPlus[energy,flux,L]]/Sqrt[energyPlus[energy,flux,L]^2-\[CapitalDelta][T]^2] HeavisideTheta[Abs[energyPlus[energy,flux,L]
]-\[CapitalDelta][T]]*((energyPlus[energy,flux,L]^2-\[CapitalDelta][T]^2)/(energyPlus[energy,flux,L]^2-\[CapitalDelta][T]^2 Cos[(\[Phi]0+Pi*flux)/2+(energyPlus[energy,flux,L]*L)/(\[HBar] vF)]^2));





(* The transmission function of right-moving particles, as defined by Bj\[ODoubleDot]rn in the thermal switch paper. The temperature of the junction is the average of the two temperatures in the linear regime.*)
transmissionTJJ[energy_,flux_,T_,L_,\[Phi]0_:0]:= 1/2 (transmissionTJJU[energy,flux,T,L,\[Phi]0]+transmissionTJJL[energy,flux,T,L,\[Phi]0]);


(*There is a difference between the two transmission functions of the upper (U) and lower (L) edge transmissions only when \[Phi]0 \[NotEqual]0*)
transmissionTJJU[energy_,flux_,T_,L_,\[Phi]0_:0]:= HeavisideTheta[Abs[energyMin[energy,flux,L]
]-\[CapitalDelta][T]]*((energyMin[energy,flux,L]^2-\[CapitalDelta][T]^2)/(energyMin[energy,flux,L]^2-\[CapitalDelta][T]^2 Cos[(\[Phi]0+Pi*flux)/2-(energyMin[energy,flux,L]*L)/(\[HBar] vF)]^2))+ HeavisideTheta[Abs[energyPlus[energy,flux,L]
]-\[CapitalDelta][T]]*((energyPlus[energy,flux,L]^2-\[CapitalDelta][T]^2)/(energyPlus[energy,flux,L]^2-\[CapitalDelta][T]^2 Cos[(\[Phi]0+Pi*flux)/2+(energyPlus[energy,flux,L]*L)/(\[HBar] vF)]^2));
transmissionTJJL[energy_,flux_,T_,L_,\[Phi]0_:0]:= HeavisideTheta[Abs[energyMin[energy,flux,L]
]-\[CapitalDelta][T]]*((energyMin[energy,flux,L]^2-\[CapitalDelta][T]^2)/(energyMin[energy,flux,L]^2-\[CapitalDelta][T]^2 Cos[(\[Phi]0-Pi*flux)/2+(energyMin[energy,flux,L]*L)/(\[HBar] vF)]^2))+ HeavisideTheta[Abs[energyPlus[energy,flux,L]
]-\[CapitalDelta][T]]*((energyPlus[energy,flux,L]^2-\[CapitalDelta][T]^2)/(energyPlus[energy,flux,L]^2-\[CapitalDelta][T]^2 Cos[(\[Phi]0-Pi*flux)/2-(energyPlus[energy,flux,L]*L)/(\[HBar] vF)]^2));


(* The thermal conductance (G) in the Linear approxmiation *)
Options[GNProbe] = {rescale -> True}
GNProbe[flux_,T_,L_,\[Phi]0_:0,V_:0,RTunnelProbe_:1, OptionsPattern[]]:= Module[{prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor = \[CapitalDelta]0^2/(q^2 RTunnelProbe Tc)];
prefactor* fact/4 NIntegrate[ energy^2/T^2 * \[Rho]TJJ[energy,flux,T,L,\[Phi]0]/Cosh[fact energy/(2T)]^2,{energy,-10,-(\[CapitalDelta][T]+vF*ps[flux,L]/2),-(\[CapitalDelta][T]-vF*ps[flux,L]/2),(\[CapitalDelta][T]-vF*ps[flux,L]/2),(\[CapitalDelta][T]+vF*ps[flux,L]/2),10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->4, Method->{"Oscillatory","SymbolicProcessing"->False}] ]


(* The heatcurrent between the normal probe and the S-TI-S junction *)
Options[JNProbe] = {rescale -> True}
JNProbe[flux_,tempNProbe_,tempJunction_,L_,\[Phi]0_:0,V_:0,RTunnelProbe_:1, OptionsPattern[]]:= Module[{prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor = \[CapitalDelta]0^2/(q^2 RTunnelProbe)];
prefactor*NIntegrate[ energy * \[Rho]TJJ[energy,flux,tempJunction,L,\[Phi]0]*(fermi[energy,tempNProbe]-fermi[energy,tempJunction]),{energy,-10,-(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),-(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->4, Method->{"Oscillatory","SymbolicProcessing"->False}] ]



(* The thermal noise of the heatcurrent between the normal probe and the S-TI-S junction *)
Options[JNProbeNoise] = {rescale -> True}
JNProbeNoise[flux_,tempNProbe_,tempJunction_,L_,\[Phi]0_:0,V_:0,RTunnelProbe_:1, OptionsPattern[]]:= Module[{prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor = (2\[CapitalDelta]0^3)/(q^2 RTunnelProbe)];
prefactor*NIntegrate[ energy^2 * \[Rho]TJJ[energy,flux,tempJunction,L,\[Phi]0]*(fermi[energy,tempNProbe](1-fermi[energy,tempJunction])+fermi[energy,tempJunction](1-fermi[energy,tempNProbe])),{energy,-10,-(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),-(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->4, Method->{"Oscillatory","SymbolicProcessing"->False}] ]


(* \[Rho]TJJ does not contain the ABS, and thus cannot be used to calculate subgap electronic transport *)
(* \[CapitalDelta][T]*\[Xi][T] in the cosine replaced with \[HBar] vF \[Rule] there is no T dependence in the cosine *)
\[Rho]TJJMin[energy_,flux_,T_,L_,\[Phi]0_:0]:=Abs[energyMin[energy,flux,L]]/Sqrt[energyMin[energy,flux,L]^2-\[CapitalDelta][T]^2] HeavisideTheta[Abs[energyMin[energy,flux,L]
]-\[CapitalDelta][T]]*((energyMin[energy,flux,L]^2-\[CapitalDelta][T]^2)/(energyMin[energy,flux,L]^2-\[CapitalDelta][T]^2 Cos[(\[Phi]0+Pi*flux)/2-(energyMin[energy,flux,L]*L)/(\[HBar] vF)]^2));


\[Rho]TJJPlus[energy_,flux_,T_,L_,\[Phi]0_:0]:=Abs[energyPlus[energy,flux,L]]/Sqrt[energyPlus[energy,flux,L]^2-\[CapitalDelta][T]^2] HeavisideTheta[Abs[energyPlus[energy,flux,L]
]-\[CapitalDelta][T]]*((energyPlus[energy,flux,L]^2-\[CapitalDelta][T]^2)/(energyPlus[energy,flux,L]^2-\[CapitalDelta][T]^2 Cos[(\[Phi]0+Pi*flux)/2+(energyPlus[energy,flux,L]*L)/(\[HBar] vF)]^2));


(* The heatcurrent between the normal probe and the S-TI-S junction, where the two superconducting leads can reside at different temperatures. tempJunction, that defines the gap in the edge channels, is taken to be the average of the two superconductor temperatures.*)
Options[JNProbeAssymetric] = {rescale -> True};
JNProbeAssymetric[flux_,tempNProbe_,tempS1_,tempS2_,L_,\[Phi]0_:0,RTunnelProbe_:1, OptionsPattern[]]:= Module[{tempJunction=(tempS1+tempS2)/2,prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor = \[CapitalDelta]0^2/(q^2 RTunnelProbe)];
prefactor*(NIntegrate[ energy * \[Rho]TJJMin[energy,flux,tempJunction,L,\[Phi]0]*(fermi[energy,tempNProbe]-fermi[energy,tempS1]),{energy,-10,-(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),-(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->4, Method->{"Oscillatory","SymbolicProcessing"->False}] 
+NIntegrate[ energy * \[Rho]TJJPlus[energy,flux,tempJunction,L,\[Phi]0]*(fermi[energy,tempNProbe]-fermi[energy,tempS2]),{energy,-10,-(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),-(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->4, Method->{"Oscillatory","SymbolicProcessing"->False}] )]



Options[JNProbeMin] = {rescale -> True};
JNProbeMin[flux_,tempNProbe_,tempS1_,tempS2_,L_,\[Phi]0_:0,RTunnelProbe_:1, OptionsPattern[]]:= Module[{tempJunction=(tempS1+tempS2)/2,prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor = \[CapitalDelta]0^2/(q^2 RTunnelProbe)];
prefactor*NIntegrate[ energy * \[Rho]TJJMin[energy,flux,tempJunction,L,\[Phi]0]*(fermi[energy,tempNProbe]-fermi[energy,tempS1]),{energy,-10,-(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),-(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->4, Method->{"Oscillatory","SymbolicProcessing"->False}] ]


Options[JNProbePlus] = {rescale -> True};
JNProbePlus[flux_,tempNProbe_,tempS1_,tempS2_,L_,\[Phi]0_:0,RTunnelProbe_:1, OptionsPattern[]]:= Module[{tempJunction=(tempS1+tempS2)/2,prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor = \[CapitalDelta]0^2/(q^2 RTunnelProbe)];
prefactor*NIntegrate[ energy * \[Rho]TJJPlus[energy,flux,tempJunction,L,\[Phi]0]*(fermi[energy,tempNProbe]-fermi[energy,tempS2]),{energy,-10,-(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),-(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->4, Method->{"Oscillatory","SymbolicProcessing"->False}] ]


(* The thermal conductance and heat current in the linear approximation as in the topological heat switch paper of Bj\[ODoubleDot]rn Sothmann (note that in the paper T should be T^2)*)
Options[thermalConductanceTJJ] = {rescale ->True}
thermalConductanceTJJ[flux_,T_,L_,\[Phi]0_:0, OptionsPattern[]] :=  Module[{prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor =  (\[CapitalDelta]0^2)/(h Tc)];
 prefactor*fact/4*NIntegrate[energy^2 transmissionTJJ[energy,flux,T,L,\[Phi]0]/( T^2 Cosh[fact*energy/(2T)]^2),{energy,-10,10},MaxRecursion->25,MinRecursion->5,AccuracyGoal->10,Method->Oscillatory]]


JJunctionLinear[flux_,Ts1_,Ts2_,L_,\[Phi]0_:0]:= thermalConductanceTJJ[flux,(Ts1+Ts2)/2,L,\[Phi]0](Ts1-Ts2);


(* The full heat current throught the topological junction. The temperature of the junction TJunction is used to determine the gap in the junction \[CapitalDelta][T], and for nothing else. *)
Options[JJunctionNonLinear] = {rescale -> True}
JJunctionNonLinear[flux_,Ts1_,Ts2_,L_,\[Phi]0_:0,OptionsPattern[]]:= Module[{TJunction = (Ts1+Ts2)/2, prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor =  (\[CapitalDelta]0^2)/h ];NIntegrate[energy transmissionTJJ[energy,flux,TJunction,L,\[Phi]0] (fermi[energy,Ts1]-fermi[energy,Ts2]),{energy,-10,-(\[CapitalDelta][TJunction]+vF*ps[flux,L]/2),-(\[CapitalDelta][TJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][TJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][TJunction]+vF*ps[flux,L]/2),10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->4, Method->{"Oscillatory","SymbolicProcessing"->False}]];


(* The thermal conductance between a graphene probe and S-TI-S junction in the linear approximation *)


Options[GGProbe] = {rescale -> True}
GGProbe[flux_,T_,L_,\[Phi]0_:0,V_:0,RTunnelProbe_:1, OptionsPattern[]]:= Module[{prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor = \[CapitalDelta]0^2/(q^2 RTunnelProbe Tc)];
prefactor* fact/4 NIntegrate[ energy^2/T^2 * (\[Rho]TJJ[energy,flux,T,L,\[Phi]0]* Abs[energy])/Cosh[fact energy/(2T)]^2,{energy,-10,-(\[CapitalDelta][T]+vF*ps[flux,L]/2),-(\[CapitalDelta][T]-vF*ps[flux,L]/2),(\[CapitalDelta][T]-vF*ps[flux,L]/2),(\[CapitalDelta][T]+vF*ps[flux,L]/2),10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->4, Method->{"Oscillatory","SymbolicProcessing"->False}] ]


(* The heatcurrent between a graphene probe and the S-TI-S junction *)
Options[JGProbe] = {rescale -> True}
JGProbe[flux_,tempNProbe_,tempJunction_,L_,\[Phi]0_:0,V_:0,RTunnelProbe_:1, OptionsPattern[]]:= Module[{prefactor},
If[ OptionValue[rescale],prefactor = 1,prefactor = \[CapitalDelta]0^2/(q^2 RTunnelProbe)];
prefactor*NIntegrate[ energy^2  * energy (*Graphene dos*) * \[Rho]TJJ[energy,flux,tempJunction,L,\[Phi]0]*(fermi[energy,tempNProbe]-fermi[energy,tempJunction]),{energy,-10,-(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),-(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]-vF*ps[flux,L]/2),(\[CapitalDelta][tempJunction]+vF*ps[flux,L]/2),10}, MaxRecursion->25,MinRecursion->3,AccuracyGoal->4, Method->{"Oscillatory","SymbolicProcessing"->False}] ]


(*  Following the definition from doi:10.1038/nnano.2015.11, with Subscript[J, forward] corresponding to a hot normal metal probe. RTunnelProbe cancels out *)


(* ::Input::Initialization:: *)
rectificationCoefficient[flux_,TCold_,THot_,L_,\[Phi]0_:0] := -JNProbe[flux,TCold,THot,L,\[Phi]0]/JNProbe[flux,THot,TCold,L,\[Phi]0]


SetAttributes[rectCoefficientRatio,HoldFirst]
rectCoefficientRatio[f_,T1_,T2_,THot_,TCold_]:=Re[ReleaseHold[(-Hold[f]/.{T1->THot,T2->TCold})/(Hold[f]/.{T1->TCold,T2->THot})]];


SetAttributes[rectCoefficientRelative,HoldFirst]
rectCoefficientRelative[f_,T1_,T2_,THot_,TCold_]:=Re[ReleaseHold[100 (Abs[(Hold[f]/.{T1->THot,T2->TCold})]-Abs[(Hold[f]/.{T1->TCold,T2->THot})])/Abs[Hold[f]/.{T1->TCold,T2->THot}]]];


End[]


EndPackage[]
