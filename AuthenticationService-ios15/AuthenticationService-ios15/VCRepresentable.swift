//
//  VCRepresentable.swift
//  AuthenticationService-ios15
//  
//  Created by elmetal on 2021/09/02
//  
//

import Foundation
import SwiftUI
import AuthenticationServices
import AuthenticationSession

struct VCRepresentable<AS: AuthenticationSessionProtocol>: UIViewControllerRepresentable {
    private var vc = VC()
    private var authenticationSessionModel: AuthenticationSessionModel<AS>

    init(model: AuthenticationSessionModel<AS>) {
        self.authenticationSessionModel = model
    }

    func makeUIViewController(context: Context) -> VC { vc }

    func updateUIViewController(_ uiViewController: VC, context: Context) {}

}

final class VC: UIViewController {}
