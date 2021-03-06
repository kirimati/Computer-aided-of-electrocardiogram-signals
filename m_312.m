clear all;
close all;
clc;

%% loading

l1=load('ecg_AF.mat');
l2=load('ecg_VF.mat');
l3=load('ecg_SSS.mat');
l4=load('ecg_PVC.mat');

%% display
n=4;
m=1;
tmin=1;
tmax=6;

figure
[x,t]=windowECG(l1.ecg,l1.Fs,tmin,tmax);
plot(t,x);
grid on
title('ecg AF')
xlabel('Time(s)')
ylabel('Voltage')

figure
[x,t]=windowECG(l2.ecg,l2.Fs,tmin,tmax);
plot(t,x);
grid on
title('ecg VF')
xlabel('Time(s)')
ylabel('Voltage')

figure
[x,t]=windowECG(l3.ecg,l3.Fs,tmin,tmax);
plot(t,x);
grid on
title('ecg SSS')
xlabel('Time(s)')
ylabel('Voltage')

figure
[x,t]=windowECG(l4.ecg,l4.Fs,tmin,tmax);
plot(t,x);
grid on
title('ecg PVC')
xlabel('Time(s)')
ylabel('Voltage')

