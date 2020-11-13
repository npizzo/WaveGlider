warning off
%% load data
load('\\waveglider2.ucsd.edu\20201100_TFO\STOKES\STOKES_PLD_DATA_ALL.mat')


%% plot time difference
figure('Name','STOKES');
set(gcf,'color',[1 1 1])
plot(STOKES.PLD1_TAB1.time,gradient(STOKES.PLD1_TAB1.time)*24*60,'or');
hold on
plot(STOKES.PLD2_TAB1.time,gradient(STOKES.PLD2_TAB1.time)*24*60,'sm');
plot(STOKES.PLD2_TAB2.time,gradient(STOKES.PLD2_TAB2.time)*24*60,'*k');
plot(STOKES.PLD2_TAB3.time,gradient(STOKES.PLD2_TAB3.time)*24*60,'^b');
plot(STOKES.PLD2_TAB4.time,gradient(STOKES.PLD2_TAB4.time)*24*60,'>c');
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
legend('Payload 1 - TAB1','Payload 2 - TAB1','Payload 2 - TAB2','Payload 2 - TAB3','Payload 2 - TAB4','Location','best')
set(gca,'fontname','times','FontSize',12)
set(gca,'yscale','log')
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('minutes','interpreter','latex','fontname', 'times','fontsize',14)
title('Time difference between packets','interpreter','latex','fontname', 'times','fontsize',14)
datetick('keeplimits') 

%% PAYLOAD #1 and #2  CR6 stuff (V, T, proc time)
figure('Name','STOKES');
set(gcf,'color',[1 1 1])
set(gcf,'position',[1000 221.6667 807.6667 1.1163e+03])
subplot(4,1,1)
yyaxis left
aaa = get(gca,'position');
set(gca,'position',[aaa(1) aaa(2) 0.7024 aaa(4)])

plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.Voltage_CR6_MIN,'k','linewidth',2)
hold on
plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.Voltage_CR6_MIN,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('V','interpreter','latex','fontname', 'times','fontsize',14)
  hc = colorbar;
 set(hc,'visible','off')

set(gca,'fontname','times','FontSize',12)
yyaxis right
plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.Temperature_CR6_AVG,'or','color', [0.64 0.08 0.18],'linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
aaa = get(gca,'position');
set(gca,'position',[aaa(1) aaa(2) 0.7024 aaa(4)])

datetick('keeplimits') 
ax = gca;
ax.YAxis(1).Color = 'k';
ax.YAxis(2).Color = [0.64 0.08 0.18];

set(gca,'fontname','times','FontSize',12)
ylabel('$^oC$','interpreter','latex','fontname', 'times','fontsize',14)

 title('PAYLOAD 1 (a) CR6 Voltage (V) and Internal Temperature  ($^o$C)','interpreter','latex','fontname', 'times','fontsize',14)

 subplot(4,1,2)
 fill([STOKES.PLD1_TAB1.time';flipud(STOKES.PLD1_TAB1.time')],[STOKES.PLD1_TAB1.Processing_Time_AVG'/1000;flipud(STOKES.PLD1_TAB1.Processing_Time_MAX'/1000)],[.9 .9 .9],'linestyle','none');
 set(gca,'yscale','log')
 hold on
 plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.Processing_Time_AVG/1000,'k','linewidth',2,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
ylim([0.1 10000]/1000)
 b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('sec','interpreter','latex','fontname', 'times','fontsize',14)
  hc = colorbar;
 set(hc,'visible','off')

set(gca,'fontname','times','FontSize',12)
 title('PAYLOAD 1 (b) Average processing time (black)and Max value (gray), in sec','interpreter','latex','fontname', 'times','fontsize',14)
  newposit=get(gca,'position');
 oldposit=get(ax,'position');
 set(ax,'position',[oldposit(1) oldposit(2) newposit(3) oldposit(4)])

subplot(4,1,3)
yyaxis left
aaa = get(gca,'position');
set(gca,'position',[aaa(1) aaa(2) 0.7024 aaa(4)])

plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Voltage_CR6_MIN,'k','linewidth',2)
hold on
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Voltage_CR6_MIN,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('V','interpreter','latex','fontname', 'times','fontsize',14)
  hc = colorbar;
 set(hc,'visible','off')

set(gca,'fontname','times','FontSize',12)
yyaxis right
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Temperature_CR6_AVG,'or','color', [0.64 0.08 0.18],'linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
aaa = get(gca,'position');
set(gca,'position',[aaa(1) aaa(2) 0.7024 aaa(4)])

datetick('keeplimits') 
ax2 = gca;
ax2.YAxis(1).Color = 'k';
ax2.YAxis(2).Color = [0.64 0.08 0.18];

set(gca,'fontname','times','FontSize',12)
ylabel('$^oC$','interpreter','latex','fontname', 'times','fontsize',14)

 title('PAYLOAD 2 (a) CR6 Voltage (V) and Internal Temperature  ($^o$C)','interpreter','latex','fontname', 'times','fontsize',14)

 subplot(4,1,4)
 fill([STOKES.PLD2_TAB1.time';flipud(STOKES.PLD2_TAB1.time')],[STOKES.PLD2_TAB1.Processing_Time_AVG'/1000;flipud(STOKES.PLD2_TAB1.Processing_Time_MAX'/1000)],[.9 .9 .9],'linestyle','none');
 set(gca,'yscale','log')
 hold on
 plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Processing_Time_AVG/1000,'k','linewidth',2,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
ylim([0.1 10000]/1000)
 b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('sec','interpreter','latex','fontname', 'times','fontsize',14)
  hc = colorbar;
 set(hc,'visible','off')
 newposit=get(gca,'position');
 oldposit=get(ax2,'position');
 set(ax2,'position',[oldposit(1) oldposit(2) newposit(3) oldposit(4)])

set(gca,'fontname','times','FontSize',12)
 title('PAYLOAD 2 (b) Average processing time (black)and Max value (gray), in sec','interpreter','latex','fontname', 'times','fontsize',14)
  newposit=get(gca,'position');
 oldposit=get(ax2,'position');
 set(ax2,'position',[oldposit(1) oldposit(2) newposit(3) oldposit(4)])

 
 %% Payload 1 & wind and pressure
t= find(STOKES.PLD1_TAB1.TWS<0);
STOKES.PLD1_TAB1.TWS(t)=NaN;
t= find(STOKES.PLD1_TAB1.TWD<0);
STOKES.PLD1_TAB1.TWD(t)=NaN;
figure('Name','STOKES');
set(gcf,'color',[1 1 1])
set(gcf,'position',[1000 221.6667 807.6667 1.1163e+03])

subplot(4,1,1)
yyaxis left

plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.TWS,'k','linewidth',2)
hold on
plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.TWS,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('m/s','interpreter','latex','fontname', 'times','fontsize',14)

set(gca,'fontname','times','FontSize',12)
yyaxis right
plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.TWD,'or','color', [0.64 0.08 0.18],'linewidth',1,'MarkerFaceColor','w','MarkerSize',4)

datetick('keeplimits') 
set(gca,'fontname','times','FontSize',12)
ylabel('$^o$ from true North','interpreter','latex','fontname', 'times','fontsize',14)

ax3 = gca;
ax3.YAxis(1).Color = 'k';
ax3.YAxis(2).Color = [0.64 0.08 0.18];


 title('(a) GILL Wind Speed (m/s) and direction ($^o$ from true North)','interpreter','latex','fontname', 'times','fontsize',14)
subplot(4,1,2)

t=find(STOKES.PLD1_TAB1.Atmospheric_Temperature==0);
STOKES.PLD1_TAB1.Atmospheric_Temperature(t)=NaN;
plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.Atmospheric_Temperature,'k','linewidth',2)
hold on
plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.Atmospheric_Temperature,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')

set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('$^oC$','interpreter','latex','fontname', 'times','fontsize',14)
 title('(b) GILL Atmospheric Temperature','interpreter','latex','fontname', 'times','fontsize',14)
 

%% Payload 1 AD2CP
figure('Name','STOKES');
set(gcf,'color',[1 1 1])
set(gcf,'position',[1000 221.6667 807.6667 1.1163e+03])
subplot(4,1,1)
yyaxis left
aaa = get(gca,'position');
set(gca,'position',[aaa(1) aaa(2) 0.7024 aaa(4)])

plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.AD2CP_pressure_AVG,'k','linewidth',2)
hold on
plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.AD2CP_pressure_AVG,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('Pressure','interpreter','latex','fontname', 'times','fontsize',14)

set(gca,'fontname','times','FontSize',12)
  hc = colorbar;
 set(hc,'visible','off')
yyaxis right
plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.AD2CP_temperature_AVG,'r','color', [0.64 0.08 0.18],'linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
hold on
plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.AD2CP_temperature_AVG,'or','color', [0.64 0.08 0.18],'linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
aaa = get(gca,'position');
set(gca,'position',[aaa(1) aaa(2) 0.7024 aaa(4)])

datetick('keeplimits') 
ax = gca;
ax.YAxis(1).Color = 'k';
ax.YAxis(2).Color = [0.64 0.08 0.18];

set(gca,'fontname','times','FontSize',12)
ylabel('$^oC$','interpreter','latex','fontname', 'times','fontsize',14)

 title('(a) AD2CP Pressure(xx) and Internal Temperature  ($^oC$)','interpreter','latex','fontname', 'times','fontsize',14)
subplot(4,1,2)
 fill([STOKES.PLD1_TAB1.time';flipud(STOKES.PLD1_TAB1.time')],[STOKES.PLD1_TAB1.Roll_AD2CP_MIN';flipud(STOKES.PLD1_TAB1.Roll_AD2CP_MAX')],[.9 .9 .9],'linestyle','none');
 hold on
 plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.Roll_AD2CP_AVG,'k','linewidth',2,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
set(gca,'fontname','times','FontSize',12)

xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('$^o$','interpreter','latex','fontname', 'times','fontsize',14)

  hc = colorbar;
 set(hc,'visible','off')
  b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
ylim([b])
title('(b) Min, Max, and Average Roll (AD2CP)','interpreter','latex','fontname', 'times','fontsize',14)
subplot(4,1,3)
 fill([STOKES.PLD1_TAB1.time';flipud(STOKES.PLD1_TAB1.time')],[STOKES.PLD1_TAB1.Pitch_AD2CP_MIN';flipud(STOKES.PLD1_TAB1.Pitch_AD2CP_MAX')],[.9 .9 .9],'linestyle','none');
 hold on
 plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.Pitch_AD2CP_AVG,'k','linewidth',2,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
set(gca,'fontname','times','FontSize',12)

xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('$^o$','interpreter','latex','fontname', 'times','fontsize',14)

  hc = colorbar;
 set(hc,'visible','off')
  b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
ylim([b])
title('(c) Min, Max, and Average Pitch (AD2CP)','interpreter','latex','fontname', 'times','fontsize',14)
 newposit=get(gca,'position');
 oldposit=get(ax,'position');
 set(ax,'position',[oldposit(1) oldposit(2) newposit(3) oldposit(4)])

subplot(4,1,4)
 fill([STOKES.PLD1_TAB1.time';flipud(STOKES.PLD1_TAB1.time')],[STOKES.PLD1_TAB1.Heading_AD2CP_MIN';flipud(STOKES.PLD1_TAB1.Heading_AD2CP_MAX')],[.9 .9 .9],'linestyle','none');
 hold on
 plot(STOKES.PLD1_TAB1.time,STOKES.PLD1_TAB1.Heading_AD2CP_AVG,'k','linewidth',2,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
set(gca,'fontname','times','FontSize',12)

xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('$^o$','interpreter','latex','fontname', 'times','fontsize',14)

  hc = colorbar;
 set(hc,'visible','off')
  b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
ylim([b])
title('(d) Min, Max, and Average Heading (AD2CP)','interpreter','latex','fontname', 'times','fontsize',14)
%% Payload 2 & wind pressure, atmospheric T, RH
t= find(STOKES.PLD2_TAB1.TWS<0);
STOKES.PLD2_TAB1.TWS(t)=NaN;
t= find(STOKES.PLD2_TAB1.TWD<0);
STOKES.PLD2_TAB1.TWD(t)=NaN;
figure('Name','STOKES');
set(gcf,'color',[1 1 1])
set(gcf,'position',[1000 221.6667 807.6667 1.1163e+03])

subplot(4,1,1)
yyaxis left

plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.TWS,'k','linewidth',2)
hold on
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.TWS,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('m/s','interpreter','latex','fontname', 'times','fontsize',14)

set(gca,'fontname','times','FontSize',12)
yyaxis right
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.TWD,'or','color', [0.64 0.08 0.18],'linewidth',1,'MarkerFaceColor','w','MarkerSize',4)

datetick('keeplimits') 
ax = gca;
ax.YAxis(1).Color = 'k';
ax.YAxis(2).Color = [0.64 0.08 0.18];

set(gca,'fontname','times','FontSize',12)
ylabel('$^o$ from true North','interpreter','latex','fontname', 'times','fontsize',14)

 title('(a) VAISALA Wind Speed (m/s) and direction ($^o$ from true North)','interpreter','latex','fontname', 'times','fontsize',14)
subplot(4,1,2)

t=find(STOKES.PLD2_TAB1.Atmospheric_Temperature==0);
STOKES.PLD2_TAB1.Atmospheric_Temperature(t)=NaN;
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Atmospheric_Temperature,'k','linewidth',2)
hold on
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Atmospheric_Temperature,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')

set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('$^oC$','interpreter','latex','fontname', 'times','fontsize',14)
 title('(b) VAISALA Atmospheric Temperature','interpreter','latex','fontname', 'times','fontsize',14)
 newposit=get(gca,'position');
 oldposit=get(ax,'position');
 set(ax,'position',[oldposit(1) oldposit(2) newposit(3) oldposit(4)])

subplot(4,1,3)

plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Relative_Humidity,'k','linewidth',2)
hold on
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Relative_Humidity,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')

set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('$\%$','interpreter','latex','fontname', 'times','fontsize',14)
 title('(c) Vaisala Relative Humidity','interpreter','latex','fontname', 'times','fontsize',14)
subplot(4,1,4)

plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Atmospheric_Pressure,'k','linewidth',2)
hold on
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Atmospheric_Pressure,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')

set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('$hPa$','interpreter','latex','fontname', 'times','fontsize',14)
 title('(d) Vaisala Atmospheric Pressure','interpreter','latex','fontname', 'times','fontsize',14)


%% ADCP, Tchain, Winds
figure('Name','STOKES');
set(gcf,'color',[1 1 1])
set(gcf,'position',[1000 221.6667 807.6667 1.1163e+03])

subplot(4,1,1)
yyaxis left
aaa = get(gca,'position');
set(gca,'position',[aaa(1) aaa(2) 0.7024 aaa(4)])

plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.TWS,'k','linewidth',2)
hold on
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.TWS,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
datetick('keeplimits') 
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('m/s','interpreter','latex','fontname', 'times','fontsize',14)

set(gca,'fontname','times','FontSize',12)
  hc = colorbar;
 set(hc,'visible','off')
yyaxis right
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.TWD,'or','color', [0.64 0.08 0.18],'linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
aaa = get(gca,'position');
set(gca,'position',[aaa(1) aaa(2) 0.7024 aaa(4)])

datetick('keeplimits') 
ax = gca;
ax.YAxis(1).Color = 'k';
ax.YAxis(2).Color = [0.64 0.08 0.18];

set(gca,'fontname','times','FontSize',12)
ylabel('$^o$ from true North','interpreter','latex','fontname', 'times','fontsize',14)

 title('(a) Wind Speed (m/s) and direction ($^o$ from true North)','interpreter','latex','fontname', 'times','fontsize',14)

subplot(4,1,2)
pcolor(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.tchn_z,STOKES.PLD2_TAB1.tchn_temp);shading flat
map=flipud(cbrewer('div','Spectral',60));
colormap(map);
hc  = colorbar;
title(hc,'$T(^oC)$','interpreter','latex','fontname', 'times','fontsize',12)
xlim([a])
set(gca,'TickDir','out');
datetick('keeplimits') 
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('depth (m)','interpreter','latex','fontname', 'times','fontsize',14)
ylim([-100 0])
 title('(b) Temperature','interpreter','latex','fontname', 'times','fontsize',14)
  newposit=get(gca,'position');
 oldposit=get(ax,'position');
 set(ax,'position',[oldposit(1) oldposit(2) newposit(3) oldposit(4)])

 subplot(4,1,3)
% [~,h] = contourf(repmat(STOKES.PLD2_TAB2.time,[50 1]),STOKES.PLD2_TAB2.z,STOKES.PLD2_TAB2.current_north,100);
% set(h,'linestyle','none','LevelList',[-0.5:0.01:0.5])
pcolor(repmat(STOKES.PLD2_TAB2.time,[50 1]),STOKES.PLD2_TAB2.z,STOKES.PLD2_TAB2.current_north);shading flat

map=flipud(cbrewer('div','Spectral',60));
colormap(map);
caxis([-0.5 0.5])
hc  = colorbar;
title(hc,'m/s','interpreter','latex','fontname', 'times','fontsize',12)
set(gca,'TickDir','out');
xlim([a])
datetick('keeplimits') 
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('depth (m)','interpreter','latex','fontname', 'times','fontsize',14)
ylim([-100 0])
 title('(c) North Current','interpreter','latex','fontname', 'times','fontsize',14)
 

subplot(4,1,4)
% [~,h] = contourf(repmat(STOKES.PLD2_TAB2.time,[50 1]),STOKES.PLD2_TAB2.z,STOKES.PLD2_TAB2.current_east,100);
% set(h,'linestyle','none','LevelList',[-0.5:0.01:0.5])
pcolor(repmat(STOKES.PLD2_TAB2.time,[50 1]),STOKES.PLD2_TAB2.z,STOKES.PLD2_TAB2.current_east);shading flat
map=flipud(cbrewer('div','Spectral',60));
colormap(map);
caxis([-0.5 0.5])
hc  = colorbar;
title(hc,'m/s','interpreter','latex','fontname', 'times','fontsize',12)
set(gca,'TickDir','out');
xlim([a])
datetick('keeplimits') 
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('depth (m)','interpreter','latex','fontname', 'times','fontsize',14)
ylim([-100 0])
 title('(d) East Current','interpreter','latex','fontname', 'times','fontsize',14)


%% wave spectra
figure('Name','STOKES');
set(gcf,'color',[1 1 1])
set(gcf,'position',[1000 221.6667 807.6667 1.1163e+03])
subplot(3,1,1)
t=find(STOKES.PLD2_TAB1.Hs_fft==0 | STOKES.PLD2_TAB1.Hs_fft<0);
STOKES.PLD2_TAB1.Hs_fft(t)=NaN;
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Hs_fft,'k','linewidth',2)
hold on
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.Hs_fft,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('m','interpreter','latex','fontname', 'times','fontsize',14)
 title('(a) Significant Wave Height $H_s$','interpreter','latex','fontname', 'times','fontsize',14)
 hc = colorbar;
set(hc,'visible','off')
subplot(3,1,2)
% [~,h] = contourf(repmat(STOKES.PLD2_TAB2.time,[50 1]),STOKES.PLD2_TAB2.z,STOKES.PLD2_TAB2.current_north,100);
% set(h,'linestyle','none','LevelList',[-0.5:0.01:0.5])

 pcolor(STOKES.PLD2_TAB3.time,STOKES.PLD2_TAB3.freq,real(log10(STOKES.PLD2_TAB3.Szz)));shading flat
map=flipud(cbrewer('div','Spectral',60));
colormap(map);
hc  = colorbar;
title(hc,'$log10(S_{\eta\eta})$','interpreter','latex','fontname', 'times','fontsize',12)
set(gca,'yscale','log')
xlim([a])
caxis([-4 1])

set(gca,'TickDir','out');
datetick('keeplimits') 
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('F (Hz)','interpreter','latex','fontname', 'times','fontsize',14)

 title('(b) $S_{\eta\eta}$','interpreter','latex','fontname', 'times','fontsize',14)
subplot(3,1,3)
pcolor(STOKES.PLD2_TAB3.time,STOKES.PLD2_TAB3.freq,(STOKES.PLD2_TAB3.theta));shading flat
map=flipud(cbrewer('div','Spectral',60));
colormap(map);
hc  = colorbar;
title(hc,'$^o$','interpreter','latex','fontname', 'times','fontsize',12)
set(gca,'yscale','log')
xlim([a])
caxis([0 360])
set(gca,'TickDir','out');
datetick('keeplimits') 
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('F (Hz)','interpreter','latex','fontname', 'times','fontsize',14)

 title('(c) Direction, coming from ($^o$)','interpreter','latex','fontname', 'times','fontsize',14)


%% CTDs

figure('Name','STOKES');
set(gcf,'color',[1 1 1])
set(gcf,'position',[1000 221.6667 807.6667 1.1163e+03])
subplot(3,1,1)
t=find(STOKES.PLD2_TAB1.uctd_dens==0);
STOKES.PLD2_TAB1.uctd_dens(t)=NaN;
h1 = plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.uctd_dens,'k','linewidth',2)
hold on
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.uctd_dens,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('$kg/m^3$','interpreter','latex','fontname', 'times','fontsize',14)
 title('(a) FLOAT CTD Density','interpreter','latex','fontname', 'times','fontsize',14)
 hc = colorbar;
set(hc,'visible','off')
subplot(3,1,2)
t=find(STOKES.PLD2_TAB1.uctd_dens==0);
STOKES.PLD2_TAB1.uctd_temp(t)=NaN;
h1 = plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.uctd_temp,'k','linewidth',2)
hold on
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.uctd_temp,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('$^oC$','interpreter','latex','fontname', 'times','fontsize',14)
 title('(b) FLOAT CTD Temperature','interpreter','latex','fontname', 'times','fontsize',14)
 hc = colorbar;
set(hc,'visible','off')
subplot(3,1,3)
t=find(STOKES.PLD2_TAB1.uctd_sali==0);
STOKES.PLD2_TAB1.uctd_sali(t)=NaN;
h1 = plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.uctd_sali,'k','linewidth',2)
hold on
plot(STOKES.PLD2_TAB1.time,STOKES.PLD2_TAB1.uctd_sali,'ok','linewidth',1,'MarkerFaceColor','w','MarkerSize',4)
a=xlim;
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('$ppt$','interpreter','latex','fontname', 'times','fontsize',14)
 title('(c) FLOAT CTD Salinity','interpreter','latex','fontname', 'times','fontsize',14)
 hc = colorbar;
set(hc,'visible','off')

%% Profiling CTD
figure('Name','STOKES');
set(gcf,'color',[1 1 1])
set(gcf,'position',[1000 221.6667 807.6667 1.1163e+03])
subplot(3,1,1)
scatter(STOKES.PLD2_TAB4.time,STOKES.PLD2_TAB4.wctd_pressure,20,STOKES.PLD2_TAB4.wctd_temperature,'filled')
hc  = colorbar;
title(hc,'$T(^oC)$','interpreter','latex','fontname', 'times','fontsize',12)
xlim([a])
set(gca,'TickDir','out');
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('Pressure','interpreter','latex','fontname', 'times','fontsize',14)
 title('(a) Profiling Concerto Temperature','interpreter','latex','fontname', 'times','fontsize',14)

subplot(3,1,2)
scatter(STOKES.PLD2_TAB4.time,STOKES.PLD2_TAB4.wctd_pressure,20,STOKES.PLD2_TAB4.wctd_conductivity,'filled')
hc  = colorbar;
title(hc,'$S/m$','interpreter','latex','fontname', 'times','fontsize',12)
xlim([a])
set(gca,'TickDir','out');
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('Pressure','interpreter','latex','fontname', 'times','fontsize',14)
 title('(b) Profiling Concerto Conductivity','interpreter','latex','fontname', 'times','fontsize',14)

subplot(3,1,3)
scatter(STOKES.PLD2_TAB4.time,STOKES.PLD2_TAB4.wctd_pressure,20,STOKES.PLD2_TAB4.wctd_chl,'filled')
hc  = colorbar;
title(hc,'$g/m^3$','interpreter','latex','fontname', 'times','fontsize',12)
xlim([a])
set(gca,'TickDir','out');
b= ylim;
plot([now+datenum(0,0,0,8,0,0) now+datenum(0,0,0,8,0,0)],b,'--k','linewidth',1)
datetick('keeplimits')
set(gca,'fontname','times','FontSize',12)
xlabel('UTC time','interpreter','latex','fontname', 'times','fontsize',14)
ylabel('Pressure','interpreter','latex','fontname', 'times','fontsize',14)
 title('(c) Profiling Concerto Chl-a concentration','interpreter','latex','fontname', 'times','fontsize',14)
