%Ce programme permet d'inserer une marque en utilisant le technique 
%basée sur le Bit le Moins Significatif
clc;
close all;
clear all;
I=imread('imag/Im1.png'); 
[M,N]=size(I);
% I=rgb2gray(I);  % Convertir l'image en couleue en niveau de gris
W=imread('qr1.png');
W1=imread('imag/cle.png');
RedimTatouage=imresize(W1, [M,N]);
RedimTatouageBinaire=im2bw(RedimTatouage);

% Inserer l'image binaire
ImageTatouee=bitset(I, 1, RedimTatouageBinaire);

% Affichage 
figure;
subplot(1,2,1);
imshow(RedimTatouageBinaire);
title('Marque traitée');
subplot(1,2,2);
imshow(ImageTatouee);
title('Image tatouée');
