function varargout = form2(varargin)
% FORM2 MATLAB code for form2.fig
%      FORM2, by itself, creates a new FORM2 or raises the existing
%      singleton*.
%
%      H = FORM2 returns the handle to a new FORM2 or the handle to
%      the existing singleton*.
%
%      FORM2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FORM2.M with the given input arguments.
%
%      FORM2('Property','Value',...) creates a new FORM2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before form2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to form2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help form2

% Last Modified by GUIDE v2.5 12-Jun-2020 23:34:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @form2_OpeningFcn, ...
                   'gui_OutputFcn',  @form2_OutputFcn, ...
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


% --- Executes just before form2 is made visible.
function form2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to form2 (see VARARGIN)

% Choose default command line output for form2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes form2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = form2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=[0:0.01:4*pi];
if get(handles.checkbox1,'Value')
axes(handles.axes1);
y=sin(x);
plot(x,y);
grid on;
hold on;
end
if get(handles.checkbox2,'Value')
axes(handles.axes1);
y=cos(x);
plot(x,y);
grid on;
hold on;
end
