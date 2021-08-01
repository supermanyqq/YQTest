//
//  NSAttributeString+YQText.swift
//  Nimble
//
//  Created by kmqq on 2021/8/1.
//

import UIKit

public extension NSMutableAttributedString {
    
    /// 为整个字符串设置属性
    /// - Parameters:
    ///   - name: 属性名称
    ///   - value: 属性值
    func yq_setAttribute(_ name: NSAttributedString.Key, value: Any) {
        yq_setAttribute(name, value: value, range: NSRange(location: 0, length: self.length))
    }
    
    /// 为字符串指定range设置属性
    /// - Parameters:
    ///   - name: 属性名称
    ///   - value: 属性值
    ///   - range: 范围
    func yq_setAttribute(_ name: NSAttributedString.Key, value: Any, range: NSRange) {
        self.addAttributes([name: value], range: range)
    }
    
    /// 移除指定range内的所有属性
    /// - Parameter range: 范围
    func yq_removeAttributes(in range: NSRange) {
        self.setAttributes(nil, range: range)
    }
    
    /// 设置字体属性
    /// - Parameters:
    ///   - font: 字体
    ///   - range: 范围
    func yq_setFont(_ font: UIFont, range: NSRange) {
        self.addAttributes([NSAttributedString.Key.font: font], range: range)
    }
    
    /// 设置字符间距
    /// - Parameters:
    ///   - kern: 间距
    ///   - range: 范围
    func yq_setKern(_ kern: Double, range: NSRange) {
        self.addAttributes([NSAttributedString.Key.kern: kern], range: range)
    }
    
    /// 设置字体颜色
    /// - Parameters:
    ///   - color: 颜色
    ///   - range: 范围
    func yq_setColor(_ color: UIColor, range: NSRange) {
        self.addAttributes([NSAttributedString.Key.foregroundColor: color], range: range)
    }
    
    /// 设置背景色
    /// - Parameters:
    ///   - color: 背景色
    ///   - range: 范围
    func yq_setBackgroundColor(_ color: UIColor, range: NSRange) {
        self.addAttributes([NSAttributedString.Key.backgroundColor: color], range: range)
    }
    
    /// 设置文字笔画宽度，默认为0不做任何改变，通常情况制定为字体大小的百分比
    /// - Parameters:
    ///   - width: 文字笔画宽度，负数表示填充文字，正数表示文字描边
    ///   - range: 范围
    func yq_setStrokeWidth(_ width: Double, range: NSRange) {
        self.addAttributes([NSAttributedString.Key.strokeWidth: width], range: range)
    }
    
    /// 设置文字笔画颜色
    /// - Parameters:
    ///   - color: 颜色
    ///   - range: 范围
    func yq_setStrokeColor(_ color: UIColor, range: NSRange) {
        self.addAttributes([NSAttributedString.Key.strokeColor: color], range: range)
    }
    
    /// 设置文字阴影
    /// - Parameters:
    ///   - shadow: 阴影
    ///   - range: 范围
    func yq_setShadow(_ shadow: NSShadow, range: NSRange) {
        self.addAttributes([NSAttributedString.Key.shadow: shadow], range: range)
    }
}

