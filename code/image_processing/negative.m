%%
% Unifap / UFRN
% Author: Danilo Pena
% Description: Just a test.
% source: https://www.mathworks.com/help/images/ref/imcomplement.html

test = imread('lena.jpg');
test2 = incomplement(test);
imshowpair(test, test2, 'montage')
