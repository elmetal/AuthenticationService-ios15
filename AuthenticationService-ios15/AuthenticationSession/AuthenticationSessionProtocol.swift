//
//  AuthenticationSessionProtocol.swift
//  AuthenticationService-ios15
//  
//  Created by elmetal on 2021/09/02
//  
//

import Foundation

public protocol AuthenticationSessionProtocol {
    init(url URL: URL,
         callbackURLScheme: String?,
         completionHandler: @escaping (URL?, Error?) -> Void)

    func sessionStart()
}
