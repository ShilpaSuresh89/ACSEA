%THIS IS A DEMO FOR IMAGE ENHANCEMENT USING ACSCE ALGORITHM 


clc;
close all;
clear all;
%% Automatically read images from a folder in a loop

i=imread('2.png');
image = im2double(i);

figure
imshow(image);
title('Truecolor Composite (Un-enhanced)')
text(size(image,2), size(image,1) + 15,...
  'Image courtesy of Space Imaging, LLC',...
  'FontSize', 7, 'HorizontalAlignment', 'right')

[enh,bestnest,fmax,time]=ACS_enh(image,50);

% Display output
figure();
imshow(enh,[]);