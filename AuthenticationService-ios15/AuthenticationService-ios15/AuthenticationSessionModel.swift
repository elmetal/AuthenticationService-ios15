//
//  AuthenticationSessionModel.swift
//  AuthenticationService-ios15
//  
//  Created by elmetal on 2021/09/03
//  
//

import Foundation

struct AuthenticationSessionModel<AS: AuthenticationSessionProtocol> {
    func action() {
        guard let authURL = URL(string: "https://example.com/auth") else { return }
        let scheme = "exampleauth"

        let authenticationSession = AS.init(url: authURL, callbackURLScheme: scheme)
        { callbackURL, error in
            // Handle the callback.
        }

        authenticationSession.sessionStart()
    }
}
