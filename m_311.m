clear all;
clc;

%% loading

l1=load('ecg_normal_1.mat');
l2=load('ecg_normal_2.mat');
l3=load('ecg_normal_3.mat');

%% display
figure(1);
n=4;
m=1;
tmin=1;
tmax=6;

subplot(n,m,1);
[x,t]=windowECG(l1.ecg,l1.Fs,tmin,tmax);
plot(t,x);
grid on
title('ecg normal 1')
xlabel('Time(s)')
ylabel('Voltage(microV)')

subplot(n,m,2);
[x,t]=windowECG(l2.ecg,l2.Fs,tmin,tmax);
plot(t,x);
grid on
title('ecg normal 2')
xlabel('Time(s)')
ylabel('Voltage(microV)')

subplot(n,m,3);
[x,t]=windowECG(l3.ecg,l3.Fs,tmin,tmax);
plot(t,x);
grid on
title('ecg normal 3')
xlabel('Time(s)')
ylabel('Voltage(microV)')


%% function window
figure(2);
n=4;
m=1;
tmin=1;
tmax=15;

subplot(n,m,1);
[x,t]=windowECG(l1.ecg,l1.Fs,tmin,tmax);
plot(t,x);
grid on
title('ecg normal 1')
xlabel('Time(s)')
ylabel('Voltage(microV)')

subplot(n,m,2);
[x,t]=windowECG(l2.ecg,l2.Fs,tmin,tmax);
plot(t,x);
grid on
title('ecg normal 2')
xlabel('Time(s)')
ylabel('Voltage(microV)')

subplot(n,m,3);
[x,t]=windowECG(l3.ecg,l3.Fs,tmin,tmax);
plot(t,x);
grid on
title('ecg normal 3')
xlabel('Time(s)')
ylabel('Voltage(microV)')



%% freq display
figure(3);
n=2;
m=2;
nb=(tmax-tmin)*20;

subplot(n,m,1);
[x,t1]=windowECG(l1.ecg,l1.Fs,tmin,tmax);
[x,t]=pspectrumECG(x,l1.Fs,nb);
semilogy(t,x);
grid on
title('ecg normal 1 power spectrum')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')

subplot(n,m,2);
[x,t1]=windowECG(l2.ecg,l2.Fs,tmin,tmax);
[x,t]=pspectrumECG(x,l1.Fs,nb);
semilogy(t,x);
grid on
title('ecg normal 2 power spectrum')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')

subplot(n,m,3);
[x,t1]=windowECG(l3.ecg,l3.Fs,tmin,tmax);
[x,t]=pspectrumECG(x,l1.Fs,nb);
semilogy(t,x);
grid on
title('ecg normal 3 power spectrum')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')


