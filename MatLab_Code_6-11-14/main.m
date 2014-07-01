%Main MatLab code for CS119 project: Team D
%Aaron Jauregui, Kevin Neal, Anthony Casaretto, April Mao

%Summary:
%1) Convert images to pixel matrix(width x height x 3[RGB])
%2) Calculate the consistency of each ISO, finding the average
%   change per pixel for each ISO set and plotting all 8 averages.
%3) Obtain a pixel matrix for each ISO, representing the average
%   angle at each pixel.
%4) Compare each of these matrices against the ISO100 matrix and
%   average the results for all pixels; plot those 8 averages.

%%%USED/INCLUDED_FUNCTIONS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% avg_vs_100.m
% avg_per_ISO.m
% dp.m
% compare.m
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%IMPORTANT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%Image ISO100_1 was spoiled - somehow there was an obvious change in 
%normal map colouration not displayed by any other image - so to balance
%this out we threw out the first image in each ISO set. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Global Parameters - Change these to account for different
% image size
W = 3000; % Image width
H = 3000; % Image height

%Load in all of the normal maps for analysis
ISO100_1 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO100_1.png');
ISO100_2 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO100_2.png');
ISO100_3 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO100_3.png');
ISO100_4 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO100_4.png');
ISO100_5 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO100_5.png');

ISO200_1 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO200_1.png');
ISO200_2 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO200_2.png');
ISO200_3 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO200_3.png');
ISO200_4 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO200_4.png');
ISO200_5 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO200_5.png');

ISO400_1 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO400_1.png');
ISO400_2 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO400_2.png');
ISO400_3 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO400_3.png');
ISO400_4 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO400_4.png');
ISO400_5 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO400_5.png');

ISO800_1 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO800_1.png');
ISO800_2 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO800_2.png');
ISO800_3 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO800_3.png');
ISO800_4 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO800_4.png');
ISO800_5 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO800_5.png');

ISO1600_1 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO1600_1.png');
ISO1600_2 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO1600_2.png');
ISO1600_3 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO1600_3.png');
ISO1600_4 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO1600_4.png');
ISO1600_5 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO1600_5.png');

ISO3200_1 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO3200_1.png');
ISO3200_2 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO3200_2.png');
ISO3200_3 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO3200_3.png');
ISO3200_4 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO3200_4.png');
ISO3200_5 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO3200_5.png');

ISO6400_1 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO6400_1.png');
ISO6400_2 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO6400_2.png');
ISO6400_3 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO6400_3.png');
ISO6400_4 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO6400_4.png');
ISO6400_5 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO6400_5.png');

ISO12800_1 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO12800_1.png');
ISO12800_2 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO12800_2.png');
ISO12800_3 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO12800_3.png');
ISO12800_4 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO12800_4.png');
ISO12800_5 = imread('C:\Users\davis\Desktop\cropped_normals_HIGHRES/ISO12800_5.png');

% Find consistancy of normals for each ISO set using avg_per_ISO function
mean100 = real(avg_per_ISO(ISO100_1, ISO100_2, ISO100_3, ISO100_4, ISO100_5, W, H));
mean200 = real(avg_per_ISO(ISO200_1, ISO200_2, ISO200_3, ISO200_4, ISO200_5, W, H));
mean400 = real(avg_per_ISO(ISO400_1, ISO400_2, ISO400_3, ISO400_4, ISO400_5, W, H));
mean800 = real(avg_per_ISO(ISO800_1, ISO800_2, ISO800_3, ISO800_4, ISO800_5, W, H));
mean1600 = real(avg_per_ISO(ISO1600_1, ISO1600_2, ISO1600_3, ISO1600_4, ISO1600_5, W, H));
mean3200 = real(avg_per_ISO(ISO3200_1, ISO3200_2, ISO3200_3, ISO3200_4, ISO3200_5, W, H));
mean6400 = real(avg_per_ISO(ISO6400_1, ISO6400_2, ISO6400_3, ISO6400_4, ISO6400_5, W, H));
mean12800 = real(avg_per_ISO(ISO12800_1, ISO12800_2, ISO12800_3, ISO12800_4, ISO12800_5, W, H));
means = [mean100, mean200, mean400, mean800, mean1600, mean3200, mean6400, mean12800];

% Set parameters for this plot and plot data
ISO = [100, 200, 400, 800, 1600, 3200, 6400, 12800];
test=[1, 2, 3, 4, 5, 6, 7, 8];

clear ctf
figure();
plot(test, means, 'b-')
xlabel('ISO increasing order')
ylabel('Average ERROR () by ISO')

% Get average RBG matrix for each ISO set using avg_vs_100 function
% Then call compare function on each RGB matrix to find average angle change per pixel,
% comparing all ISOs against ISO100 matrix. Clear matrices as needed to
% free up memory
RGB_100 = real(avg_vs_100(ISO100_1, ISO100_2, ISO100_3, ISO100_4, ISO100_5, W, H));
comp100 = 0.0;                       % No need to actually compare ISO100 against itself
RGB_200 = real(avg_vs_100(ISO200_1, ISO200_2, ISO200_3, ISO200_4, ISO200_5, W, H));
comp200 = compare(RGB_100, RGB_200, W, H);
clear RGB_200;
RGB_400 = real(avg_vs_100(ISO400_1, ISO400_2, ISO400_3, ISO400_4, ISO400_5, W, H));
comp400 = compare(RGB_100, RGB_400, W, H);
clear RGB_400;
RGB_800 = real(avg_vs_100(ISO800_1, ISO800_2, ISO800_3, ISO800_4, ISO800_5, W, H));
comp800 = compare(RGB_100, RGB_800, W, H);
clear RGB_800;
RGB_1600 = real(avg_vs_100(ISO1600_1, ISO1600_2, ISO1600_3, ISO1600_4, ISO1600_5, W, H));
comp1600 = compare(RGB_100, RGB_1600, W, H);
clear RGB_1600;
RGB_3200 = real(avg_vs_100(ISO3200_1, ISO3200_2, ISO3200_3, ISO3200_4, ISO3200_5, W, H));
comp3200 = compare(RGB_100, RGB_3200, W, H);
clear RGB_3200;
RGB_6400 = real(avg_vs_100(ISO6400_1, ISO6400_2, ISO6400_3, ISO6400_4, ISO6400_5, W, H));
comp6400 = compare(RGB_100, RGB_6400, W, H);
clear RGB_6400;
RGB_12800 = real(avg_vs_100(ISO12800_1, ISO12800_2, ISO12800_3, ISO12800_4, ISO12800_5, W, H));
comp12800 = compare(RGB_100, RGB_12800, W, H);
clear RGB_12800;
clear RGB_100;

% Set parameters for this plot and plot data
comps = [comp100, comp200, comp400, comp800, comp1600, comp3200, comp6400, comp12800 ];
test=[1, 2, 3, 4, 5, 6, 7, 8];

figure();
plot(test, comps, 'b-')
xlabel('ISO increasing order')
ylabel('Average ERROR() comparing ISO')
% close waitbar
close(h)