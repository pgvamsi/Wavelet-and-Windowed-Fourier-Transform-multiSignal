%Version 1.00 
%**************************************************************************
%*************************** Wavelet Transform GUI ************************
%**************************************************************************
%---------------------------Credits---------------------------------------
%Wavelet Transform: Dmytro Iatsenko
%hline: Valentina Ticinelli
%----------------------------Documentation--------------------------------
%Reads a 1-D signal in either .mat or .csv format and displays it. 
%User can select the part of the signal he wants to use, and calculate wavelet
%transform of that part. 
%Plots the Amplitude/Power surf plot and the average power plot over time. 
%Also contains save options for the graphs and data from wavelet transform.



function varargout = WTmulti(varargin)
% WTMULTI MATLAB code for WTmulti.fig
%      WTMULTI, by itself, creates a new WTMULTI or raises the existing
%      singleton*.
%
%      H = WTMULTI returns the handle to a new WTMULTI or the handle to
%      the existing singleton*.
%
%      WTMULTI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WTMULTI.M with the given input arguments.
%
%      WTMULTI('Property','Value',...) creates a new WTMULTI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before WTmulti_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to WTmulti_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES


% Edit the above text to modify the response to help WTmulti

% Last Modified by GUIDE v2.5 13-Jul-2017 18:17:16
%*************************************************************************%
%                BEGIN initialization code - DO NOT EDIT                  %
%                ----------------------------------------                 %
%*************************************************************************%
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @WTmulti_OpeningFcn, ...
                   'gui_OutputFcn',  @WTmulti_OutputFcn, ...
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
%*************************************************************************%
%                END initialization code - DO NOT EDIT                    %
%*************************************************************************%


function WTmulti_OpeningFcn(hObject, eventdata, handles, varargin)
%screensize = get( groot, 'Screensize' );
movegui('center') 
axes(handles.logo)
matlabImage = imread('physicslogo.png');
image(matlabImage)
axis off
axis image
h = findall(0,'Type','uicontrol');
set(h,'FontUnits','points');
set(h,'FontSize',8);
set(h,'FontUnits','normalized');
handles.calc_type = 1;
handles.plot_type = 2;
drawnow;
handles.output = hObject;
guidata(hObject, handles);
function varargout = WTmulti_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
function plot_type_CreateFcn(hObject, eventdata, handles)
function wavlet_transform_CreateFcn(hObject, eventdata, handles)
function orientation_Callback(hObject, eventdata, handles)
function orientation_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function sampling_freq_Callback(hObject, eventdata, handles)
    %preprocess_Callback(hObject, eventdata, handles);
function sampling_freq_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function csv_save_Callback(hObject, eventdata, handles)
function mat_save_Callback(hObject, eventdata, handles)
function max_freq_Callback(hObject, eventdata, handles)
    preprocess_Callback(hObject, eventdata, handles);
function status_CreateFcn(hObject, eventdata, handles)
    set(hObject,'String','Please Import Signal');

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function max_freq_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function min_freq_Callback(hObject, eventdata, handles)
    preprocess_Callback(hObject, eventdata, handles)
function min_freq_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function wavelet_type_Callback(hObject, eventdata, handles)
function wavelet_type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function central_freq_Callback(hObject, eventdata, handles)
function central_freq_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function preprocess_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function cutedges_Callback(hObject, eventdata, handles)
function cutedges_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function sampling_rate_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function length_Callback(hObject, eventdata, handles)
function length_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function intervals_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function xlim_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function ylim_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function elevation_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function azimuthal_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function signal_length_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function signal_list_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function signal_length_Callback(hObject, eventdata, handles)
function plot_type_ButtonDownFcn(hObject, eventdata, handles)
function calc_type_CreateFcn(hObject, eventdata, handles)
function save_figure_Callback(hObject, eventdata, handles)
%--------------------------------------------------Unused Callbacks--------
function status_Callback(hObject, eventdata, handles, msg)
set(handles.status,'String',msg);
drawnow;
%--------------------------------------------------------------------------

function azimuthal_Callback(hObject, eventdata, handles)
view(handles.plot3d,[str2double(get(handles.azimuthal,'String')),str2double(get(handles.elevation,'String'))]);

function elevation_Callback(hObject, eventdata, handles)
view(handles.plot3d,[str2double(get(handles.azimuthal,'String')),str2double(get(handles.elevation,'String'))]);

function sampling_rate_Callback(hObject, eventdata, handles)
%Replots after changin sampling rate
    xyplot_Callback(hObject, eventdata, handles);
    
function intervals_Callback(hObject, eventdata, handles)
%Marking lines on the graphs    
    intervals = csv_to_mvar(get(handles.intervals,'String'));      
    intervals = sort(intervals);
    %Clearing unmarked lines
    child_handles = allchild(handles.wt_pane);            
    for i = 1:size(child_handles,1)        
        if(strcmp(get(child_handles(i),'Type'),'axes'))
            axes_child = allchild(child_handles(i));
            for j = 1:size(axes_child,1)
                if strcmpi(get(axes_child(j),'Type'),'Line') 
                    line_style = get(axes_child(j),'linestyle');
                    line_width = get(axes_child(j),'linewidth');
                    if strcmp(line_style,'--') && line_width <= 1
                        delete(axes_child(j)); 
                    end
                end
            end
            set(child_handles(i),'Ytickmode','auto','Xtickmode','auto');            
        end
    end
    interval_selected = get(handles.signal_list,'Value');
    hold(handles.cum_avg,'on');
    if interval_selected == size(handles.sig,1) + 1
        xl = get(child_handles(i),'ylim');
        for j = 1:size(intervals,2)            
            x = [xl(1) xl(2)];        
            z = ones(1,size(x,2));
            y = intervals(j)*ones(1,size(x,2));
            plot3(handles.cum_avg,y,x,z,'--k');
            xticks = get(handles.cum_avg,'xtick');
            xticks = unique(sort([xticks intervals]));
            set(handles.cum_avg,'xtick',xticks);            
        end        
        set(child_handles(i),'ylim',xl);
    else    
        if(size(intervals)>0)
            zval = 1;        
            for i = 1:size(child_handles,1)            
                if(strcmp(get(child_handles(i),'Type'),'axes') && strcmp(get(child_handles(i),'Visible'),'on'))
                    
                    hold(child_handles(i),'on');
                    warning('off');
                    xl = get(child_handles(i),'xlim');
                    for j = 1:size(intervals,2)
                        
                        x = [xl(1) xl(2)];        
                        z = ones(1,size(x,2));
                        z = z.*zval;
                        y = intervals(j)*ones(1,size(x,2));
                        plot3(child_handles(i),x,y,z,'--k');
                    end
                    yticks = get(child_handles(i),'ytick');
                    yticks = unique(sort([yticks intervals]));
                    set(child_handles(i),'Ytick',yticks);
                    warning('on');
                    hold(child_handles(i),'off');
                end            
                set(child_handles(i),'xlim',xl);
            end    
        end
    end
    
    set(handles.plot_pow,'Yticklabel',[]);

function preprocess_Callback(hObject, eventdata, handles)
%Detrending Part Visualisation
    cla(handles.plot_pp,'reset'); 
    L = size(handles.sig,2);
    signal_selected = get(handles.signal_list, 'Value');
    fs = str2double(get(handles.sampling_freq,'String'));
    fmax = str2double(get(handles.max_freq,'String'));
    fmin = str2double(get(handles.min_freq,'String'));
    %if ~isfield(handles,'sig_pp')
        handles.sig_pp = cell(size(handles.sig,1),1);
        for i = 1:size(handles.sig,1)        
            sig = handles.sig(i,:);             
            %Detrending
            X=(1:length(sig))'/fs; XM=ones(length(X),4); 

            for pn=1:3 
                CX=X.^pn; 
                XM(:,pn+1)=(CX-mean(CX))/std(CX); 
            end
            sig = sig(:);
            w=warning('off','all'); 
            new_signal=sig-XM*(pinv(XM)*sig); 
            warning(w);

            %Filtering
            fx=fft(new_signal,L); % Fourier transform of a signal

            Nq=ceil((L+1)/2); 
            ff=[(0:Nq-1),-fliplr(1:L-Nq)]*fs/L; 
            ff=ff(:); % frequencies in Fourier transform

            fx(abs(ff)<=max([fmin,fs/L]) | abs(ff)>=fmax)=0; % filter signal in a chosen frequency domain
            handles.sig_pp{i,1} = ifft(fx)';

        end   
    %end
    %Plotting
    
    plot(handles.plot_pp,handles.time_axis,handles.sig(signal_selected,:));
    hold(handles.plot_pp,'on');
    plot(handles.plot_pp,handles.time_axis, handles.sig_pp{signal_selected,1},'-r');
    legend(handles.plot_pp,{'Original','Pre-Processed'},'FontSize',8,'Location','Best','units','normalized');
    xlim(handles.plot_pp,[0,size(handles.sig,2)./fs]);
    set(handles.plot_pp,'Fontunits','normalized');
    xlabel(handles.plot_pp,{'Time (s)'},'FontUnits','normalized');   
    xl = csv_to_mvar(get(handles.xlim,'String'));
    xl = xl.*fs;
    xl(2) = min(xl(2),size(handles.sig,2));
    xl(1) = max(xl(1),1);
    xl = xl./fs;
    set(handles.plot_pp,'xlim',[xl(1) xl(2)]);%making the axes tight
    guidata(hObject,handles);
    drawnow;

function signal_list_Callback(hObject, eventdata, handles)
%Selecting signal and calling other necessary functions
    signal_selected = get(handles.signal_list, 'Value');
    
    if any(signal_selected == size(handles.sig,1)+1)
        set(handles.signal_list,'Max',size(handles.sig,1));
    else
        if size(signal_selected,2) == 1
            set(handles.signal_list,'Max',1);
        else
            set(handles.signal_list, 'Value', 1);
            set(handles.signal_list,'Max',1);
            drawnow;
            xyplot_Callback(hObject, eventdata, handles);
        end
    end
    
    if any(signal_selected ~= size(handles.sig,1)+1) && length(signal_selected) == 1
        plot(handles.time_series, handles.time_axis, handles.sig(signal_selected,:));%Plotting the time_series part after calculation of appropriate limits
        xl = csv_to_mvar(get(handles.xlim, 'String'));
        xlim(handles.time_series, xl);
        xlabel(handles.time_series, 'Time (s)');
        refresh_limits_Callback(hObject, eventdata, handles);%updates the values in the box
        cla(handles.plot_pp, 'reset');
        preprocess_Callback(hObject, eventdata, handles);%plots the detrended curve
        xlabel(handles.time_series, 'Time (s)');
        set(handles.status, 'String', 'Select Data And Continue With Wavelet Transform');

        if isfield(handles,'amp_WT')
            xyplot_Callback(hObject, eventdata, handles);
        end
        intervals_Callback(hObject, eventdata, handles)
    elseif any(signal_selected == size(handles.sig,1)+1)
        xyplot_Callback(hObject, eventdata, handles);
        intervals_Callback(hObject, eventdata, handles)
    end
    
    
function wavlet_transform_Callback(hObject, eventdata, handles)
%Does the wavelet transform 

% Get user input from GUI
    status_Callback(hObject, eventdata, handles, 'Calculating Wavelet Transform...');
    fs = str2double(get(handles.sampling_freq,'String'));
    fmax = str2double(get(handles.max_freq,'String'));
    fmin = str2double(get(handles.min_freq,'String'));
    fc =  str2double(get(handles.central_freq,'String'));
%Checking whether the sampling frequency is present or not
    if isnan(fs)
      errordlg('Sampling frequency must be specified','Parameter Error');
    end
    
    items = get(handles.wavelet_type,'String');
    index_selected = get(handles.wavelet_type,'Value');
    wavelet_type_selected = items{index_selected};
    
    items = get(handles.preprocess,'String');
    index_selected = get(handles.preprocess,'Value');
    preprocess_selected = items{index_selected};
    
    items = get(handles.cutedges,'String');
    index_selected = get(handles.cutedges,'Value');
    cutedges_selected = items{index_selected};
    
    if ~isfield(handles,'sig')
      errordlg('Signal not found','Signal Error');
    end
    sig = handles.sig;    % do not optimise as the signal is being cut in this case
    
    xl = csv_to_mvar(get(handles.xlim,'String'));
    xl = xl.*fs;
    xl(2) = min(xl(2),size(sig,2));
    xl(1) = max(xl(1),1);
    xl = xl./fs;
    time_axis = xl(1):1/fs:xl(2);
    if length(time_axis)>=2000
        screensize = max(get(groot,'Screensize'));
        under_sample = floor(size(sig,2)/screensize);%TODO improve reliability with screens
    else 
        under_sample = 1;
    end
    if handles.calc_type == 2
        under_sample = ceil(under_sample*3.5);
    end
    handles.time_axis_us = time_axis(1:under_sample:end);
    n = size(handles.sig,1) ;
    handles.WT = cell(n, 1);
    
%Taking only selected part of the signal
    xl = get(handles.xlim,'String');
    xl = csv_to_mvar(xl);
    xl = xl.*fs;
    xl(2) = min(xl(2),size(handles.sig,2));
    xl(1) = max(xl(1),1);
    handles.sig_cut = sig(:,xl(1):xl(2));
    set(handles.status,'String','Calculating Wavelet Transform...');
    
    handles.amp_WT = cell(n,1);
    handles.pow_WT = cell(n,1);
    handles.pow_arr = cell(n,1);
    handles.amp_arr = cell(n,1);
    %Calculating wavelet transform
    for p = 1:n
        status_Callback(hObject, eventdata, handles, sprintf('Calculating Wavelet Transform of Signal %d/%d',p,n));
        wtwrapper;
        WTamp = abs(WT);
        WTpow = abs(WT).^2;
        handles.pow_arr{p,1} = nanmean(WTpow.');%Calculating Average Power
        handles.amp_arr{p,1} = nanmean(WTamp.');%Calculating Average Amplitude  

        handles.amp_WT{p,1} = WTamp(:,1:under_sample:end);   
        handles.pow_WT{p,1} = WTpow(:,1:under_sample:end);
    end
    guidata(hObject,handles);
    xyplot_Callback(hObject, eventdata, handles);
    intervals_Callback(hObject, eventdata, handles)
    guidata(hObject,handles);

function xyplot_Callback(hObject, eventdata, handles)
%Plots all figures
    signal_selected = get(handles.signal_list,'Value');  
    if any(signal_selected == size(handles.sig,1)+1) && isfield(handles,'freqarr')                  
        cla(handles.plot3d,'reset');
        cla(handles.plot_pow,'reset');
        cla(handles.cum_avg,'reset');
        set(handles.plot3d,'visible','off');
        set(handles.plot_pow,'visible','off');   
        set(handles.cum_avg,'visible','on');
        
        hold(handles.cum_avg,'on');
        uistack(handles.cum_avg,'top');
        size(handles.sig,1)
        if(handles.plot_type == 1)    
            if size(handles.sig,1) == 1                                
                plot(handles.cum_avg, handles.freqarr,cell2mat(handles.pow_arr),'-','Linewidth',3);
                plot(handles.cum_avg, handles.freqarr,cell2mat(handles.pow_arr),'--','Linewidth',3);
            else
                plot(handles.cum_avg, handles.freqarr, mean(cell2mat(handles.pow_arr)),'-','Linewidth',3);
                plot(handles.cum_avg, handles.freqarr, median(cell2mat(handles.pow_arr)),'--','Linewidth',3);
            end
            ylabel(handles.cum_avg,'Average Power');
            xlabel(handles.cum_avg,'Frequency (Hz)');
        else
            if size(handles.sig,1) == 1
                plot(handles.cum_avg, handles.freqarr, cell2mat(handles.amp_arr),'-','Linewidth',3);
                plot(handles.cum_avg, handles.freqarr, cell2mat(handles.amp_arr),'--','Linewidth',3);
            else
                plot(handles.cum_avg, handles.freqarr, mean(cell2mat(handles.amp_arr)),'-','Linewidth',3);
                plot(handles.cum_avg, handles.freqarr, median(cell2mat(handles.amp_arr)),'--','Linewidth',3);
            end
            ylabel(handles.cum_avg,'Average Amplitude');
            xlabel(handles.cum_avg,'Frequency (Hz)');
        end
        
        legend(handles.cum_avg,'mean','median')
        for i = 1:size(signal_selected,2)            
            if(handles.plot_type == 1 && signal_selected(i) <= size(handles.sig,1))                                
                plot(handles.cum_avg, handles.freqarr, handles.pow_arr{signal_selected(i),1});                     
                ylabel(handles.cum_avg,'Average Power');
                xlabel(handles.cum_avg,'Frequency (Hz)');
                [M,I] = max(handles.pow_arr{signal_selected(i),1});
%                 text(handles.cum_avg,handles.freqarr(I),M,num2str(signal_selected(i)));
            elseif signal_selected(i) <= size(handles.sig,1)
                plot(handles.cum_avg, handles.freqarr, handles.amp_arr{signal_selected(i),1});                
                ylabel(handles.cum_avg,'Average Amplitude');
                xlabel(handles.cum_avg,'Frequency (Hz)');
                [M,I] = max(handles.amp_arr{signal_selected(i),1});
%                 text(handles.cum_avg,handles.freqarr(I),M,num2str(signal_selected(i)));
            end
            
        end
        grid(handles.cum_avg,'on');
        if handles.calc_type == 1
            set(handles.cum_avg,'xscale','log');
        else
            set(handles.cum_avg,'xscale','linear');
        end
        
        xlim(handles.cum_avg,[min(handles.freqarr) max(handles.freqarr)]);
    elseif isfield(handles,'freqarr') 
        cla(handles.cum_avg,'reset');
        cla(handles.plot3d,'reset');
        cla(handles.plot_pow,'reset');
        set(handles.cum_avg,'visible','off');
        set(handles.plot3d,'visible','on');
        set(handles.plot_pow,'visible','on');
        uistack(handles.plot3d,'top');
        uistack(handles.plot_pow,'top');
        
        if(handles.plot_type == 1)      
            WTpow = handles.pow_WT{signal_selected,1};
            handles.peak_value = max(WTpow(:))+.1;
            pcolor(handles.plot3d, handles.time_axis_us , handles.freqarr, WTpow(1:end,1:end));                
            plot(handles.plot_pow, handles.pow_arr{signal_selected,1}, handles.freqarr,'-k','LineWidth',3 );     
            xlabel(handles.plot_pow,'Average Power');
        else 
            WTamp = handles.amp_WT{signal_selected,1};
            handles.peak_value = max(WTamp(:))+.1;
            pcolor(handles.plot3d, handles.time_axis_us , handles.freqarr, WTamp(1:end,1:end));         
            plot(handles.plot_pow ,handles.amp_arr{signal_selected,1}, handles.freqarr,'-k','LineWidth',3 );
            xlabel(handles.plot_pow,'Average Amplitude');
        end
        c = colorbar(handles.plot3d,'Location','east');
        set(c, 'position',[0.71 .12 .015 .85],'Linewidth',0.2);
        set(c, 'fontsize',8,'units','normalized');
        shading(handles.plot3d,'interp');
        
        if handles.calc_type == 1
            set(handles.plot3d,'yscale','log');
            set(handles.plot_pow,'yscale','log');
        end
        
        set(handles.plot_pow,'yticklabel',[]);
        set(handles.plot3d,'ylim',[min(handles.freqarr) max(handles.freqarr)]);%making the axes tight
        set(handles.plot3d,'xlim',[handles.time_axis_us(1) handles.time_axis_us(end)]);%making the axes tight
        xlabel(handles.plot3d,'Time (s)');
        ylabel(handles.plot3d,'Frequency (Hz)');    
        ylabel(handles.plot_pow,'Frequency (Hz)');    
        ylim(handles.plot_pow,[min(handles.freqarr) max(handles.freqarr)]);
        set(handles.status,'String','Done Plotting');
    end
    grid(handles.plot3d,'on');
    grid(handles.plot_pow,'on');
    grid(handles.cum_avg,'on');
    set(handles.plot3d,'Fontunits','normalized');
    set(handles.plot_pow,'Fontunits','normalized');
    set(handles.cum_avg,'Fontunits','normalized');
    guidata(hObject,handles);
    
function signal_list_KeyPressFcn(hObject, eventdata, handles)
switch eventdata.Key
    case 'r'
        signal_selected = get(handles.signal_list,'Value');
        if length(signal_selected)>1
            return;
        end        
        list = get(handles.signal_list,'String');
        str = cell2mat(inputdlg('Enter the new signal name'));
        list{signal_selected,1} = str;
        set(handles.signal_list,'String',list);
end    
% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
%Loading data

% --------------------------------------------------------------------
function csv_read_Callback(hObject, eventdata, handles)
%Read csv file
    set(handles.status,'String','Importing Signal...');
    fs = str2double(get(handles.sampling_freq,'String'));     
    if isnan(fs)
      errordlg('Sampling frequency must be specified before importing','Parameter Error');
      return;
    end
    
    sig = read_from_csv();
    
    % Construct a questdlg with three options
    choice = questdlg('Select Orientation of Data set?', ...
        'Data Import','Column wise','Row wise','default');
    switch choice
        case 'Column wise'
            sig = sig';
            %msgbox(sprintf('Number of data sets %d',size(sig,1)),'Import Complete');
        case 'Row wise'
            %msgbox(sprintf('Number of data sets %d',size(sig,1)),'Import Complete');
        case 'default'
            errordlg('Data set orientation must be specified')
            return;
    end
    
    list = cell(size(sig,1)+1,1);
    list{1,1} = 'Signal 1';
    for i = 2:size(sig,1)
        list{i,1} = sprintf('Signal %d',i);
    end
    set(handles.signal_list,'String',list);
    list{size(sig,1)+1,1} = sprintf('Average Plot(All)');
    set(handles.signal_list,'String',list);
    
    handles.sig = sig;   
    time = 1:size(sig,2);
    time = time./fs;
    handles.time_axis = time;
    
    plot(handles.time_series,time,sig(1,:));%Plotting the time_series part afte calculation of appropriate limits
    xlim(handles.time_series,[0,size(sig,2)./fs]);
    xlabel(handles.time_series,'Time (s)');    
    guidata(hObject,handles);    
    refresh_limits_Callback(hObject, eventdata, handles);%updates the values in the box    
    cla(handles.plot_pp,'reset');
    preprocess_Callback(hObject, eventdata, handles);%plots the detrended curve
    xlabel(handles.time_series,'Time (s)');
    set(handles.status,'String','Select Data And Continue With Wavelet Transform');
    set(handles.signal_length,'String',strcat(num2str(size(sig,2)/fs/60),' minutes'));
    

% --------------------------------------------------------------------
function mat_read_Callback(hObject, eventdata, handles)
%Read mat file    
    set(handles.status,'String','Importing Signal...');
    fs = str2double(get(handles.sampling_freq,'String'));   
    if isnan(fs)
      errordlg('Sampling frequency must be specified before importing','Parameter Error');
      return;
    end
    
    sig = read_from_mat();
    sig = struct2cell(sig);
    sig = cell2mat(sig);
    
    % Construct a questdlg with three options
    choice = questdlg('Select Orientation of Data set?', ...
        'Data Import','Column wise','Row wise','default');
    switch choice
        case 'Column wise'
            sig = sig';
            %msgbox(sprintf('Number of data sets %d',size(sig,1)),'Import Complete');
        case 'Row wise'
            %msgbox(sprintf('Number of data sets %d',size(sig,1)),'Import Complete');
        case 'default'
            errordlg('Data set orientation must be specified')
            return;
    end
    list = cell(size(sig,1)+1,1);
    list{1,1} = 'Signal 1';
    for i = 2:size(sig,1)
        list{i,1} = sprintf('Signal %d',i);
    end
    set(handles.signal_list,'String',list);
    list{size(sig,1)+1,1} = sprintf('Average Plot(All)');
    set(handles.signal_list,'String',list); 
    
    handles.sig = sig;   
    time = 1:size(sig,2);
    time = time./fs;
    handles.time_axis = time;
    
    plot(handles.time_series,time,sig(1,:));%Plotting the time_series part afte calculation of appropriate limits
    xlim(handles.time_series,[0,size(sig,2)./fs]);
    xlabel(handles.time_series,'Time (s)');
    
    refresh_limits_Callback(hObject, eventdata, handles);%updates the values in the box
    guidata(hObject,handles);  
    cla(handles.plot_pp,'reset');
    preprocess_Callback(hObject, eventdata, handles);%plots the detrended curve
    xlabel(handles.time_series,'Time (s)');
    set(handles.status,'String','Select Data And Continue With Wavelet Transform');
    set(handles.signal_length,'String',strcat(num2str(size(sig,2)/fs/60),' minutes'));
      
    

%---------------------------Limits-----------------------------
function xlim_Callback(hObject, eventdata, handles)
%When the values of xlim are changed the graphs are updated
    xl = csv_to_mvar(get(handles.xlim,'String'));
    xlim(handles.time_series,xl);
    xlim(handles.plot_pp,xl);
    t = xl(2) - xl(1);
    set(handles.length,'String',t);

function ylim_Callback(hObject, eventdata, handles)
%When the values of ylim are changed the graphs are updated  
    yl = csv_to_mvar(get(handles.ylim,'String'));
    ylim(handles.time_series,yl);

%---------------------------Updating Value of limits Limits-----------------------------
function refresh_limits_Callback(hObject, eventdata, handles)
%Calcualtes limits of the plot    
    x = get(handles.time_series,'xlim');
    xlim(handles.plot_pp,x);
    t = x(2) - x(1);
    x = strcat(num2str(x(1)),' , ',num2str(x(2)));    
    
    y = get(handles.time_series,'ylim');
    y = strcat(num2str(y(1)),' , ',num2str(y(2)));
    
    set(handles.xlim,'String',x);
    set(handles.ylim,'String',y);
    set(handles.length,'String',t);
    
% ---------------------------Zoom Updating--------------------------
function zoom_in_OffCallback(hObject, eventdata, handles)
%Refreshes the limit values right after the tool is deselected
    x = get(handles.time_series,'xlim');
    xlim(handles.plot_pp,x);
    t = x(2) - x(1);
    x = strcat(num2str(x(1)),' , ',num2str(x(2)));    
    
    y = get(handles.time_series,'ylim');
    y = strcat(num2str(y(1)),' , ',num2str(y(2)));
    
    set(handles.xlim,'String',x);
    set(handles.ylim,'String',y);
    set(handles.length,'String',t);

% -----------------------------Zoom Updating--------------------------
function zoom_out_OffCallback(hObject, eventdata, handles)
%Refreshes the limit values right after the tool is deselected
    x = get(handles.time_series,'xlim');
    xlim(handles.plot_pp,x);
    t = x(2) - x(1);
    x = strcat(num2str(x(1)),' , ',num2str(x(2)));    
    
    y = get(handles.time_series,'ylim');
    y = strcat(num2str(y(1)),' , ',num2str(y(2)));
    
    set(handles.xlim,'String',x);
    set(handles.ylim,'String',y);
    set(handles.length,'String',t);
    
function plot_type_SelectionChangeFcn(hObject, eventdata, handles)
%deciding which plot
    switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
        case 'power'
            handles.plot_type = 1;
        case 'amp'
            handles.plot_type = 2;
    end
    
    guidata(hObject,handles); 
    xyplot_Callback(hObject, eventdata, handles)
    guidata(hObject,handles); 


function calc_type_SelectionChangedFcn(hObject, eventdata, handles)
%Deciding which type of calculation
    switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
        case 'wav'
            handles.calc_type = 1;
            list = {'Lognorm';'Morlet';'Bump'};
            set(handles.wavelet_type,'String',list);
        case 'four'
            handles.calc_type = 2;
            list = {'Hann';'Gaussian';'Blackman';'Exp';'Rect';'Kaiser-a'};
            set(handles.wavelet_type,'String',list);    
    end        
    drawnow;
    guidata(hObject,handles);
    
% ----------------------------------------Saving Files---------------
function save_Callback(hObject, eventdata, handles)
%Honestly you're just here because I don't know how to get rid of you

function save_3dplot_Callback(hObject, eventdata, handles)
%Saves the 3d plot
Fig = figure;
ax = copyobj(handles.plot3d, Fig);
set(ax,'Units', 'normalized', 'Position', [0.1,0.2,.85,.7]);
set(Fig,'Units','normalized','Position', [0.2 0.2 0.5 0.5]);

function save_avg_plot_Callback(hObject, eventdata, handles)
%Saves the power plot
Fig = figure;
ax = copyobj(handles.plot_pow, Fig);
view(90,-90);
set(ax,'Units', 'normalized', 'Position', [0.1,0.2,.85,.7], 'YTickMode', 'auto', 'YTickLabelMode', 'auto');
set(Fig,'Units','normalized','Position', [0.3 0.3 0.3 0.3]);

function save_mm_plot_Callback(hObject, eventdata, handles)
Fig = figure;
ax = copyobj(handles.cum_avg, Fig);
set(ax,'Units', 'normalized', 'Position', [0.1,0.2,.85,.7]);
set(Fig,'Units','normalized','Position', [0.2 0.2 0.5 0.5]);

function save_pow_arr_csv_Callback(hObject, eventdata, handles)
%Saves the avg power array in .csv format
[FileName,PathName] = uiputfile('.csv');
save_location = strcat(PathName,FileName);
pow_arr = cell2mat(handles.pow_arr);
csvwrite(save_location,pow_arr);

function save_amp_arr_csv_Callback(hObject, eventdata, handles)
[FileName,PathName] = uiputfile('.csv');
save_location = strcat(PathName,FileName);
amp_arr = cell2mat(handles.amp_arr);
csvwrite(save_location,amp_arr);

function save_freqarr_csv_Callback(hObject, eventdata, handles)
[FileName,PathName] = uiputfile('.csv');
save_location = strcat(PathName,FileName);
csvwrite(save_location,handles.freqarr');

function save_sig_pp_csv_Callback(hObject, eventdata, handles)
%Saves the preprocessed signal in .csv format
[FileName,PathName] = uiputfile('.csv');
save_location = strcat(PathName,FileName)
sig_pp = cell2mat(handles.sig_pp);
fs = str2double(get(handles.sampling_freq,'String'));
xl = get(handles.xlim,'String');
xl = csv_to_mvar(xl);
xl = xl.*fs;
xl(2) = min(xl(2),size(handles.sig,2));
xl(1) = max(xl(1),1);
sig_pp = sig_pp(:,xl(1):xl(2));
csvwrite(save_location,sig_pp);

function save_pow_arr_mat_Callback(hObject, eventdata, handles)
%Saves the avg power array in .mat format
[FileName,PathName] = uiputfile('.mat','Save Power Array as');
save_location = strcat(PathName,FileName)
powStruct.pow_arr = handles.pow_arr;
powStruct.freqarr = handles.freqarr';
save(save_location,'powStruct');

function save_amp_arr_mat_Callback(hObject, eventdata, handles)
[FileName,PathName] = uiputfile('.mat','Save Amplitude Array as');
save_location = strcat(PathName,FileName)
ampStruct.amp_arr = handles.amp_arr;
ampStruct.freqarr = handles.freqarr';
save(save_location,'ampStruct');

function save_sig_pp_mat_Callback(hObject, eventdata, handles)
%Saves the preprocessed signal in .mat format
[FileName,PathName] = uiputfile('.mat','Save Preprocessed Signal as');
save_location = strcat(PathName,FileName)
sig_pp = cell2mat(handles.sig_pp);
fs = str2double(get(handles.sampling_freq,'String'));
xl = get(handles.xlim,'String');
xl = csv_to_mvar(xl);
xl = xl.*fs;
xl(2) = min(xl(2),size(handles.sig,2));
xl(1) = max(xl(1),1);
sig_pp = sig_pp(:,xl(1):xl(2));
save(save_location,'sig_pp');
 
function save_cut_ts_csv_Callback(hObject, eventdata, handles)
[FileName,PathName] = uiputfile('.csv');
save_location = strcat(PathName,FileName);
sig = handles.sig;
fs = str2double(get(handles.sampling_freq,'String'));
xl = get(handles.xlim,'String');
xl = csv_to_mvar(xl);
xl = xl.*fs;
xl(2) = floor(min(xl(2),size(handles.sig,2)));
xl(1) = floor(max(xl(1),1));
sig = sig(:,xl(1):xl(2));
csvwrite(save_location,sig);

function save_cut_ts_mat_Callback(hObject, eventdata, handles)
[FileName,PathName] = uiputfile('.mat','Save Cut Signal as');
save_location = strcat(PathName,FileName)
sig = handles.sig;
fs = str2double(get(handles.sampling_freq,'String'));
xl = get(handles.xlim,'String');
xl = csv_to_mvar(xl);
xl = xl.*fs;
xl(2) = min(xl(2),size(handles.sig,2));
xl(1) = max(xl(1),1);
sig = sig(:,xl(1):xl(2));
save(save_location,'sig');

function save_time_axis_mat_Callback(hObject, eventdata, handles)
[FileName,PathName] = uiputfile('.mat','Save Cut Signal as');
save_location = strcat(PathName,FileName)
time_axis = get(handles.plot3d,'xlim');
fs = str2double(get(handles.sampling_freq,'String'));
time_axis = time_axis(1):1/fs:time_axis(2);
time_axis = time_axis(2:end);
save(save_location,'time_axis');

function save_time_axis_csv_Callback(hObject, eventdata, handles)
[FileName,PathName] = uiputfile('.mat','Save Cut Signal as');
save_location = strcat(PathName,FileName)
time_axis = get(handles.plot3d,'xlim');
fs = str2double(get(handles.sampling_freq,'String'));
time_axis = time_axis(1):1/fs:time_axis(2);
time_axis = time_axis(2:end);
csvwrite(save_location,time_axis);

