
clc;
clear;

dirs=dir('./aug/SegmentationClass/*.png');
for n=1:numel(dirs)
   strname=strcat('./aug/SegmentationClass/',dirs(n).name) ;
   
   image=imread(strname);
   
   [row,col]=size(image);
   %figure
   %imshow(a)
   b=zeros(row,col);

   for i=1:1:row
       for j=1:1:col
           %temp=int8(image(i,j))+1;
           %if(map(temp,1)==0 & map(temp,2)==0 & map(temp,3)==0)
           if(image(i,j)==0)
               b(i,j)=0;
           
           %elseif(map(temp,1)==0 & map(temp,2)==1 & map(temp,3)==0)  %green-junban
           elseif(image(i,j)==1)
               b(i,j)=120;
           %elseif(map(temp,1)==0.5020 & map(temp,2)==0 & map(temp,3)==0)
           
           else
               b(i,j)=255;
           end
       end
   end
   b=uint8(b);
   %figure
   %imshow(b);
   %dirs(n).name
   newname=strcat('./aug/SegmentationClass_vis/',dirs(n).name(1:end-4),'_vis.png'); %get prefix_name
   newname
   imwrite(b,newname,'png');
end



