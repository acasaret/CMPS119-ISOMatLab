% Dot product function that will return the angle difference between
% 2 3d vectors
function dotproduct = dp(v1, v2)
    mag1=0;
    mag2=0;
    dotp=0;
    match=true;
	% check if values are exactly the same
    for i=1:3
        if v1(i) ~= v2(i)
            match = false;
        end
    end
	% if they are the same we can just return 0
    if match
        dotproduct=0;
	% otherwise we need to calculate the angle
    else 
       for i=1:3
			mag1 = mag1 + ((v1(i)/1)^2);
            mag2 = mag2 + ((v2(i)/1)^2);        
            dotp = dotp + (v1(i)*v2(i));
       end
       mag1 = (mag1^(1/2));
       mag2 = (mag2^(1/2));
       dpom=dotp/(mag1*mag2);
       answer=(acosd(dpom));
       dotproduct=answer;
    end
end