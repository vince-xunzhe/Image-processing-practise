function color=color_coding(f)
I=f;
[m,n] = size(I);
J = double(I);
L=255;

for i = 1:m
    for j = 1:n
        
        if J(i,j) < L/16
            R(i,j) = 0;
            G(i,j) = 0;
            B(i,j) = 0;
            
        elseif J(i,j) < L/8
            R(i,j) = 26;
            G(i,j) = 16;
            B(i,j) = 63;
            
        elseif J(i,j) < 3*L/16
            R(i,j) = 45;
            G(i,j) = 24;
            B(i,j) = 84;
            
        elseif J(i,j) < L/4
            R(i,j) = 70;
            G(i,j) = 29;
            B(i,j) = 103;
            
        elseif J(i,j) < 5*L/16
            R(i,j) = 98;
            G(i,j) = 33;
            B(i,j) = 119;
            
        elseif J(i,j) < 3*L/8
            R(i,j) = 128;
            G(i,j) = 37;
            B(i,j) = 132;
            
        elseif J(i,j) < 7*L/16
            R(i,j) = 160;
            G(i,j) = 41;
            B(i,j) = 140;
            
        elseif J(i,j) < L/2
            R(i,j) = 195;
            G(i,j) = 48;
            B(i,j) = 141;
            
        elseif J(i,j) < 9*L/16
            R(i,j) = 223;
            G(i,j) = 65;
            B(i,j) = 136;
            
        elseif J(i,j) < 5*L/8
            R(i,j) = 244;
            G(i,j) = 93;
            B(i,j) = 120;
            
        elseif J(i,j) < 11*L/16
            R(i,j) = 254;
            G(i,j) = 126;
            B(i,j) = 104;
            
        elseif J(i,j) < 3*L/4
            R(i,j) = 255;
            G(i,j) = 159;
            B(i,j) = 96;
            
        elseif J(i,j) < 13*L/16
            R(i,j) = 253;
            G(i,j) = 190;
            B(i,j) = 104;
            
        elseif J(i,j) < 7*L/8
            R(i,j) = 246;
            G(i,j) = 218;
            B(i,j) = 133;
            
        elseif J(i,j) < 15*L/16
            R(i,j) = 246;
            G(i,j) = 240;
            B(i,j) = 188;
            
        else 
            R(i,j) = 255;
            G(i,j) = 255;
            B(i,j) = 255;
            
        end
    end
end

new = repmat(I,[1 1 3]);

for i = 1:m
    for j = 1:n
        new(i,j,1) = R(i,j);
        new(i,j,2) = G(i,j);
        new(i,j,3) = B(i,j);
    end
end
imshow(new);

color=new;

end






