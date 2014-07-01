% Function to determine the average angle change per pixel among one
% ISO set. 

%Load in 5 images and set size of each image
function [avg_normal_shift] = avg_per_ISO(A, B, C, D, E, W, H)
    rowlength=W;
    collength=H;
    pixelcount=rowlength*collength;
    currentpixel = 0;
    total_change=0;
   
   % Go through, pixel by pixel, and calculate the average amount of angle
   % change.
   fprintf('Starting ISO comparison...\n')
   fprintf('Progress (done at 1.00): ....')
   for i = 1:rowlength;
       for j = 1:collength;
            %print out progress
            currentpixel = currentpixel+1;
            progress = currentpixel/pixelcount;
            fprintf('\b\b\b\b%.2f',progress)
			% load in 4 pixels at location (i,j), 
			% one for each image A, B, C, D and E, saving as RGB vectors
            v1=double(A(i,j,:));
            v2=double(B(i,j,:));
            v3=double(C(i,j,:));
            v4=double(D(i,j,:));
            v5=double(E(i,j,:));

			% find angle change comparing image 1 to images 2-4 using
			% dot product function
            dp1 = dp(v1,v2);
            dp2 = dp(v1,v3);
            dp3 = dp(v1,v4);
            dp4 = dp(v1,v5);
			% Average the amount of angle change for this pixel, and
			% add to total angle change, keeping a running total.
            tot_change_pxl = dp1+dp2+dp3+dp4;
            avg_change_pxl = tot_change_pxl/4;
            total_change = total_change + avg_change_pxl;
        end 
    end
    % Obtain final result by averaging the total_change, dividing by number of pixels
    avg_normal_shift = total_change/pixelcount;
    fprintf('\nISO comparison complete.\n')
    fprintf('Average normal change: %.2f\n', avg_normal_shift)
end