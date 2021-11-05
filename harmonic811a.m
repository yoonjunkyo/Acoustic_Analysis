clear all
close all

#matrix���� > ���ȣ
rho = [998 1026 790 950 13600 870 1260 1340 1570 1790 2070]; #density
c = [1481 1500 1150 1540 1450 1250 1980 1460 1470 1540 1730]; #speed
Z=(rho.*c)*1e6; #impedance

rho1=[rho(1) rho(2) rho(5) rho(6)];
B=[2.18 2.28 25.3 1.07]*1e9; #Bulk modulus
c_cal=sqrt(B./rho1) #Bulk modulus�� ����� c_cal

#c�� c_cal ��
plot(c_cal,'ro')
hold on;
plot([c(1) c(2) c(5) c(6)],'k*')
#�ڷ��� ��ť���� Turpentir ����x

