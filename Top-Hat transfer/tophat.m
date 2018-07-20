clear;clc;
f=imread('csu.jpg');
g=rgb2gray(f);
Frw=zeros(128,128);
Frb=zeros(128,128);
Fdw=zeros(200,200);
Fdb=zeros(200,200);
maxWTH_i=0;
maxBTH_i=0;
maxDBTH_i=0
maxDWTH_i=0;
se=strel('disk',3);
j=[0 1 0;1 1 1;0 1 0];
B=padarray(j,[3,3]);

for i=1:13
  Bi=imdilate(j,se,'full');
  disp(Bi);
  open=imopen(g,Bi);
  close=imclose(g,Bi);
  WTH_i=imsubtract(g,open);
  BTH_i=imsubtract(close,g);
  
  Bi_1=imopen(Bi,se);
  open_1=imopen(g,Bi_1);
  close_1=imclose(g,Bi_1);
    
  WTH_i1=imsubtract(g,open_1);
  BTH_i1=imsubtract(close_1,g);
   
  DWTH_i=imsubtract(WTH_i1,WTH_i);
  DBTH_i=imsubtract(BTH_i1,BTH_i);
  
  T0=sum(WTH_i);
  arg_1=sum(T0)./(numel(WTH_i));
  T1=sum(BTH_i);
  arg_2=sum(T1)./(numel(BTH_i));
  T3=sum(DWTH_i);
  arg_3=sum(T3)./(numel(DWTH_i));
  T4=sum(DBTH_i);
  arg_4=sum(T4)./(numel(DBTH_i));
    if arg_1>maxWTH_i;
        maxWTH_i=arg_1;
        Frw=WTH_i;
    end   
    if arg_2>maxBTH_i;
        maxBTH_i=arg_2;
        Frb=BTH_i;
    end
    if arg_3>maxDWTH_i;
        maxDWTH_i=arg_3;
        Fdw=DWTH_i;
    end
    if arg_4>maxDBTH_i;
        maxDBTH_i=arg_4;
        Fdb=DBTH_i;
    end
end

Fen=g+Frw+Fdw-Frb-Fdb;
imshow(Fen)
 
 

