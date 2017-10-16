function [handles] = set_IN_alpha_2un(handles,stage_i)
% partI input and inlet variables, from initial inlet parameters and end of
% previous stage
if(stage_i == 1)

    handles.IN(1,stage_i) = str2double(get(handles.Tt1_textbox,'String'));
    handles.IN(2,stage_i) = str2double(get(handles.Pt1_textbox,'String'));   % x10^3
    handles.IN(3,stage_i) = str2double(get(handles.M1_textbox,'String'));
    handles.IN(4,stage_i) = deg2rad(str2double(get(handles.alpha1_textbox,'String'))); %convert degree to radian using deg2rad()
    handles.IN(5,stage_i) = str2double(get(handles.wr_textbox,'String')); %m/s
    handles.IN(6,stage_i) = str2double(get(handles.m_dot_textbox,'String')); %lbm/s
    handles.IN(7,stage_i) = str2double(get(handles.rm_textbox,'String')); %in
    handles.IN(8,stage_i) = str2double(get(handles.gc_textbox,'String')); 
    handles.IN(9,stage_i) = str2double(get(handles.y_textbox,'String'));
    handles.IN(10,stage_i) = str2double(get(handles.R_textbox,'String')); %kJ/(kg.K)[cp = 1.245 kJ/(kg.K)]
    %partII
    handles.All_Stage_Data = get(handles.Table_Stage,'Data');
%     guidata(hObject,handles);
else
    %% get input from the previous stage
    handles.IN(1,stage_i) = handles.next_stage_data(1);
    handles.IN(2,stage_i) = handles.next_stage_data(3);   % x10^3
    handles.IN(3,stage_i) = handles.next_stage_data(5);
    handles.IN(4,stage_i) = deg2rad(handles.next_stage_data(9)); %convert degree to radian using deg2rad()
    handles.IN(5,stage_i) = handles.IN(5,1); %m/s
    handles.IN(6,stage_i) = handles.IN(6,1); %lbm/s
    handles.IN(7,stage_i) = handles.IN(7,1); %in
    handles.IN(8,stage_i) = handles.IN(8,1); 
    handles.IN(9,stage_i) = handles.IN(9,1);
    handles.IN(10,stage_i) = handles.IN(10,1); %kJ/(kg.K)[cp = 1.245 kJ/(kg.K)]
end
handles.Local_Stage_Data = str2double(handles.All_Stage_Data(:,stage_i));
% partII stage variables, from stage input data
handles.IN_S(1,stage_i) = handles.Local_Stage_Data(1);
handles.IN_S(2,stage_i) = handles.Local_Stage_Data(3);
handles.IN_S(3,stage_i) = deg2rad(handles.Local_Stage_Data(2)); %conver deg to rad
handles.IN_S(4,stage_i) = handles.Local_Stage_Data(4);
handles.IN_S(5,stage_i) = handles.Local_Stage_Data(7);
handles.IN_S(6,stage_i) = handles.Local_Stage_Data(8);
handles.IN_S(7,stage_i) = handles.Local_Stage_Data(5);
handles.IN_S(8,stage_i) = handles.Local_Stage_Data(9);