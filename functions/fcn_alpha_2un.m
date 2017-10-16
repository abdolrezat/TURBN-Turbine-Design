function handles = fcn_alpha_2un(handles,stage_i)
%this code calculates stage parameters,
% IN SI UNITS:
% DONT FORGET TO CONVERT PRESSURE TO "PA"

Tt1 = handles.IN(1,stage_i);
Pt1 = handles.IN(2,stage_i);   % x10^3
M1 = handles.IN(3,stage_i);
alpha1 = handles.IN(4,stage_i); %convert degree to radian using deg2rad()
wr = handles.IN(5,stage_i); %m/s
m_dot = handles.IN(6,stage_i); %lbm/s
rm = handles.IN(7,stage_i); %in
gc = handles.IN(8,stage_i); 
y = handles.IN(9,stage_i);
R = handles.IN(10,stage_i); %kJ/(kg.K)[cp = 1.245 kJ/(kg.K)]

% partII variables
Tt3 = handles.IN_S(1,stage_i);
M2 = handles.IN_S(2,stage_i);
alpha3 = handles.IN_S(3,stage_i); %conver deg to rad
u3_u2 = handles.IN_S(4,stage_i);
phi_s = handles.IN_S(5,stage_i);
phi_r = handles.IN_S(6,stage_i);
Zs = handles.IN_S(7,stage_i);
c_h = handles.IN_S(8,stage_i);

%% solution
formulas;
T1 = T_Tt(Tt1,M1,y);
V1 = V_Tt(Tt1,M1,y,gc,R);
u1 = V1*cos((alpha1));
v1 = V1*sin((alpha1));
Tt2 = Tt1;
T2 = T_Tt(Tt2,M2,y);
V2 = V_Tt(Tt2,M2,y,gc,R);
sai = Sai(Tt1,Tt3,wr,gc,y,R);
VR = 1/sqrt(2*sai);
alpha2 = alpha2_(u3_u2,alpha3,sai,wr,V2); % revised
u2 = V2*cos(alpha2);
v2 = V2*sin(alpha2);
PHI = u2/wr;
V3 = u3_u2*cos(alpha2)/cos(alpha3)*V2;
v3 = V3*sin(alpha3);
R0_t = 1 - (1/(2*sai)*(V2/wr)^2*(1-(u3_u2*cos(alpha2)/cos(alpha3))^2));
T3 = T2 - R0_t*(Tt1-Tt3);
M3 = M2*V3/V2*sqrt(T2/T3);
M2R= M2*sqrt(cos(alpha2)^2+(sin(alpha2)-wr/V2)^2);
M3R= M3*sqrt(cos(alpha3)^2+(sin(alpha3)+wr/V3)^2); % corrected
Tt3R = Tt3 + V3^2/(2*gc*(y/(y-1))*R)*(cos(alpha3)^2+(sin(alpha3)+wr/V3)^2-1);
Tt2R = Tt3R;
ts = Tt3/Tt1;
%
P1 = P_TTt(Pt1,Tt1,T1,y);
Pt2 = Pt_phi(Pt1,Tt2,T2,y,phi_s);
P2 = P_TTt(Pt2,Tt2,T2,y);
Pt2R = P_TTt(P2,T2,Tt2R,y); %check formula
Pt3R = Pt_phi(Pt2R,Tt3R,T3,y,phi_r);
P3 = P_TTt (Pt3R,Tt3R,T3,y);
Pt3 = P_TTt(P3,T3,Tt3,y);
Pr_s = Pt3/Pt1;
n_s = (1-ts)/(1-Pr_s^((y-1)/y));

%1
A1 = Ai_(m_dot,Tt1,Pt1,alpha1,MFP(M1,y,gc,R));
h1 = A1/(2*pi*rm);
r1h = rm - h1/2;
r1t = rm + h1/2;
%
v1h = v1*rm/r1h;
a1h = atan(v1h/u1);
v1t = v1*rm/r1t;
a1t = atan(v1t/u1);

%2
A2 = Ai_(m_dot,Tt2,Pt2,alpha2,MFP(M2,y,gc,R));
h2 = A2/(2*pi*rm);
r2h = rm - h2/2;
r2t = rm + h2/2;
v2h = v2*rm/r2h;
a2h = atan(v2h/u2);
v2t = v2*rm/r2t;
a2t = atan(v2t/u2);
% Star*
c =  c_h*(h1 + h2)/2; %chord of the stator
%end of stator
cx_s_m = Zs_cx_s(alpha1,u1,alpha2,u2)/Zs;
[y2m,t_m,sol_m] = solidity(alpha1,alpha2,cx_s_m);
blade_spacing_m = c/sol_m;
% axial_chord_m = ;


cx_s_h = Zs_cx_s(a1h,u1,a2h,u2)/Zs;
[y2h,t_h,sol_h] = solidity(a1h,a2h,cx_s_h);
blade_spacing_h = c/sol_h;

cx_s_t = Zs_cx_s(a1t,u1,a2t,u2)/Zs;
[y2t,t_t,sol_t] = solidity(a1t,a2t,cx_s_t);
blade_spacing_t = c/sol_t;

%blade exit angle
% exit_angle = (yi + ye)
% 
A3 = Ai_(m_dot,Tt3,Pt3,alpha3,MFP(M3,y,gc,R));
%v3 = V3*sin(alpha3); commented due to redundancy
u3 = V3*cos(alpha3);
h3 = A3/(2*pi*rm);
r3h = rm - h3/2;
r3t = rm + h3/2;
v3h = v3*rm/r3h;
a3h = atan(v3h/u3);
v3t = v3*rm/r3t;
a3t = atan(v3t/u3);

PHI_ = u2/wr;
RPM_ = wr/rm*30/pi*12;
AN_2 = A2*RPM_^2;
B2 = atan((v2-wr)/u2);
B3 = atan((v3+wr)/u3);
% n_t = (1-Tt3/Tt1)/(1-(Pt3/Pt1)^((y-1)/y));
%% Results Table
v2R = u2*tan(B2);
v3R = u3*tan(B3);
Results_Table = zeros(11,11);
Results_Table(1,:) = [Tt1,Tt1,Tt1,Tt2,Tt2,Tt2,Tt2R,Tt3R,Tt3,Tt3,Tt3];
Results_Table(3,:) = [Pt1,Pt1,Pt1,Pt2,Pt2,Pt2,Pt2R,Pt3R,Pt3,Pt3,Pt3];
Results_Table(7,:) = [u1,u1,u1,u2,u2,u2,u2,u3,u3,u3,u3];
Results_Table(8,:) = [v1h,v1,v1t,v2h,v2,v2t,v2R,v3R,v3h,v3,v3t];
Results_Table(6,:) = (Results_Table(7,:).^2 + Results_Table(8,:).^2).^0.5;
Results_Table(9,:) = rad2deg([a1h,alpha1,a1t,a2h,alpha2,a2t,0,0,a3h,alpha3,a3t]);
Results_Table(10,:) = rad2deg([0,0,0,0,0,0,B2,B3,0,0,0]);
Results_Table(2,:) = Results_Table(1,:) - (Results_Table(6,:).^2)./(2*gc*(y/(y-1))*R);
Results_Table(5,:) = [M1*Results_Table(6,1)/Results_Table(6,2)/sqrt(Results_Table(2,1)/Results_Table(2,2)),M1,M1*Results_Table(6,3)/Results_Table(6,2)/sqrt(Results_Table(2,3)/Results_Table(2,2)),M2*Results_Table(6,4)/Results_Table(6,5)/sqrt(Results_Table(2,4)/Results_Table(2,5)),M2,M2*Results_Table(6,6)/Results_Table(6,5)/sqrt(Results_Table(2,6)/Results_Table(2,5)),M2R,M3R,M3*Results_Table(6,9)/Results_Table(6,10)/sqrt(Results_Table(2,9)/Results_Table(2,10)),M3,M3*Results_Table(6,11)/Results_Table(6,10)/sqrt(Results_Table(2,11)/Results_Table(2,10))];
Results_Table(4,:) = P_TTt_Matrix(Results_Table(3,:),Results_Table(1,:),Results_Table(2,:),y);
Results_Table(11,:) = [r1h,rm,r1t,r2h,rm,r2t,rm,rm,r3h,rm,r3t];

%% Results Panel
Results_Panel = [Pr_s,n_s,sai,PHI,VR,RPM_,A1,A2,A3,blade_spacing_h,blade_spacing_m,blade_spacing_t];

handles.Results_Table = Results_Table;
handles.Results_Panel = Results_Panel;
