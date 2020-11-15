clear all
clc
vehicle_list = {'KELVIN'};%,'PLANCK','STOKES'};
kelvinwp = [33.20774	-118.59989	 
33.19145	-118.60897	 
33.18386	-118.58951	 
33.20015	-118.58043	  
33.19580	-118.59470];
figure; hold on; grid on;
h = uicontrol(gcf,'Style', 'push', 'String', 'End','Position', [1 1 30 30],'CallBack', 'delete(gcbo);disp(''Saving Data and ending...'')');
xlabel('Longitude (deg)')
ylabel('Latitude (deg)')
while ishandle(h)
   data  = webread('http://sose.ucsd.edu/aandriat/data/all_assets_TFO.txt');
   data = splitlines(data);
   coul = jet(length(data)-2);
   cla;
    for i = 2:length(data)-1
        data_split = strsplit(data{i},','); % {Vehicle} {Date & time} {Lat} {Lon}
%         data_split = strsplit(data{i});
        vehicle = data_split{1};
        datetime = data_split{2};% ' ' data_split{3}];
        lat = data_split{3};
        lon = data_split{4};
        if ~exist(vehicle) % make structure if new vehicle
            eval([vehicle '= struct(''name'', vehicle ,''time'',datenum(datetime,''yyyymmddTHHMMSS''),''latitude'',str2num(lat),''longitude'',str2num(lon));']);
        end
        if ~isequal(eval([vehicle '.time(end)']),datenum(datetime,'yyyymmddTHHMMSS')) % append if new timestamp
            eval([vehicle '.time(end+1) = datenum(datetime,''yyyymmddTHHMMSS'');']);
            eval([vehicle '.latitude(end+1) = str2num(lat);']);
            eval([vehicle '.longitude(end+1) = str2num(lon);']);
        end
            plot_asset(eval(vehicle),coul(i-1,:))        
            legendInfo{i-1} = eval([vehicle '.name']);
           
    end
    leg =  legend(legendInfo);
    scatter(kelvinwp(:,2),kelvinwp(:,1),35,'ko','filled')
    leg.String{end} = 'Way Points';    title(['TFO ALL ASSETS; LAST UPDATED ' datestr(now)])
    shg
    pause(10)
end

function plot_asset(vehicle,color)

if any(contains({'KELVIN','PLANCK','STOKES'}, vehicle.name)) % make our WG's star patterned
    if length(vehicle.longitude) > 3
        eval(['scatter(vehicle.longitude(end:-1:end-3),vehicle.latitude(end:-1:end-3),[150 50 50 50],[color],''p'',''filled'')'])
    else
        eval(['scatter(vehicle.longitude,vehicle.latitude,150,[color],''p'',''filled'')'])
    end
else
    if length(vehicle.longitude) > 3
        eval(['scatter(vehicle.longitude(end:-1:end-3),vehicle.latitude(end:-1:end-3),[100 25 25 25],[color],''filled'')'])
    else
        eval(['scatter(vehicle.longitude,vehicle.latitude,100,[color],''filled'')'])    
    end
end

end
