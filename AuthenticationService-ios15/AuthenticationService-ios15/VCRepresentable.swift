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

struct VCRepresentable: UIViewControllerRepresentable {
    private(set) var vc: VC

    func makeUIViewController(context: Context) -> VC { vc }

    func updateUIViewController(_ uiViewController: VC, context: Context) {}

}

final class VC: UIViewController {}

extension VC: ASWebAuthenticationPresentationContextProviding {
    func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
        return view.window!
    }
}
