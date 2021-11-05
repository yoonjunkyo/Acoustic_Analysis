clear all
close all
clc

[y,Fs] = audioread('example.wav');

size(y)
soundsc(y,Fs)
plot(y(:,1))

N=264600;
fftzero(y(:,1),N,1/Fs);