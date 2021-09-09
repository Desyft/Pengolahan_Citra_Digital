function varargout = guiTransformasiCitra(varargin)
% GUITRANSFORMASICITRA MATLAB code for guiTransformasiCitra.fig
%      GUITRANSFORMASICITRA, by itself, creates a new GUITRANSFORMASICITRA or raises the existing
%      singleton*.
%
%      H = GUITRANSFORMASICITRA returns the handle to a new GUITRANSFORMASICITRA or the handle to
%      the existing singleton*.
%
%      GUITRANSFORMASICITRA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITRANSFORMASICITRA.M with the given input arguments.
%
%      GUITRANSFORMASICITRA('Property','Value',...) creates a new GUITRANSFORMASICITRA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiTransformasiCitra_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiTransformasiCitra_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiTransformasiCitra

% Last Modified by GUIDE v2.5 09-Sep-2021 22:13:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiTransformasiCitra_OpeningFcn, ...
                   'gui_OutputFcn',  @guiTransformasiCitra_OutputFcn, ...
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


% --- Executes just before guiTransformasiCitra is made visible.
function guiTransformasiCitra_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiTransformasiCitra (see VARARGIN)

% Choose default command line output for guiTransformasiCitra
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiTransformasiCitra wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiTransformasiCitra_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in startbtn.
function startbtn_Callback(hObject, eventdata, handles)
% hObject    handle to startbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a = imread('tugas1.jpg');
axes(handles.axes1)
imshow (a)
title('Citra Original')

% --- Executes on button press in keabuanbtn.
function keabuanbtn_Callback(hObject, eventdata, handles)
% hObject    handle to keabuanbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('tugas1.jpg');
cita_abukomp = a(:,:,1)*0.4+a(:,:,2)*0.32+a(:,:,3)*0.28;
axes(handles.axes2) 
imshow(cita_abukomp)
title('Citra Keabuan')

% --- Executes on button press in endbtn.
function endbtn_Callback(hObject, eventdata, handles)
% hObject    handle to endbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1)


% --- Executes on button press in Brightness.
function Brightness_Callback(hObject, eventdata, handles)
% hObject    handle to Brightness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('tugas1.jpg')
cita_abukomp = a(:,:,1)*0.4+a(:,:,2)*0.32+a(:,:,3)*0.28;
citra_bright = cita_abukomp + 50 ;
axes(handles.axes3)
imshow(citra_bright)
 title ('Citra Brightness')

% --- Executes on button press in Contrastbtn.
function Contrastbtn_Callback(hObject, eventdata, handles)
% hObject    handle to Contrastbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('tugas1.jpg')
cita_abukomp = a(:,:,1)*0.4+a(:,:,2)*0.32+a(:,:,3)*0.28;
citra_contrast = cita_abukomp * 2 ;
axes(handles.axes4)
imshow(citra_contrast)
 title ('Citra Contrast')
