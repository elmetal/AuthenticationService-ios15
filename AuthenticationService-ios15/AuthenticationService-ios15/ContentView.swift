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
    var vc = VC()

    var body: some View {
        VStack {
            VCRepresentable(vc: vc)

            Button(action: {
                guard let authURL = URL(string: "https://example.com/auth") else { return }
                let scheme = "exampleauth"


                // Initialize the session.
                let session = ASWebAuthenticationSession(url: authURL, callbackURLScheme: scheme)
                { callbackURL, error in
                    // Handle the callback.
                }

                session.presentationContextProvider = vc

                session.start()
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
