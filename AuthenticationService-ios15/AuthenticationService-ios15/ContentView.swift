//
//  ContentView.swift
//  AuthenticationService-ios15
//  
//  Created by elmetal on 2021/09/02
//  
//

import SwiftUI
import AuthenticationServices
import AuthenticationSession

struct ContentView: View {
let model = AuthenticationSessionModel<ASWebAuthenticationSession>()

    var body: some View {
        VStack {
            VCRepresentable(model: model)
                .background(Color.red.opacity(0.5))

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
