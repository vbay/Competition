
%粗避障D1阶段程序代码
clear all;
clc;
I = imread('C:\Users\Administrator\Desktop\A\附件3 距2400m处的数字高程图.tif');
p = I;                % rgb 转为灰度图
[y,x]=size(p);                 % 取出图像大小
[X,Y]=meshgrid(1:x,1:y); % 生成网格坐标
pp=double(p);              % uint8 转换为 double
mesh(X,Y,pp);% 画图
colormap gray; % 选为灰度
i=1;
m=0;
n=0;
fi=0;
minv=9;
minallv=9;
while i<2201                %大循环，判断行是否超出范围
   i=i+1;
   m=0;
while m<2201          %小循环，判断列是否超出范围
for m=m+1;
   c=pp(i:i+99,m:m+99);
   v=std2(c);
   solv=v;
   if solv<minv
       fi=fi+1;
     if fi<=1
         newim=[i,m];
          solim=newim;
     end
  if fi>1
        z=v;
           k=n;
           newim=[i,m];
           solim=newim;
           %bestim=solim;
     solim=[bestim;solim];
  end
   bestim=solim;
   minv=solv;
   minallv=[minallv;minv];
   end
end
end
   end
bestminallv3=minallv(fi-2:fi)  %输出三个相对较小方差
bestallim3=bestim(fi-2:fi,1:2)  %输出三个相对最优的坐标
minallv;
bestminallv=minallv(fi)       %输出全局唯一最小方差
bestaallim=bestim(fi,1:2)     %输出全局唯一最优位置坐标
od=[1150,1150];
disd1=sqrt((bestaallim(1,1)-oc(1,1))^2+(bestaallim(1,2)-oc(1,2))^2) %输出水平距离disd1


粗避障E1阶段程序代码
clear all;
clc;
I = imread('C:\Users\Administrator\Desktop\A\附件3 距2400m处的数字高程图.tif');
p = I;                % rgb 转为灰度图
[y,x]=size(p);                 % 取出图像大小
[X,Y]=meshgrid(1:x,1:y); % 生成网格坐标
pp=double(p);              % uint8 转换为 double
mesh(X,Y,pp);% 画图
colormap gray; % 选为灰度
i=1;
m=0;
n=0;
fi=0;
minv=9;
minallv=9;
while i<1000               %大循环，判断行是否超出范围
   i=i+1;
   m=0;
while m<1000          %小循环，判断列是否超出范围
for m=m+1;
   c=pp(i:i+99,m:m+99);
   v=std2(c);
   solv=v;
   if solv<minv
       fi=fi+1;
     if fi<=1
         newim=[i,m];
          solim=newim;
     end
  if fi>1
        z=v;
           k=n;
           newim=[i,m];
           solim=newim;
           %bestim=solim;
     solim=[bestim;solim];
  end
   bestim=solim;
   minv=solv;
   minallv=[minallv;minv];
   end
end
end
   end
bestminallv3=minallv(fi-2:fi)  %输出三个相对较小方差
bestallim3=bestim(fi-2:fi,1:2)  %输出三个相对最优的坐标
minallv;
bestminallv=minallv(fi)       %输出全局唯一最小方差
bestaallim=bestim(fi,1:2)     %输出全局唯一最优位置坐标
oe=[500,500];
dise1=sqrt((bestaallim(1,1)-oe(1,1))^2+(bestaallim(1,2)-oe(1,2))^2)
%输出水平距离dise1
