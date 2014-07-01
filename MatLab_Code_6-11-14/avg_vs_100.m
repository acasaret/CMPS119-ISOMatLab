% Function will return a 3d matrix containing the x y coordinates for
% the image, as well as the average RGB values for each pixel.
% This is done for the given ISO set.

%Load in 5 images and set size of each image
function [avg_RGB_matrix] = avg_vs_100(A, B, C, D, E, W, H)
    rowlength=W;
    collength=H;
    pixelcount=rowlength*collength;
    currentpixel = 0;
    average_RGB = [rowlength, collength, 3];
   
    % Go through images pixel by pixel and obtain the average RGB values
    fprintf('Obtaining average RGB matrix...\n')
    fprintf('Progress (done at 1.00): ....')
    for i = 1:rowlength
        for j = 1:collength 
            % Print out progress
            currentpixel = currentpixel+1;
            progress = currentpixel/pixelcount;
            fprintf('\b\b\b\b%.2f',progress)
			% load in 4 pixels at location (i,j), 
			% one for each image A, B, C, and D, saving as RGB vectors
            v1=double(A(i,j,:));
            v2=double(B(i,j,:));
            v3=double(C(i,j,:));
            v4=double(D(i,j,:));
            v5=double(E(i,j,:));
            % Average the RGB values for this pixel
            for k=1:3
                if(k==1)
                    r = v1(k)+v2(k)+v3(k)+v4(k)+v5(k);
                    average_RGB (i, j, k) = r/5;
                end
                if(k==2)
                    g = v1(k)+v2(k)+v3(k)+v4(k)+v5(k);
                    average_RGB (i, j, k) = g/5;
                end
                if(k==3)
                    b = v1(k)+v2(k)+v3(k)+v4(k)+v5(k);
                    average_RGB (i, j, k) = b/5;
                end
            end
        end 
    end
    fprintf('\nObtained average RGB matrix\n')
    
    % Return the average RBG values for this ISO
    avg_RGB_matrix = average_RGB;
    
end