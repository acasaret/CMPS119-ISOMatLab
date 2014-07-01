% Function will take in 2 RGB matrices and get the average angle change
% per pixel.

%Load in 2 matrices and set size of each image
function [avg_change] = compare( A, B, W, H)
    rowlength=W;
    collength=H;
    pixelcount=rowlength*collength;
    currentpixel = 0;
    total_angle_change=0;
    
    fprintf('Comparing matrices...\n')
    fprintf('Progress (done at 1.00): ....')
    for i = 1: rowlength
        for j = 1: collength
            % Print out progress 
            currentpixel = currentpixel+1;
            progress = currentpixel/pixelcount;
            fprintf('\b\b\b\b%.2f',progress)
            
            v1=double(A(i,j,:));%the RGB vector at pixel (i,j) for pic A
            v2=double(B(i,j,:));%the RGB vector at pixel (i,j) for pic B
			% Get angle change for this pixel
            angle_change = dp(v1,v2);
            total_angle_change = total_angle_change + angle_change;

        end
    end
	% Average the angle change over the total matrices
    avg_change = total_angle_change/pixelcount;
    
    fprintf('Comparison complete.\n')
    fprintf('Average angle difference: %.2f\n', avg_change)
end