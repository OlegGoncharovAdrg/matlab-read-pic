clear; close all; clc;
grayImage = imread('1.jpg');
[rows, columns, numberOfColorChannels] = size(grayImage);

imshow(grayImage);
hold on;
lineSpacing = 40; % Whatever you want.
for row = 1 : lineSpacing : rows
    line([1, columns], [row, row], 'Color', 'black', 'LineWidth', 1);
end
for col = 1 : lineSpacing : columns
    line([col, col], [1, rows], 'Color', 'black', 'LineWidth', 1);
end

saveas(gcf,'2.jpg')