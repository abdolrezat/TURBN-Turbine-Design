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

% Last Modified by GUIDE v2.5 15-Jun-2016 20:54:11

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
handles.radiostat = 'alpha3M3R';

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
fcn_alpha_2un;

%% callback format


% Turbine_Results({Results_Table,Results_Table2},{Results_Panel,Results_Panel2});
%% test code


%close the current window
% uncomment !! close(gcf);

%call up the Results Figure
% uncomment !! Turbine_Results(Results_Table,Results_Panel);



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
set(handles.Tt3_textbox,'Enable','on');
set(handles.M3R_textbox,'Enable','off');
set(handles.alpha3_textbox,'Enable','on');
set(handles.alpha2_textbox,'Enable','off');
set(handles.M2_textbox,'Enable','on');

set(handles.radiobutton_Tt3,'Value',0);
set(handles.radiobutton_alpha3MR,'Value',0);
set(handles.radiobutton_alpha2,'Value',1);
set(handles.radiobutton_alpha3,'Value',0);
set(handles.radiobutton_M2,'Value',0);

handles.radiostat = 'alpha2';
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of radiobutton_alpha2


% --- Executes on button press in radiobutton_alpha3.
function radiobutton_alpha3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_alpha3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Tt3_textbox,'Enable','on');
set(handles.M3R_textbox,'Enable','off');
set(handles.alpha3_textbox,'Enable','off');
set(handles.alpha2_textbox,'Enable','on');
set(handles.M2_textbox,'Enable','on');

set(handles.radiobutton_alpha3MR,'Value',0);
set(handles.radiobutton_Tt3,'Value',0);
set(handles.radiobutton_alpha2,'Value',0);
set(handles.radiobutton_alpha3,'Value',1);
set(handles.radiobutton_M2,'Value',0);

handles.radiostat = 'alpha3';
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of radiobutton_alpha3


% --- Executes on button press in radiobutton_Tt3.
function radiobutton_Tt3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_Tt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.Tt3_textbox,'Enable','off');
set(handles.M3R_textbox,'Enable','off');

set(handles.alpha3_textbox,'Enable','on');
set(handles.alpha2_textbox,'Enable','on');
set(handles.M2_textbox,'Enable','on');

set(handles.radiobutton_alpha3MR,'Value',0);
set(handles.radiobutton_Tt3,'Value',1);
set(handles.radiobutton_alpha2,'Value',0);
set(handles.radiobutton_alpha3,'Value',0);
set(handles.radiobutton_M2,'Value',0);

handles.radiostat = 'Tt3';
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of radiobutton_Tt3


% --- Executes on button press in radiobutton_M2.
function radiobutton_M2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_M2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Tt3_textbox,'Enable','on');
set(handles.M3R_textbox,'Enable','off');
set(handles.alpha3_textbox,'Enable','on');
set(handles.alpha2_textbox,'Enable','on');
set(handles.M2_textbox,'Enable','off');

set(handles.radiobutton_alpha3MR,'Value',0);
set(handles.radiobutton_Tt3,'Value',0);
set(handles.radiobutton_alpha2,'Value',0);
set(handles.radiobutton_alpha3,'Value',0);
set(handles.radiobutton_M2,'Value',1);

handles.radiostat = 'M2';
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
set(handles.Tt3_textbox,'Enable','off');
set(handles.M3R_textbox,'Enable','on');
set(handles.alpha3_textbox,'Enable','off');
set(handles.alpha2_textbox,'Enable','on');
set(handles.M2_textbox,'Enable','on');

set(handles.radiobutton_alpha3MR,'Value',1);
set(handles.radiobutton_Tt3,'Value',0);
set(handles.radiobutton_alpha2,'Value',0);
set(handles.radiobutton_alpha3,'Value',0);
set(handles.radiobutton_M2,'Value',0);

handles.radiostat = 'alpha3MR';
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
