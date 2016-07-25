function varargout = Turbine_StageDesign_v2(varargin)
% TURBINE_STAGEDESIGN_V2 MATLAB code for Turbine_StageDesign_v2.fig
%      TURBINE_STAGEDESIGN_V2, by itself, creates a new TURBINE_STAGEDESIGN_V2 or raises the existing
%      singleton*.
%
%      H = TURBINE_STAGEDESIGN_V2 returns the handle to a new TURBINE_STAGEDESIGN_V2 or the handle to
%      the existing singleton*.
%
%      TURBINE_STAGEDESIGN_V2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TURBINE_STAGEDESIGN_V2.M with the given input arguments.
%
%      TURBINE_STAGEDESIGN_V2('Property','Value',...) creates a new TURBINE_STAGEDESIGN_V2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Turbine_StageDesign_v2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Turbine_StageDesign_v2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Turbine_StageDesign_v2

% Last Modified by GUIDE v2.5 16-Jun-2016 15:28:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Turbine_StageDesign_v2_OpeningFcn, ...
                   'gui_OutputFcn',  @Turbine_StageDesign_v2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Turbine_StageDesign_v2 is made visible.
function Turbine_StageDesign_v2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Turbine_StageDesign_v2 (see VARARGIN)

% Choose default command line output for Turbine_StageDesign_v2
handles.output = hObject;
%initializing variables such as the radio button status, stage number and
%table row names
handles.radiostat = 'alpha2';
set(handles.radiobutton_alpha2,'Value',1);

%data below is used to construct tables whenever the stage number or radio
%button is changed. 
handles.stagenumber = 2 ;
handles.Default_Data_alpha2 = {'2925','2750';'0','0';'1.05','0.7';'0.9','0.6';'0.9','0.9';'1','1';'0.06','0.02';'0','0';'1','1';'1','1'};
handles.Default_Data_alpha3 = {'2925','2750';'43.88','41.65';'1.05','0.7';'0.9','0.6';'0.9','0.9';'1','1';'0.06','0.02';'0','0';'1','1';'1','1'};
handles.Default_Data_M2 = {'43.88','41.65';'0','0';'2925','2750';'0.9','0.6';'0.9','0.9';'1','1';'0.06','0.02';'0','0';'1','1';'1','1'};
handles.Default_Data_Tt3 ={'43.88','41.65';'0','0';'1.05','0.7';'0.9','0.6';'0.9','0.9';'1','1';'0.06','0.02';'0','0';'1','1';'1','1'};
handles.Empty_Data = {[];[];[];[];[];[];[];[];[];[]};
handles.rowname_alpha2 = {'Total Temp @ 3','alpha @ 3','Mach @ 2','u3/u2','Stator Z','Rotor Z','stator loss coefficient','rotor loss coefficient','stator c/h','rotor c/h'};
handles.rowname_alpha3 = {'Total Temp @ 3','alpha @ 2','Mach @ 2','u3/u2','Stator Z','Rotor Z','stator loss coefficient','rotor loss coefficient','stator c/h','rotor c/h'};
handles.rowname_M2 = {'alpha @ 2','alpha @ 3','Total Temp @ 3','u3/u2','Stator Z','Rotor Z','stator loss coefficient','rotor loss coefficient','stator c/h','rotor c/h'};
handles.rowname_Tt3 = {'alpha @ 2','alpha @ 3','Mach @ 2','u3/u2','Stator Z','Rotor Z','stator loss coefficient','rotor loss coefficient','stator c/h','rotor c/h'};
% constructing Table_Stage
set(handles.Table_Stage,'Data',handles.Default_Data_alpha2,'ColumnEditable',[true true true true true true true true true true],'RowName',handles.rowname_alpha2);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Turbine_StageDesign_v2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Turbine_StageDesign_v2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Tt1_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to Tt1_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tt1_textbox as text
%        str2double(get(hObject,'String')) returns contents of Tt1_textbox as a double


% --- Executes during object creation, after setting all properties.
function Tt1_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tt1_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pt1_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to Pt1_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pt1_textbox as text
%        str2double(get(hObject,'String')) returns contents of Pt1_textbox as a double


% --- Executes during object creation, after setting all properties.
function Pt1_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pt1_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M1_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to M1_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M1_textbox as text
%        str2double(get(hObject,'String')) returns contents of M1_textbox as a double


% --- Executes during object creation, after setting all properties.
function M1_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M1_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha1_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to alpha1_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha1_textbox as text
%        str2double(get(hObject,'String')) returns contents of alpha1_textbox as a double


% --- Executes during object creation, after setting all properties.
function alpha1_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha1_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tt3_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to Tt3_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tt3_textbox as text
%        str2double(get(hObject,'String')) returns contents of Tt3_textbox as a double


% --- Executes during object creation, after setting all properties.
function Tt3_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tt3_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M2_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to M2_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M2_textbox as text
%        str2double(get(hObject,'String')) returns contents of M2_textbox as a double


% --- Executes during object creation, after setting all properties.
function M2_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M2_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wr_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to wr_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wr_textbox as text
%        str2double(get(hObject,'String')) returns contents of wr_textbox as a double


% --- Executes during object creation, after setting all properties.
function wr_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wr_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha3_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to alpha3_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha3_textbox as text
%        str2double(get(hObject,'String')) returns contents of alpha3_textbox as a double


% --- Executes during object creation, after setting all properties.
function alpha3_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha3_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function u3_u2_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to u3_u2_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u3_u2_textbox as text
%        str2double(get(hObject,'String')) returns contents of u3_u2_textbox as a double


% --- Executes during object creation, after setting all properties.
function u3_u2_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u3_u2_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phi_s_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to phi_s_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phi_s_textbox as text
%        str2double(get(hObject,'String')) returns contents of phi_s_textbox as a double


% --- Executes during object creation, after setting all properties.
function phi_s_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi_s_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phi_r_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to phi_r_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phi_r_textbox as text
%        str2double(get(hObject,'String')) returns contents of phi_r_textbox as a double


% --- Executes during object creation, after setting all properties.
function phi_r_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi_r_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to y_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_textbox as text
%        str2double(get(hObject,'String')) returns contents of y_textbox as a double


% --- Executes during object creation, after setting all properties.
function y_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gc_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to gc_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gc_textbox as text
%        str2double(get(hObject,'String')) returns contents of gc_textbox as a double


% --- Executes during object creation, after setting all properties.
function gc_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gc_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate_button.
function calculate_button_Callback(hObject, eventdata, handles)
% hObject    handle to calculate_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
switch handles.radiostat
    %% alpha2 unknown
    case 'alpha2'
        for stage_i=1:handles.stagenumber
            %set two matrices called IN and IN_S, see the flowchart diagram
            %for a more comprehensive understanding of the algorithm
            set_IN_alpha_2un; 
            
            %use the stage properties and inlet conditions IN and IN_S to
            %calculate outlet conditions
            fcn_alpha_2un;
            
            %pass the calculated outlet stage conditions to next stage inlet
            %conditions, which will be used in each iteration in set_IN_*
            handles.next_stage_data = Results_Table(:,10); 
            
            %save the calculated values, these two cell arrays will be
            %passed to "Turbine_Results" to be shown.
            handles.All_Results_Table{stage_i} = Results_Table; 
            handles.All_Results_Panel{stage_i} = Results_Panel;
            guidata(hObject, handles);
            
        end
        
    %% alpha3 unknown    
    case 'alpha3'
        for stage_i=1:handles.stagenumber
            
            set_IN_alpha_3un;
            fcn_alpha_3un;
            handles.next_stage_data = Results_Table(:,10);     % at mean line / check
            handles.All_Results_Table{stage_i} = Results_Table; 
            handles.All_Results_Panel{stage_i} = Results_Panel;
            guidata(hObject, handles);
            
        end
        
        
    case 'Tt3'
        for stage_i=1:handles.stagenumber
            
            set_IN_Tt_3un;
            fcn_Tt_3un;
            handles.next_stage_data = Results_Table(:,10);     % at mean line / check
            handles.All_Results_Table{stage_i} = Results_Table; 
            handles.All_Results_Panel{stage_i} = Results_Panel;
            guidata(hObject, handles);
            
        end
        
        
    case 'M2' 
        for stage_i=1:handles.stagenumber
            
            set_IN_M_2un;
            fcn_M_2un;
            handles.next_stage_data = Results_Table(:,10);     % at mean line / check
            handles.All_Results_Table{stage_i} = Results_Table; 
            handles.All_Results_Panel{stage_i} = Results_Panel;
            guidata(hObject, handles);
            
        end
end


%% callback Results Figure
%close the current window
close(gcf);
%call up the Results Figure
Turbine_Results(handles.All_Results_Table,handles.All_Results_Panel);




function m_dot_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to m_dot_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m_dot_textbox as text
%        str2double(get(hObject,'String')) returns contents of m_dot_textbox as a double


% --- Executes during object creation, after setting all properties.
function m_dot_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m_dot_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rm_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to rm_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rm_textbox as text
%        str2double(get(hObject,'String')) returns contents of rm_textbox as a double


% --- Executes during object creation, after setting all properties.
function rm_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rm_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Zs_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to Zs_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Zs_textbox as text
%        str2double(get(hObject,'String')) returns contents of Zs_textbox as a double


% --- Executes during object creation, after setting all properties.
function Zs_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Zs_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c_h_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to c_h_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c_h_textbox as text
%        str2double(get(hObject,'String')) returns contents of c_h_textbox as a double


% --- Executes during object creation, after setting all properties.
function c_h_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c_h_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to R_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R_textbox as text
%        str2double(get(hObject,'String')) returns contents of R_textbox as a double


% --- Executes during object creation, after setting all properties.
function R_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton_alpha2.
function radiobutton_alpha2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_alpha2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(handles.Tt3_textbox,'Enable','off');
% set(handles.M3R_textbox,'Enable','off');
% set(handles.alpha3_textbox,'Enable','off');
% set(handles.alpha2_textbox,'Enable','off');
% set(handles.M2_textbox,'Enable','off');

set(handles.radiobutton_Tt3,'Value',0);
% set(handles.radiobutton_alpha3MR,'Value',0);
set(handles.radiobutton_alpha2,'Value',1);
set(handles.radiobutton_alpha3,'Value',0);
set(handles.radiobutton_M2,'Value',0);

handles.radiostat = 'alpha2';
%change table_stage
set(handles.Table_Stage,'RowName',handles.rowname_alpha2); 
if(get(handles.radiobutton7,'Value'))
    new_data = handles.Empty_Data;
elseif(get(handles.radiobutton8,'Value'))
    new_data = handles.Default_Data_alpha2;
    for i=3:handles.stagenumber
        new_data = [new_data,handles.Empty_Data];
    end
end
set(handles.Table_Stage,'Data',new_data);
%
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of radiobutton_alpha2


% --- Executes on button press in radiobutton_alpha3.
function radiobutton_alpha3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_alpha3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(handles.Tt3_textbox,'Enable','on');
% set(handles.M3R_textbox,'Enable','off');
% set(handles.alpha3_textbox,'Enable','off');
% set(handles.alpha2_textbox,'Enable','on');
% set(handles.M2_textbox,'Enable','on');
% 
% set(handles.radiobutton_alpha3MR,'Value',0);
set(handles.radiobutton_Tt3,'Value',0);
set(handles.radiobutton_alpha2,'Value',0);
set(handles.radiobutton_alpha3,'Value',1);
set(handles.radiobutton_M2,'Value',0);

handles.radiostat = 'alpha3';

%change table_stage
set(handles.Table_Stage,'RowName',handles.rowname_alpha3); 
if(get(handles.radiobutton7,'Value'))
    new_data = handles.Empty_Data;
elseif(get(handles.radiobutton8,'Value'))
    new_data = handles.Default_Data_alpha3;
    for i=3:handles.stagenumber
        new_data = [new_data,handles.Empty_Data];
    end
end
set(handles.Table_Stage,'Data',new_data);
%
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of radiobutton_alpha3


% --- Executes on button press in radiobutton_Tt3.
function radiobutton_Tt3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_Tt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% set(handles.Tt3_textbox,'Enable','off');
% set(handles.M3R_textbox,'Enable','off');
% 
% set(handles.alpha3_textbox,'Enable','on');
% set(handles.alpha2_textbox,'Enable','on');
% set(handles.M2_textbox,'Enable','on');
% 
% set(handles.radiobutton_alpha3MR,'Value',0);
set(handles.radiobutton_Tt3,'Value',1);
set(handles.radiobutton_alpha2,'Value',0);
set(handles.radiobutton_alpha3,'Value',0);
set(handles.radiobutton_M2,'Value',0);

handles.radiostat = 'Tt3';
%change table_stage
set(handles.Table_Stage,'RowName',handles.rowname_Tt3); 
if(get(handles.radiobutton7,'Value'))
    new_data = handles.Empty_Data;
elseif(get(handles.radiobutton8,'Value'))
    new_data = handles.Default_Data_Tt3;
    for i=3:handles.stagenumber
        new_data = [new_data,handles.Empty_Data];
    end
end
set(handles.Table_Stage,'Data',new_data);
%
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of radiobutton_Tt3


% --- Executes on button press in radiobutton_M2.
function radiobutton_M2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_M2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(handles.Tt3_textbox,'Enable','on');
% set(handles.M3R_textbox,'Enable','off');
% set(handles.alpha3_textbox,'Enable','on');
% set(handles.alpha2_textbox,'Enable','on');
% set(handles.M2_textbox,'Enable','off');
% 
% set(handles.radiobutton_alpha3MR,'Value',0);
set(handles.radiobutton_Tt3,'Value',0);
set(handles.radiobutton_alpha2,'Value',0);
set(handles.radiobutton_alpha3,'Value',0);
set(handles.radiobutton_M2,'Value',1);

handles.radiostat = 'M2';
%change table_stage
set(handles.Table_Stage,'RowName',handles.rowname_M2); 
if(get(handles.radiobutton7,'Value'))
    new_data = handles.Empty_Data;
elseif(get(handles.radiobutton8,'Value'))
    new_data = handles.Default_Data_M2;
    for i=3:handles.stagenumber
        new_data = [new_data,handles.Empty_Data];
    end
end
set(handles.Table_Stage,'Data',new_data);
%
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of radiobutton_M2



function alpha2_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to alpha2_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha2_textbox as text
%        str2double(get(hObject,'String')) returns contents of alpha2_textbox as a double


% --- Executes during object creation, after setting all properties.
function alpha2_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha2_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton_alpha3MR.
function radiobutton_alpha3MR_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_alpha3MR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(handles.Tt3_textbox,'Enable','off');
% set(handles.M3R_textbox,'Enable','on');
% set(handles.alpha3_textbox,'Enable','off');
% set(handles.alpha2_textbox,'Enable','on');
% set(handles.M2_textbox,'Enable','on');
% 
% set(handles.radiobutton_alpha3MR,'Value',1);
set(handles.radiobutton_Tt3,'Value',0);
set(handles.radiobutton_alpha2,'Value',0);
set(handles.radiobutton_alpha3,'Value',0);
set(handles.radiobutton_M2,'Value',0);

handles.radiostat = 'alpha3MR';

set(handles.Table_Stage,'RowName',handles.rowname_alpha3MR);

%change table_stage
set(handles.Table_Stage,'RowName',handles.rowname_alpha3MR); 
if(get(handles.radiobutton7,'Value'))
    new_data = handles.Empty_Data;
elseif(get(handles.radiobutton8,'Value'))
    new_data = handles.Default_Data_alpha2;
    for i=3:handles.stagenumber
        new_data = [new_data,handles.Empty_Data];
    end
end
set(handles.Table_Stage,'Data',new_data);
%
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of radiobutton_alpha3MR



function M3R_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to M3R_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M3R_textbox as text
%        str2double(get(hObject,'String')) returns contents of M3R_textbox as a double


% --- Executes during object creation, after setting all properties.
function M3R_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M3R_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Zr_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to Zr_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Zr_textbox as text
%        str2double(get(hObject,'String')) returns contents of Zr_textbox as a double


% --- Executes during object creation, after setting all properties.
function Zr_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Zr_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_stage_Callback(hObject, eventdata, handles)
% hObject    handle to slider_stage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.radiobutton8,'Value') == 1)
if( get(hObject,'Value') == 1 )
    if(handles.stagenumber < 10)

        handles.stagenumber = str2double(get(handles.stagenumber_textbox,'String')) + 1 ;
        set(handles.stagenumber_textbox,'String',num2str(handles.stagenumber));
        %% set table columns

        switch(handles.radiostat)
            case 'alpha2'
                new_data = handles.Default_Data_alpha2;
            case 'M2'
                new_data = handles.Default_Data_M2;
            case 'Tt3'
                new_data = handles.Default_Data_Tt3;
            case 'alpha3'
                new_data = handles.Default_Data_alpha3;
        end

        for i=3:handles.stagenumber
            new_data = [new_data,handles.Empty_Data];
        end
        set(handles.Table_Stage,'Data',new_data);

        %% columns set
    end
elseif(get(hObject,'Value') == 0 )
    if(handles.stagenumber > 2)
        handles.stagenumber = str2double(get(handles.stagenumber_textbox,'String')) - 1 ;
        set(handles.stagenumber_textbox,'String',num2str(handles.stagenumber));
        %% set table columns
        switch(handles.radiostat)
            case 'alpha2'
                new_data = handles.Default_Data_alpha2;
            case 'M2'
                new_data = handles.Default_Data_M2;
            case 'Tt3'
                new_data = handles.Default_Data_Tt3;
            case 'alpha3'
                new_data = handles.Default_Data_alpha3;
        end

        for i=3:handles.stagenumber
            new_data = [new_data,handles.Empty_Data];
        end
        set(handles.Table_Stage,'Data',new_data);
        guidata(hObject, handles);
        %% columns set
    
    end
end
end
set(hObject,'Value',0.5);



guidata(hObject, handles);

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_stage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_stage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function stagenumber_textbox_Callback(hObject, eventdata, handles)
% hObject    handle to stagenumber_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stagenumber_textbox as text
%        str2double(get(hObject,'String')) returns contents of stagenumber_textbox as a double
handles.stagenumber = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function stagenumber_textbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stagenumber_textbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.stagenumber_textbox,'Enable','on');

handles.stagenumber = str2double(get(handles.stagenumber_textbox,'String'));

switch(handles.radiostat)
    case 'alpha2'
        new_data = handles.Default_Data_alpha2;
    case 'M2'
        new_data = handles.Default_Data_M2;
    case 'Tt3'
        new_data = handles.Default_Data_Tt3;
    case 'alpha3'
        new_data = handles.Default_Data_alpha3;
        
end

for i=3:handles.stagenumber
    new_data = [new_data,handles.Empty_Data];
end
set(handles.Table_Stage,'Data',new_data);
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.stagenumber_textbox,'Enable','off');
handles.stagenumber = 1;
set(handles.Table_Stage,'Data',handles.Empty_Data);
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of radiobutton7



% function testtext_Callback(hObject, eventdata, handles)
% % hObject    handle to testtext (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of testtext as text
% %        str2double(get(hObject,'String')) returns contents of testtext as a double


% --- Executes during object creation, after setting all properties.
% function testtext_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to testtext (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
