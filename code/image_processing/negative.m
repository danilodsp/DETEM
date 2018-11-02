%%
% Unifap / UFRN
% Author: Danilo Pena
% Description: Just a test.
% source: https://www.mathworks.com/help/images/ref/imcomplement.html

test = imread('lena_color.jpg');
test2 = imcomplement(test);
imshowpair(test, test2, 'montage')
