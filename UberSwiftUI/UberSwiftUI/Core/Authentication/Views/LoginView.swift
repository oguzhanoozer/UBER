//
//  SwiftUIView.swift
//  UberSwiftUI
//
//  Created by oguzhan on 27.12.2024.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @EnvironmentObject var viewModel: AuthViewModel

    let signInText = "SIGN IN"
    let signInWithSocialText = "Sign in with social"
    let uberText = "UBER"
    let emailTitle = "Email Address"
    let emailHintTitle = "name@example.com"
    let passwordTitle = "Password"
    let passwordHintTitle = "Enter your password"
    let forgotPassword = "Forgot Password?"
    let dontHaveAnAccount = "Don't have an account?"
    let signUpTitle = "Sign Up"
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                
                VStack {
                    
                    // image and title
                    ImageAndTitleView()
                    
                    // input fields
                    InputFields()
                    
                    // social sign in view
                    SocialSignInView()
                    
                    Spacer()
                    
                    // sign in button
                    CustomButton(title: signInText) {
                        viewModel.signIn(withEmail: email, password: password)
                    }
                  
                    // sign up button
                    
                    Spacer()
                    
                    ButtomBarView()
                }
            }
        }
    }
    
    @ViewBuilder
    fileprivate func SocialSignInView() -> some View {
        VStack {
            // dividers + text
            HStack(spacing: 24) {
                Rectangle()
                    .frame(width: 76, height: 1)
                    .foregroundColor(.white)
                    .opacity(0.5)
                
                Text(signInWithSocialText)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                
                Rectangle()
                    .frame(width: 76, height: 1)
                    .foregroundColor(.white)
                    .opacity(0.5)
                
            }
            
            // sign up buttons
            HStack(spacing: 24) {
                Button {
                    
                } label: {
                    Image(ImageItems.App.facebookSignInIcon.rawValue)
                        .resizable()
                        .frame(width: 44, height: 44)
                }
                
                
                Button {
                    
                } label: {
                    Image(ImageItems.App.googleSignInIcon.rawValue)
                        .resizable()
                        .frame(width: 44, height: 44)
                }
            }
        }
        .padding(.vertical)
    }
    
    @ViewBuilder
    fileprivate func ImageAndTitleView() -> some View {
        VStack(spacing: -16) {
            // image
            Image(ImageItems.App.uberAppIcon.rawValue)
                .resizable()
                .frame(width: 200, height: 200)
            
            // title
            Text(uberText)
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
    
    @ViewBuilder
    fileprivate func InputFields() -> some View {
        VStack(spacing: 32) {
            // input field 1
            CustomInputField(text: $email,
                             title: emailTitle,
                             placeholder: emailHintTitle)
            
            // input field 2
            CustomInputField(text: $password,
                             title: passwordTitle,
                             placeholder: passwordHintTitle,
                             isSecureField: true)
            
            Button {
                
            } label: {
                Text(forgotPassword)
                    .font(.system(size: 13, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(.top)
                
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
        }
        .padding(.horizontal)
        .padding(.top, 12)
    }
    
    
    @ViewBuilder
    fileprivate func ButtomBarView() -> some View {
         NavigationLink {
            RegistrationView()
                .navigationBarBackButtonHidden(true)
        } label: {
            HStack {
                Text(dontHaveAnAccount)
                    .font(.system(size: 14))
                
                Text(signUpTitle)
                    .font(.system(size: 14, weight: .semibold))
            }
            .foregroundColor(.white)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
