//
//  ASWebAuthenticationSession+sessionStart.swift
//  AuthenticationService-ios15
//  
//  Created by elmetal on 2021/09/03
//  
//

import Foundation
import AuthenticationServices

final class WebAuthenticationPresentationContextProviding: NSObject, ASWebAuthenticationPresentationContextProviding {
    func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
        return ASPresentationAnchor()
    }
}

extension ASWebAuthenticationSession: AuthenticationSessionProtocol  {
    private static var contextProviding = WebAuthenticationPresentationContextProviding()

    func sessionStart() {
        self.presentationContextProvider = Self.contextProviding
        self.start()
    }
}
