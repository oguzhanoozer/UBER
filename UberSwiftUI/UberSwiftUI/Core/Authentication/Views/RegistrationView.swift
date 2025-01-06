//
//  RegistrationView.swift
//  UberSwiftUI
//
//  Created by oguzhan on 27.12.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var fullname = ""
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    let createNewAccount = "Create new account"
    let signInWithSocialText = "Sign in with social"
    let uberText = "UBER"
    let fullNameTitle = "Full Name"
    let fullNameHintTitle = "Enter your name"
    let emailTitle = "Email Address"
    let emailHintTitle = "name@example.com"
    let passwordTitle = "Create Password"
    let passwordHintTitle = "Enter your password"
    let forgotPassword = "Forgot Password?"
    let signUpTitle = "SIGN UP"
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .imageScale(.medium)
                        .padding()
                }
                
                Text(createNewAccount)
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .frame(width: 250)
                
                Spacer()
                
                InputFields()
            }
            .foregroundColor(.white)
        }
    }
    
    @ViewBuilder
    fileprivate func InputFields() -> some View {
         VStack {
            VStack(spacing: 56) {
                CustomInputField(text: $fullname,
                                 title: fullNameTitle,
                                 placeholder: fullNameHintTitle)
                
                CustomInputField(text: $email,
                                 title: emailTitle,
                                 placeholder: emailHintTitle)
                
                CustomInputField(text: $password,
                                 title: passwordTitle,
                                 placeholder: passwordHintTitle,
                                 isSecureField: true)
            }
            .padding(.leading)
            
            Spacer()
            
            CustomButton(title: signUpTitle) {
                viewModel.registerUser(withEmail: email,
                                       password: password,
                                       fullname: fullname)                    }
            
            Spacer()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
