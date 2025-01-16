function varargout = cek_projek(varargin)
% CEK_PROJEK MATLAB code for cek_projek.fig
%      CEK_PROJEK, by itself, creates a new CEK_PROJEK or raises the existing
%      singleton*.
%
%      H = CEK_PROJEK returns the handle to a new CEK_PROJEK or the handle to
%      the existing singleton*.
%
%      CEK_PROJEK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CEK_PROJEK.M with the given input arguments.
%
%      CEK_PROJEK('Property','Value',...) creates a new CEK_PROJEK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cek_projek_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cek_projek_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cek_projek

% Last Modified by GUIDE v2.5 26-May-2024 20:43:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cek_projek_OpeningFcn, ...
                   'gui_OutputFcn',  @cek_projek_OutputFcn, ...
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


% --- Executes just before cek_projek is made visible.
function cek_projek_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cek_projek (see VARARGIN)

% Choose default command line output for cek_projek
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cek_projek wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = cek_projek_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

opts = detectImportOptions('luxury-watch.csv');
opts.SelectedVariableNames=(1:13);
data_matrix = readtable('luxury-watch.csv', opts);
allData = table2cell(readtable('luxury-watch.csv', opts));
set(handles.dataTable, 'data', allData);

% format long g;
% disp(data_matrix);




% --- Executes when entered data in editable cell(s) in dataTable.
function dataTable_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to dataTable (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)



function wr_Callback(hObject, eventdata, handles)
% hObject    handle to wr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wr as text
%        str2double(get(hObject,'String')) returns contents of wr as a double


% --- Executes during object creation, after setting all properties.
function wr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cd_Callback(hObject, eventdata, handles)
% hObject    handle to cd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cd as text
%        str2double(get(hObject,'String')) returns contents of cd as a double


% --- Executes during object creation, after setting all properties.
function cd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ct_Callback(hObject, eventdata, handles)
% hObject    handle to ct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ct as text
%        str2double(get(hObject,'String')) returns contents of ct as a double


% --- Executes during object creation, after setting all properties.
function ct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ps_Callback(hObject, eventdata, handles)
% hObject    handle to ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ps as text
%        str2double(get(hObject,'String')) returns contents of ps as a double


% --- Executes during object creation, after setting all properties.
function ps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function price_Callback(hObject, eventdata, handles)
% hObject    handle to price (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of price as text
%        str2double(get(hObject,'String')) returns contents of price as a double


% --- Executes during object creation, after setting all properties.
function price_CreateFcn(hObject, eventdata, handles)
% hObject    handle to price (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cek.
function cek_Callback(hObject, eventdata, handles)
%baca data lagi utk hitung
opts = detectImportOptions('luxury-watch.csv');
opts.SelectedVariableNames=(9:13);
data_training = readmatrix('luxury-watch.csv',opts);

%mendapatkan nilai input
wr=str2double(get(handles.wr,'string'));
ct=str2double(get(handles.ct,'string'));
cd=str2double(get(handles.cd,'string'));
ps=str2double(get(handles.ps,'string'));
price=str2double(get(handles.price,'string'));

%convert kebentuk desimal
d_wr = wr/100;
d_ct = ct/100;
d_cd = cd/100;
d_ps = ps/100;
d_price = price/100;

% benefit = 1 | cost = 0
k = [1, 1, 0, 1, 0];

% bobot menjadi dinamis sesuai keinginan user
w = [d_wr; d_ct; d_cd; d_ps; d_price];

% jumlah = 0;
jumlah = d_wr+d_ct+d_cd+d_ps+d_price;
% jumlah = round(jumlah);

if jumlah > 1
    % tidak dapat diproses krn sum bobot >1 
    pesan="jumlah pembobotan melebihi 100%";
    set (handles.txtwarning,'string',pesan);

elseif jumlah < 1
    disp(jumlah);
    % tidak bisa diproses krn sum bobot<1
    kurang = 100-jumlah*100;
    pesan="nilai bobot kurang " + kurang + "%";
    set (handles.txtwarning,'string',pesan);

else
    % pemrosesan data
    pesan="";
    set(handles.txtwarning,'string',pesan);
    
    [m, n] = size(data_training);

    R = zeros(m, n);

%looping untuk normalisasi
for j=1:n,
    if k(j) == 1 %kalau benefit
        R(:,j) = data_training(:,j)./max(data_training(:,j));
    else %kalau cost
        R(:,j) = min(data_training(:,j))./data_training(:,j);
    end
end

%matriks setelah dikalikan dan dijumlahkan per alternatif
    V = R*w;

    % tampilin hasil
    opts= detectImportOptions('luxury-watch.csv');
    opts.SelectedVariableNames=(1:2);
    data3=readtable('luxury-watch.csv',opts);
    data3=table2cell(data3);
  
    V = V(:);
    skorCell = num2cell(V);
    
    combinedData = [cellstr(data3), skorCell];
    
    % Mengonversi ke tabel untuk manipulasi yang lebih mudah
    dataTable = cell2table(combinedData, 'VariableNames', {'Brand', 'Model', 'Score'});

    % Mengurutkan tabel berdasarkan kolom 'Name'
    dataTable = sortrows(dataTable, 'Model');

    % Menghapus baris dengan nama yang sama
    uniqueDataTable = dataTable(~[false; strcmp(dataTable.Model(1:end-1), dataTable.Model(2:end))], :);

    % Konversi kembali ke matriks
    uniqueData = table2cell(uniqueDataTable);
    
    sortedData = sortrows(uniqueData,3,'descend');
    finalData = sortedData(1:10, [1 2 3]);

    set(handles.uitable2,'data', finalData);
    disp('data');
    disp(finalData);
end



% hObject    handle to cek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
set (handles.txtwarning,'string',"");
set (handles.uitable2,'data','');
set (handles.wr,'string','');
set (handles.ct,'string','');
set (handles.cd,'string','');
set (handles.ps,'string','');
set (handles.price,'string','');

% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
