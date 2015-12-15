%% Creates a tree and puts ornamets on it
% In a way that will not make you cringe.
% What will make you cringe is that if you remove the diffusion from the
% tree function there will be hell. 
% Argument: Number of ornaments available
function christmasSpirit(orn_num)
[X,Y,Z] = makeTree;

% Don't put ornaments on the tree trunk and on the very top. That's crazy!
% Create a seperate vector and get the allowed coordinates there.
A = Z(Z >= 3.5 & Z <= 23);

% For every ornament do the following
for cnt=1:orn_num
    % Divide the available space by the ornament count and multiply by the
    % loop count to refer to the appropriate position.
    height=A(end-round((length(A)/orn_num)*(cnt-1)));
    
    % Get the index of the current height value in Z
    in = find(Z == height);
    
    % Get the corresponding value on X and Y
    lat = X(in);
    lon = Y(in);
    
    % Smaller ornaments go at the top of the tree. Bigger at the bottom.    
    if height > 15
        scale=0.5;
    else
        scale=0.8;
    end
    
    % Alternate the colors on every count
    if mod(cnt,2) == 0
        color='red';
    else
        color='white';
    end
    
    % Make the ornament
    drawBall(lat, lon, height, color, scale);
end

