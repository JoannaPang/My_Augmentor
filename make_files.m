file_path =  './aug/JPEGImages/';% 图像文件夹路径
img_path_list = dir(strcat(file_path,'*.jpg'));%获取该文件夹中所有jpg格式的图像
img_num = length(img_path_list);%获取图像总数量
fid1=fopen('./aug/ImageSets/Segmentation/trainval.txt','w');
fid2=fopen('./aug/ImageSets/Segmentation/train.txt','w');
fid3=fopen('./aug/ImageSets/Segmentation/seg11valid.txt','w');
if img_num > 0 %有满足条件的图像
    for j = 1:img_num %逐一读取图像
        image_name = img_path_list(j).name(1:end-4);% 图像名
        %image =  imread(strcat(file_path,image_name,'.jpg'));
        fprintf(fid1,'%s\n',image_name);% 显示正在处理的图像名
        %图像处理过程 省略
        %imshow(image)
    end   
    fclose(fid1);
    
    for j = 1:round(img_num*0.8) %逐一读取图像  %因为是要按照8-2的方式来分训练集和验证集
        image_name = img_path_list(j).name(1:end-4);% 图像名
        %image =  imread(strcat(file_path,image_name,'.jpg'));
        fprintf(fid2,'%s\n',image_name);% 显示正在处理的图像名
        %图像处理过程 省略
        %imshow(image)
    end
    fclose(fid2);
    
    for j = round(img_num*0.8)+1:img_num %逐一读取图像
        image_name = img_path_list(j).name(1:end-4);% 图像名
        %image =  imread(strcat(file_path,image_name,'.jpg'));
        fprintf(fid3,'%s\n',image_name);% 显示正在处理的图像名
        %图像处理过程 省略
        %imshow(image)
    end
    fclose(fid3);
    
end
