function varargout = untitled(varargin)
% DO NOT EDIT
% wygenerowane automatycznie przy tworzeniu GUI
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);






function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function edit_a_Callback(hObject, eventdata, handles)
% ustawienie wartosci a po wpisaniu
set(handles.edit_a, 'Value', str2num(get(hObject, 'String')))



function edit_a_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_b_Callback(hObject, eventdata, handles)
% ustawienie warto?? b po wpisaniu
set(handles.edit_b, 'Value', str2num(get(hObject, 'String')))




function edit_b_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_fx_Callback(hObject, eventdata, handles)
% ustawienie warto?? fx po wpisaniu
set(handles.edit_fx, 'Value', str2double(get(hObject, 'String')))



function edit_fx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_wart_cal_Callback(hObject, eventdata, handles)
% ustawienie warto?? wartosci calki po wpisaniu
set(handles.edit_wart_cal, 'Value', str2num(get(hObject, 'String')))



function edit_wart_cal_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function button_Callback(hObject, eventdata, handles)
% gdy u?ytkownik poda wszystkie potrzebne dane i zatwierdzi je 
% uruchomiona zostaje ta funkcja s


% pobranie potrzebnych danych od u?ykownika 
a = get(handles.edit_a, 'Value');
b = get(handles.edit_b, 'Value');
x = linspace(a,b,1000);
N = get(handles.edit_N, 'Value');
dokladna_wart = get(handles.edit_wart_cal, 'Value');

% ustalenie szerokosci przedzialu do rysowania
szer = (b-a)/N;

% pobranie i przeksztalcenie tekstu na funkcje
podana_funkcja = get(handles.edit_fx, 'String');
funkcja = str2func(['@(x)' podana_funkcja]);

% ========
% wykres 1
% ========
axes(handles.wykres1);
% czyszczenie wykresu
cla(handles.wykres1)

% wartosci do narysowania dla odpowiedniej kwadratury
[przyb_calka_prost, srodkowe, A] = kw_prost(a,b,funkcja,N);
pr_x = [A(1:N) ; A(2:N+1) ; A(2:N+1) ; A(1:N) ];
pr_y = [repmat(0,1,N) ; repmat(0,1,N) ; funkcja(srodkowe) ; funkcja(srodkowe) ];
patch(pr_x, pr_y, 'cyan') 
 
hold on
grid on
% wykres funkcji 
plot(x,funkcja(x))
% opis
xlabel('x')
ylabel('y')
legend('kwadratura prostokatów','wykres funkcji f(x)')
title('kwadratura prostokatów')


% ========
% wykres 2
% ========

axes(handles.wykres2);
% czyszczenie
cla(handles.wykres2)

% wartosci do narysowania trapezow pod wykresem
[przyb_calka_trap, B] = kw_trapezow(a,b,funkcja,N);

tra_x = [B(1:N) ; B(2:N+1) ; B(2:N+1) ; B(1:N) ];
tra_y = [repmat(0,1,N) ; repmat(0,1,N) ; funkcja(B(2:N+1)) ; funkcja(B(1:N))];
patch(tra_x, tra_y, 'y')
hold on
grid on
% funkcja na wykresie
plot(x,funkcja(x))
% opisy funkcji
xlabel('x')
ylabel('y')
legend('kwadratura trapezow','wykres funkcji f(x)')
title('kwadratura trapezów')

% oblicznie wartosci calki dla simpsona
przyb_calka_simps = kw_simpsona(a,b,funkcja,N);

% Obluga bledow i wypisanie wartosci funkcji
bl_bez_prostokatow = (abs(przyb_calka_prost - dokladna_wart))/dokladna_wart;
bl_bez_trapezow = (abs(przyb_calka_trap - dokladna_wart))/dokladna_wart;
bl_bez_simps = (abs(przyb_calka_simps - dokladna_wart))/dokladna_wart;

% uzueplnienie wszystkich okienek
set(handles.wart_bl_prost, 'String', bl_bez_prostokatow*100 + "%")
set(handles.wart_bl_trap, 'String', bl_bez_trapezow*100 + "%")
set(handles.wart_bl_simps, 'String', bl_bez_simps*100 +  "%")
set(handles.wart_cal_prost, 'String', przyb_calka_prost)
set(handles.wart_cal_trap, 'String', przyb_calka_trap)
set(handles.wart_cal_simp, 'String', przyb_calka_simps)
set(handles.liczba_operacji, 'String', 8)






function edit_N_Callback(hObject, eventdata, handles)
set(handles.edit_N, 'Value', str2double(get(hObject, 'String')))


function edit_N_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
