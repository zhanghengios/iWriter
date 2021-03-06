//
//  Symbol.swift
//  iWriter
//
//  Created by Jiangyouhua on 2019/7/9.
//  Copyright © 2019 Jiangyouhua. All rights reserved.
//

import Foundation

/**
 ## Works Role。
    作品符号，作品中的常用对象，如：降龙十八掌、天机处等。
 1. 支持subscript，方便与Dictionary转换；
 2. 提供forDictionary方法，支持转换为Dictionary。
 */
struct Symbol: DataDelegate {
    
    var name: String                     // 符号名称。
    var info: String                     // 符号信息。
    var creation: Int                    // 创建时间，时间戮。
    
    init() {
        self.name = ""
        self.info = ""
        self.creation = 0
    }
    
    subscript(key:String)->Any?{
        get{
            switch key {
            case "name":
                return self.name
            case "info":
                return self.info
            case "creation":
                return self.creation
            default:
                return nil
            }
        }
        set{
            switch key {
            case "name":
                self.name = newValue as? String ?? ""
            case "info":
                self.info = newValue as? String ?? ""
            case "creation":
                self.creation = newValue as? Int  ?? 0
            default:
                return
            }
        }
    }
    
    /// 转为字典。
    /// - returns: 字典。
    func forDictionary()->Dictionary<String, Any>{
        var dic:Dictionary<String, Any> = [:]
        dic["name"] = self.name
        dic["info"] = self.info
        dic["creation"] = self.creation
        return dic
    }
}
