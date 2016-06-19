% partI input and inlet variables, from initial inlet parameters and end of
% previous stage
if(stage_i == 1)
    IN(1,stage_i) = str2double(get(handles.Tt1_textbox,'String'));
    IN(2,stage_i) = str2double(get(handles.Pt1_textbox,'String'));   % x10^3
    IN(3,stage_i) = str2double(get(handles.M1_textbox,'String'));
    IN(4,stage_i) = deg2rad(str2double(get(handles.alpha1_textbox,'String'))); %convert degree to radian using deg2rad()
    IN(5,stage_i) = str2double(get(handles.wr_textbox,'String')); %m/s
    IN(6,stage_i) = str2double(get(handles.m_dot_textbox,'String')); %lbm/s
    IN(7,stage_i) = str2double(get(handles.rm_textbox,'String')); %in
    IN(8,stage_i) = str2double(get(handles.gc_textbox,'String')); 
    IN(9,stage_i) = str2double(get(handles.y_textbox,'String'));
    IN(10,stage_i) = str2double(get(handles.R_textbox,'String')); %kJ/(kg.K)[cp = 1.245 kJ/(kg.K)]
    %partII
    handles.All_Stage_Data = get(handles.Table_Stage,'Data');
    guidata(hObject,handles);
else
    %% get input from the previous stage
    IN(1,stage_i) = handles.next_stage_data(1);
    IN(2,stage_i) = handles.next_stage_data(3);   % x10^3
    IN(3,stage_i) = handles.next_stage_data(5);
    IN(4,stage_i) = deg2rad(handles.next_stage_data(9)); %convert degree to radian using deg2rad()
    IN(5,stage_i) = IN(5,1); %m/s
    IN(6,stage_i) = IN(6,1); %lbm/s
    IN(7,stage_i) = IN(7,1); %in
    IN(8,stage_i) = IN(8,1); 
    IN(9,stage_i) = IN(9,1);
    IN(10,stage_i) = IN(10,1); %kJ/(kg.K)[cp = 1.245 kJ/(kg.K)]
end
handles.Local_Stage_Data = str2double(handles.All_Stage_Data(:,stage_i));
% partII stage variables, from stage input data
IN_S(1,stage_i) = handles.Local_Stage_Data(1);
IN_S(2,stage_i) = handles.Local_Stage_Data(3);
IN_S(3,stage_i) = deg2rad(handles.Local_Stage_Data(2)); %conver deg to rad
IN_S(4,stage_i) = handles.Local_Stage_Data(4);
IN_S(5,stage_i) = handles.Local_Stage_Data(7);
IN_S(6,stage_i) = handles.Local_Stage_Data(8);
IN_S(7,stage_i) = handles.Local_Stage_Data(5);
IN_S(8,stage_i) = handles.Local_Stage_Data(9);