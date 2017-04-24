//
//  UIImage-Extension.swift
//  RoundImage
//
//  Created by pankx on 2017/4/7.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

extension UIImage {
    
   public func kx_UIImage(rImage:UIImage?,rect:CGRect,bg:UIColor?)->UIImage?{
        ///1.获取上下文
        UIGraphicsBeginImageContextWithOptions(rect.size, true, 0)
        //a.设置填充颜色
        bg?.setFill()
        ///b.设置柜形的填充颜色
        UIRectFill(rect)
        ///c.获得圆形路径
        let path = UIBezierPath(ovalIn: rect)
        ///d.根据路径切割图片
        path.addClip()
        
        ///2.绘制图像
        rImage?.draw(in: rect)
        ///给圆形图像加上边线
        path.stroke()
        ///3.从上下文获得绘制完成的图像
        let kx_image = UIGraphicsGetImageFromCurrentImageContext()
        ///关闭上下文
        UIGraphicsEndImageContext()
        ///返回绘制完成的图像
        return kx_image
    }
}
