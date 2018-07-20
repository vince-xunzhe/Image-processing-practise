f=imread('b.JPG');
g=rgb2gray(f);
imhist(g)
[m, n]=size(g);
hist=imhist(g);
p=hist/(m*n);
p2=p(1:250);
z=1:250;
% 利用cftool 拟合工具箱（p2 vs.z）做Gaussian拟合，得到
% a=140; b=35; c=0.01154
p3=(70:210);

p4=(10:30);
p5=(220:255);


for i=1:m;
    for j=1:n;
         if(g(i,j)<30)
            g(i,j)=0;
         end
         if(g(i,j)>220)
            g(i,j)=255;
         
         else g(i,j)=255/190*(g(i,j)-30);
         end
    end
end
imshow(g);
imhist(g);


