//
//  AuthenticationSessionModel.swift
//  AuthenticationService-ios15
//  
//  Created by elmetal on 2021/09/03
//  
//

import Foundation

public class AuthenticationSessionModel<AS: AuthenticationSessionProtocol> {
    private var authenticationSession: AS?

    public init() {}

    public func action() {
        guard authenticationSession == nil else {
            return
        }

        guard let authURL = URL(string: "https://example.com/auth") else { return }
        let scheme = "exampleauth"

        let authenticationSession2 = AS.init(url: authURL, callbackURLScheme: scheme)
        { callbackURL, error in
            // Handle the callback.
        }

        authenticationSession2.sessionStart()
    }
}
