function varargout = demo2(varargin)
% DEMO2 MATLAB code for demo2.fig
%      DEMO2, by itself, creates a new DEMO2 or raises the existing
%      singleton*.
%
%      H = DEMO2 returns the handle to a new DEMO2 or the handle to
%      the existing singleton*.
%
%      DEMO2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEMO2.M with the given input arguments.
%
%      DEMO2('Property','Value',...) creates a new DEMO2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before demo2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to demo2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help demo2

% Last Modified by GUIDE v2.5 16-Apr-2017 22:24:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @demo2_OpeningFcn, ...
                   'gui_OutputFcn',  @demo2_OutputFcn, ...
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


% --- Executes just before demo2 is made visible.
function demo2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to demo2 (see VARARGIN)

% Choose default command line output for demo2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes demo2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global choice1 ;
global choice2 ;
global switch1;
global switch2;
global switch3;
global k;
global times;
global seconds;
times = 0;
seconds=60;
k=1;
switch1=0;
switch2=0;
switch3=0;
choice1=1;
choice2=1;

% --- Outputs from this function are returned to the command line.
function varargout = demo2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in ADD.
function ADD_Callback(hObject, eventdata, handles)
% hObject    handle to ADD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
if times==1
    seconds=seconds+1;
else   
    if get(handles.edit1,'String')~='π'
        n1=str2double(get(handles.edit1,'String'));
    else
        n1=pi;
    end
    n2=str2double(get(handles.edit2,'String'));
    result=n1+n2;
    set(handles.result,'String',result);
end
% --- Executes on button press in MIN.
function MIN_Callback(hObject, eventdata, handles)
% hObject    handle to MIN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
if times==1
    seconds=seconds+1;
else  
    if get(handles.edit1,'String')~='π'
        n1=str2double(get(handles.edit1,'String'));
    else
        n1=pi;
    end
    n2=str2double(get(handles.edit2,'String'));
    result=n1-n2;
    set(handles.result,'String',result);
end
% --- Executes on button press in MULp.
function MULp_Callback(hObject, eventdata, handles)
% hObject    handle to MULp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
if times==1
    seconds=seconds+1;
else  
    if get(handles.MULp,'String')=='×'
        if get(handles.edit1,'String')~='π'
            n1=str2double(get(handles.edit1,'String'));
        else
            n1=pi;
        end
        n2=str2double(get(handles.edit2,'String'));
        result=n1*n2;
    else
        if ~isempty(get(handles.edit1,'String'))
            if get(handles.edit1,'String')~='π'
                n1=floor(str2num(get(handles.edit1,'String')));
            else
                n1=3;
            end
            set(handles.edit2,'String',[]);
             result=factorial(n1);
             set(handles.hao,'Visible','On');
        elseif ~isempty(get(handles.edit2,'String'))
            n2=str2num(get(handles.edit2,'String'));
             result=factorial(n2);
             set(handles.hao,'Visible','On');
        else
            result=0;
        end
    end
     set(handles.result,'String',result);     
end
% --- Executes on button press in DIV.
function DIV_Callback(hObject, eventdata, handles)
% hObject    handle to DIV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
if times==1
    seconds=seconds+1;
else  
    if get(handles.edit1,'String')~='π'
            n1=str2double(get(handles.edit1,'String'));
        else
            n1=pi;
    end
    n2=str2double(get(handles.edit2,'String'));
    result=n1/n2;
    set(handles.result,'String',result);
end

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in AC.
function AC_Callback(hObject, eventdata, handles)
% hObject    handle to AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
if times==1
    seconds=seconds+1;
else  
    set(handles.edit1,'String',[]);
    set(handles.edit2,'String',[]);
    set(handles.result,'String',[]);
    set(handles.hello,'Visible','On');
end
% --- Executes on button press in hello.
function hello_Callback(hObject, eventdata, handles)
% hObject    handle to hello (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
if times==1
    seconds=seconds+1;
else  
    global choice1;
    if mod(choice1,2) == 0
        set(handles.MULp,'String','×');
        choice1=choice1+1;
    else
        set(handles.MULp,'String','!');
        choice1=choice1+1;
    end
end
% Hint: get(hObject,'Value') returns toggle state of hello


% --- Executes on button press in hao.
function hao_Callback(hObject, eventdata, handles)
% hObject    handle to hao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
if times==1
    seconds=seconds+1;
else  
    global choice2;
    set(handles.hello,'String','你');
    set(handles.hello,'FontSize',15.0);
    if mod(choice2,2) == 0
        set(handles.angle,'Visible','Off');
        choice2=choice2+1;
    else
        set(handles.angle,'Visible','On');
        choice2=choice2+1;
    end
end
% Hint: get(hObject,'Value') returns toggle state of hao


% --- Executes on button press in pi.
function pi_Callback(hObject, eventdata, handles)
% hObject    handle to pi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
if times==1
    seconds=seconds+1;
else  
    global switch1;
    global switch2;
    global switch3;
    switch1=1;
    set(handles.edit1,'String','π');
    set(handles.edit2,'String',[]);
    if switch1==1&switch2==1&switch3==1
         set(handles.hao1,'Visible','On');
         set(handles.ma,'Visible','On');
         set(handles.hao,'String','还');
    end
end
% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
if times==1
    seconds=seconds+1;
else  
    global switch1;
    global switch2;
    global switch3;
    switch2=1;
    if get(handles.edit1,'String')~='π'
        n1=str2double(get(handles.edit1,'String'));
        result = sin(n1);
    else
        result = 0;
    end
    set(handles.edit2,'String',[]);
    set(handles.result,'String',result);
    if switch1==1&switch2==1&switch3==1
         set(handles.hao1,'Visible','On');
         set(handles.ma,'Visible','On');
         set(handles.hao,'String','还');
    end
end
% --- Executes on button press in arcsin.
function arcsin_Callback(hObject, eventdata, handles)
% hObject    handle to arcsin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
if times==1
    seconds=seconds+1;
else  
    global switch1;
    global switch2;
    global switch3;
    switch3=1;
    if get(handles.edit1,'String')~='π'
        n1=str2double(get(handles.edit1,'String'));
    else
        n1=pi;
    end
    set(handles.edit2,'String',[]);
    result = asin(n1);
    set(handles.result,'String',result);
    if switch1==1&switch2==1&switch3==1
         set(handles.hao1,'Visible','On');
         set(handles.ma,'Visible','On');
         set(handles.hao,'String','还');
    end
end

% --- Executes on button press in hao1.
function hao1_Callback(hObject, eventdata, handles)
% hObject    handle to hao1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times;
global seconds;
i=1;
while i<200
    if seconds < 0
         set(handles.dead,'Visible','On');
         set(handles.bilibili,'Visible','On');
         if get(handles.figure1,'Color')==[0.9,0.1,0.1]
             set(handles.dead,'ForegroundColor',[0,0,0]);
             set(handles.dead,'BackgroundColor',[0.9,0.1,0.1]);
             set(handles.bilibili,'ForegroundColor',[0,0,0]);
             set(handles.bilibili,'BackgroundColor',[0.9,0.1,0.1]);
         else
             set(handles.dead,'BackgroundColor',[0.9,0.1,0.1]);
             set(handles.dead,'ForegroundColor',[0,0,0]);
             set(handles.bilibili,'BackgroundColor',[0.9,0.1,0.1]);
             set(handles.bilibili,'ForegroundColor',[0,0,0]);
         end
    else
        if mod(i,2)==0
            set(handles.figure1,'Color',[0.9,0.1,0.1]);
            
            set(handles.hao,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.hao,'ForegroundColor',[0,0,0]);
            set(handles.edit1,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.edit1,'ForegroundColor',[0,0,0]);
            set(handles.edit2,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.edit2,'ForegroundColor',[0,0,0]);
            set(handles.AC,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.AC,'ForegroundColor',[0,0,0]);
            set(handles.result,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.result,'ForegroundColor',[0,0,0]);
            set(handles.ADD,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.ADD,'ForegroundColor',[0,0,0]);
            set(handles.MIN,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.MIN,'ForegroundColor',[0,0,0]);
            set(handles.MULp,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.MULp,'ForegroundColor',[0,0,0]);
            set(handles.DIV,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.DIV,'ForegroundColor',[0,0,0]);
            set(handles.hello,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.hello,'ForegroundColor',[0,0,0]);
            set(handles.hao,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.hao,'ForegroundColor',[0,0,0]);
            set(handles.hao1,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.hao1,'ForegroundColor',[0,0,0]);
            set(handles.ma,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.ma,'ForegroundColor',[0,0,0]);
            set(handles.angle,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.angle,'ForegroundColor',[0,0,0]);
            set(handles.pi,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.pi,'ForegroundColor',[0,0,0]);
            set(handles.sin,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.sin,'ForegroundColor',[0,0,0]);
            set(handles.arcsin,'BackgroundColor',[0.9,0.1,0.1]);
            set(handles.arcsin,'ForegroundColor',[0,0,0]);
            if times == 1
                set(handles.edit1,'String','你的生命');
                set(handles.edit2,'String','还剩下');  
                set(handles.result,'String',seconds);
                seconds=seconds-1;
            end
        else
            set(handles.figure1,'Color',[0,0,0]);
            set(handles.hao,'BackgroundColor',[0,0,0]);
            set(handles.hao,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.edit1,'BackgroundColor',[0,0,0]);
            set(handles.edit1,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.edit2,'BackgroundColor',[0,0,0]);
            set(handles.edit2,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.result,'BackgroundColor',[0,0,0]);
            set(handles.result,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.AC,'BackgroundColor',[0,0,0]);
            set(handles.AC,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.ADD,'BackgroundColor',[0,0,0]);
            set(handles.ADD,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.MIN,'BackgroundColor',[0,0,0]);
            set(handles.MIN,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.MULp,'BackgroundColor',[0,0,0]);
            set(handles.MULp,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.DIV,'BackgroundColor',[0,0,0]);
            set(handles.DIV,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.hello,'BackgroundColor',[0,0,0]);
            set(handles.hello,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.hao,'BackgroundColor',[0,0,0]);
            set(handles.hao,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.hao1,'BackgroundColor',[0,0,0]);
            set(handles.hao1,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.ma,'BackgroundColor',[0,0,0]);
            set(handles.ma,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.angle,'BackgroundColor',[0,0,0]);
            set(handles.angle,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.pi,'BackgroundColor',[0,0,0]);
            set(handles.pi,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.sin,'BackgroundColor',[0,0,0]);
            set(handles.sin,'ForegroundColor',[0.9,0.1,0.1]);
            set(handles.arcsin,'BackgroundColor',[0,0,0]);
            set(handles.arcsin,'ForegroundColor',[0.9,0.1,0.1]);
            if times == 1
                set(handles.edit1,'String','你的生命');
                set(handles.edit2,'String','还剩下');
                set(handles.result,'String',seconds);
                seconds=seconds-1;
            end
        end
    end
    i=i+1;
    global k;
    if k>0.3
       k=k*0.95;
    end
    pause(k);
end

% --- Executes on button press in ma.
function ma_Callback(hObject, eventdata, handles)
% hObject    handle to ma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times ;
times=1;
        set(handles.hao,'String','+1');        
        set(handles.edit1,'String','+1');       
        set(handles.edit2,'String','+1');        
        set(handles.AC,'String','+1');        
        set(handles.result,'String','+1');
        set(handles.ADD,'String','+1');       
        set(handles.MIN,'String','+1');
        set(handles.MULp,'String','+1');    
        set(handles.DIV,'String','+1');        
        set(handles.hello,'String','+1');       
        set(handles.hao,'String','+1');      
        set(handles.hao1,'String','+1');       
        set(handles.ma,'String','+1');               
        set(handles.pi,'String','+1');    
        set(handles.sin,'String','+1');        
        set(handles.arcsin,'String','+1');
