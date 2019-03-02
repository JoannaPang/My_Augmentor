%图像的水平翻转和垂直翻转
clear;clc

%file_path =  './data/JPEGImages/';% 图像文件夹路径
%new_file_path = './aug/JPEGImages/';

file_path =  './data/SegmentationClass/';% 图像文件夹路径 %##labels
new_file_path = './aug/SegmentationClass/';

%img_path_list = dir(strcat(file_path,'*.jpg'));%获取该文件夹中所有jpg格式的图像

img_path_list = dir(strcat(file_path,'*.png'));%获取该文件夹中所有jpg格式的图像  %##labels

img_num = length(img_path_list);%获取图像总数量

img_num
if img_num > 0 %有满足条件的图像
    for j = 1:img_num %逐一读取图像
        image_name = img_path_list(j).name(1:end-4);% 图像名
        
        image_name
        %image =  imread(strcat(file_path,image_name,'.jpg'));
        image =  imread(strcat(file_path,image_name,'.png')); %##labels

        imageBB = image;
        imageB = image;
        
%         for k=1:3
%             imageBB(:,:,k)=flipud(image(:,:,k));%上下翻转
%             imageB(:,:,k)=fliplr(image(:,:,k));%左右翻转
%         end
        
        
        imageBB(:,:,1)=flipud(image(:,:,1));%上下翻转  %##labels
        imageB(:,:,1)=fliplr(image(:,:,1));%左右翻转
        
%         subplot(1,3,1);
%         imshow(image);
%         title('yuan')
% 
%         subplot(1,3,2);
%         imshow(imageBB);
%         title('up-down')
% 
%         subplot(1,3,3);
%         imshow(imageB);
%         title('left-right')
%         
        
%         file_name1 = strcat(new_file_path,image_name,'.jpg');
%         imwrite(image,file_name1);
%         
%         new_file_name2 = strcat(new_file_path,image_name,'_2.jpg');
%         imwrite(imageBB,new_file_name2);
%         
%         new_file_name3 = strcat(new_file_path,image_name,'_3.jpg');
%         imwrite(imageB,new_file_name3);
        


        file_name1 = strcat(new_file_path,image_name,'.png'); %##labels
        imwrite(image,file_name1);
        
        new_file_name2 = strcat(new_file_path,image_name,'_2.png');
        imwrite(imageBB,new_file_name2);
        
        new_file_name3 = strcat(new_file_path,image_name,'_3.png');
        imwrite(imageB,new_file_name3);



        imageI1=rot90(image,1);%逆时针转90度
        imageI2=rot90(image,2);%逆时针转180度
        imageI3=rot90(image,3);%逆时针转270度
        
%         new_file_name4 = strcat(new_file_path,image_name,'_4.jpg');
%         imwrite(imageI1,new_file_name4);
%         
%         new_file_name5 = strcat(new_file_path,image_name,'_5.jpg');
%         imwrite(imageI2,new_file_name5);
%         
%         new_file_name6 = strcat(new_file_path,image_name,'_6.jpg');
%         imwrite(imageI3,new_file_name6);
        
        
        new_file_name4 = strcat(new_file_path,image_name,'_4.png');  %##labels
        imwrite(imageI1,new_file_name4);
        
        new_file_name5 = strcat(new_file_path,image_name,'_5.png');
        imwrite(imageI2,new_file_name5);
        
        new_file_name6 = strcat(new_file_path,image_name,'_6.png');
        imwrite(imageI3,new_file_name6);
        
        
        
    end
end


% 
% AA=imread('test/label24/2018_010001.png');%文件名是你自己的哦
% 
% 
% figure;
% 
% subplot(1,3,1);
% imshow(AA);
% title('yuan')
% 
% subplot(1,3,2);
% imshow(BB);
% title('up-down')
% 
% subplot(1,3,3);
% imshow(B);
% title('left-right')
% 
% 
% I=imread('test/label24/2018_010001.png');
% I1=rot90(I,1);%逆时针转90度
% I2=rot90(I,2);%逆时针转180度
% I3=rot90(I,3);%逆时针转270度
% figure
% subplot(2,2,1);
% imshow(I);
% title('原图')
% subplot(2,2,2);
% imshow(I1)
% title('逆时针转90度')
% subplot(2,2,3);
% imshow(I2);
% title('逆时针转180度')
% subplot(2,2,4);
% imshow(I3);
% title('逆时针转270度') 