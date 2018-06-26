//
//  AppConfig.swift
//  AbysSwift
//
//  Created by aby on 2018/4/3.
//  Copyright © 2018年 Aby.wang. All rights reserved.
//

import Foundation
//import DTTools
//import DTRequest

@_exported import DTTools
@_exported import DTRequest

// 全局的网络信息
enum URLinfo: String {
    // MARK: Release模式
//    case baseURL = "https://kankantalk.com/api/v1/"
//    case domain = "https://kankantalk.com"
//    case socketUrl = "wss://kankantalk.com:7373"

    // MARK: Debug模式
    case baseURL = "http://cis.dragontrail.net/api/v2/"
    case domain = "http://cis.dragontrail.net"
    case socketUrl = "ws://218.241.153.28:7272"
}

func netWorkConfig() -> Void {
    let config = DTNetConfig.init(baseUrl: URLinfo.baseURL.rawValue, domainUrl: URLinfo.domain.rawValue)
    DTNetworkManager.share.setDomain(config: config)
}
