function varargout = Turbine_Results(varargin)
% TURBINE_RESULTS MATLAB code for Turbine_Results.fig
%      TURBINE_RESULTS, by itself, creates a new TURBINE_RESULTS or raises the existing
%      singleton*.
%
%      H = TURBINE_RESULTS returns the handle to a new TURBINE_RESULTS or the handle to
%      the existing singleton*.
%
%      TURBINE_RESULTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TURBINE_RESULTS.M with the given input arguments.
%
%      TURBINE_RESULTS('Property','Value',...) creates a new TURBINE_RESULTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Turbine_Results_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Turbine_Results_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Turbine_Results

% Last Modified by GUIDE v2.5 14-Jun-2016 21:11:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Turbine_Results_OpeningFcn, ...
                   'gui_OutputFcn',  @Turbine_Results_OutputFcn, ...
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
% Qc = varargin{1};
% handles.Q = varargin(1);
% % Update handles structure
% guidata(hObject, handles);
% 

% --- Executes just before Turbine_Results is made visible.
function Turbine_Results_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Turbine_Results (see VARARGIN)

% Choose default command line output for Turbine_Results
handles.output = hObject;
handles.stagenumber = 1; % start from stage 1, not to be confused with total stagenumbers
% 
% if(varargin{3} == 'SI')
%     % revise : fill with SI units
% else
%     handles.units = {'R';'R';'psia';'psia';'';'ft/s';'ft/s';'ft/s';'deg';'deg';'in.'};
% end

handles.TABLEDATA = varargin{1};
set(handles.data_table,'data',handles.TABLEDATA{1});
% end of setting table data

handles.maxstage = length(handles.TABLEDATA);%get total number of stages

% Setting Image
% Read in Image
imageArray =imread('Nomenclature.png','png');
% Switch active axes to the one you made for the image.
axes(handles.image_axes);
% Put the image array into the axes so it will appear on the GUI
imshow(imageArray);

% "Results panel" data
handles.results_data = varargin{2};
handles.results_data_stage = handles.results_data{1};
set(handles.Pr_s_statictext,'String',num2str(handles.results_data_stage(1)));
set(handles.n_s_statictext,'String', num2str(handles.results_data_stage(2)));
set(handles.SAI_statictext,'String', num2str(handles.results_data_stage(3)));
set(handles.PHI_statictext,'String', num2str(handles.results_data_stage(4)));
set(handles.VR_statictext,'String',  num2str(handles.results_data_stage(5)));
set(handles.RPM_statictext,'String',num2str(handles.results_data_stage(6)));
set(handles.A1_statictext,'String',num2str(handles.results_data_stage(7)));
set(handles.A2_statictext,'String',num2str(handles.results_data_stage(8)));
set(handles.A3_statictext,'String',num2str(handles.results_data_stage(9)));
set(handles.blade_space_h_statictext,'String',num2str(handles.results_data_stage(10)));
set(handles.blade_space_m_statictext,'String',num2str(handles.results_data_stage(11)));
set(handles.blade_space_t_statictext,'String',num2str(handles.results_data_stage(12)));


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Turbine_Results wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Turbine_Results_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when selected cell(s) is changed in data_table.
function data_table_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to data_table (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)

% Choose default command line output for Turbine_Results

% Update handles structure


% --- Executes during object creation, after setting all properties.
function data_table_CreateFcn(hObject, eventdata, handles)
% hObject    handle to data_table (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in nextstage_button.
function nextstage_button_Callback(hObject, eventdata, handles)
% hObject    handle to nextstage_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if(handles.stagenumber < handles.maxstage )
handles.stagenumber = handles.stagenumber + 1;
%% Show new Results
set(handles.data_table,'data',handles.TABLEDATA{handles.stagenumber});

% "Results panel" data
handles.results_data_stage = handles.results_data{handles.stagenumber};
set(handles.Pr_s_statictext,'String',num2str(handles.results_data_stage(1)));
set(handles.n_s_statictext,'String', num2str(handles.results_data_stage(2)));
set(handles.SAI_statictext,'String', num2str(handles.results_data_stage(3)));
set(handles.PHI_statictext,'String', num2str(handles.results_data_stage(4)));
set(handles.VR_statictext,'String',  num2str(handles.results_data_stage(5)));
set(handles.RPM_statictext,'String',num2str(handles.results_data_stage(6)));
set(handles.A1_statictext,'String',num2str(handles.results_data_stage(7)));
set(handles.A2_statictext,'String',num2str(handles.results_data_stage(8)));
set(handles.A3_statictext,'String',num2str(handles.results_data_stage(9)));
set(handles.blade_space_h_statictext,'String',num2str(handles.results_data_stage(10)));
set(handles.blade_space_m_statictext,'String',num2str(handles.results_data_stage(11)));
set(handles.blade_space_t_statictext,'String',num2str(handles.results_data_stage(12)));

%% update Title of stage

% Update handles structure
guidata(hObject, handles);

end


% --- Executes on button press in prevstage_button.
function prevstage_button_Callback(hObject, eventdata, handles)
% hObject    handle to prevstage_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(handles.stagenumber > 1 )
handles.stagenumber = handles.stagenumber - 1;
%% Show new Results
set(handles.data_table,'data',handles.TABLEDATA{handles.stagenumber});

% "Results panel" data
handles.results_data_stage = handles.results_data{handles.stagenumber};
set(handles.Pr_s_statictext,'String',num2str(handles.results_data_stage(1)));
set(handles.n_s_statictext,'String', num2str(handles.results_data_stage(2)));
set(handles.SAI_statictext,'String', num2str(handles.results_data_stage(3)));
set(handles.PHI_statictext,'String', num2str(handles.results_data_stage(4)));
set(handles.VR_statictext,'String',  num2str(handles.results_data_stage(5)));
set(handles.RPM_statictext,'String',num2str(handles.results_data_stage(6)));
set(handles.A1_statictext,'String',num2str(handles.results_data_stage(7)));
set(handles.A2_statictext,'String',num2str(handles.results_data_stage(8)));
set(handles.A3_statictext,'String',num2str(handles.results_data_stage(9)));
set(handles.blade_space_h_statictext,'String',num2str(handles.results_data_stage(10)));
set(handles.blade_space_m_statictext,'String',num2str(handles.results_data_stage(11)));
set(handles.blade_space_t_statictext,'String',num2str(handles.results_data_stage(12)));

%% update Title of stage


% Update handles structure
guidata(hObject, handles);

end
