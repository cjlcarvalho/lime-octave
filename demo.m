
clc;close all;clear all;addpath(genpath('./'));
%%
filename = 'test.jpg';
L = (im2double(imread(filename)));

post = false;

para.lambda = 0.15;
para.sigma = 2;
para.gamma = 0.8;
tic
[I, T_ini,T_ref] = LIME(L,para);
toc

figure(1);imshow(L);title('Input');
figure(2);imshow(I);title('LIME');

imwrite(I, 'lime_result.jpg');
