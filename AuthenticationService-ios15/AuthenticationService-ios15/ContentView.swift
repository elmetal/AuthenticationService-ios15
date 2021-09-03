//
//  ContentView.swift
//  AuthenticationService-ios15
//  
//  Created by elmetal on 2021/09/02
//  
//

import SwiftUI
import AuthenticationServices

struct ContentView: View {
let model = AuthenticationSessionModel<ASWebAuthenticationSession>()

    var body: some View {
        VStack {
            VCRepresentable(model: model)

            Button(action: {
                model.action()
            }) {
                Text("auth")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
