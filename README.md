# My_Augmentor
Sementic Segmentation data augmentation

0.运行环境为matlab。


1.my_Augment_data.m文件用来对原数据进行数据增强，数据增强方式共分为上下翻转，左右翻转，旋转90度，旋转180度，旋转270度几种方式;数据集被扩充为原来的6倍。

2.my_Augment_labels.m文件用来对数据对应的标签做增强，增强方式同上;
由于labels的标注使用了0 1 2 人眼无法看增强之后的效果，则vis_labels.m用来可视化labels。

3.数据的组织方式为：


    data|---|JPEGImages（原图）

            |SegmentationClass（原图对应的标签）
        
            |ImageSets|---|Segmentation|---|trainval.txt（所有数据的list）
        
        
                                           |train.txt（训练用数据的list）
                                       
                                       
                                           |val.txt（验证用数据的list）
                                       
                                       

make_files.m文件即用来按照数据组织的方式制作list文件。
