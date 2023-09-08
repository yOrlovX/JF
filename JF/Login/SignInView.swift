//
//  SignInView.swift
//  JF
//
//  Created by Yaroslav Orlov on 08.09.2023.
//

import SwiftUI

struct SignInView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  
  var body: some View {
    ZStack {
      Colors.grayBackground
        .ignoresSafeArea()
      VStack(spacing: 35) {
        labelsContainer
        textFieldsContainer
        buttonsContainer
      }
    }
  }
}

extension SignInView {
  private var labelsContainer: some View {
    VStack(alignment: .leading, spacing: 10) {
      Text("Welcome Back!")
        .font(.system(size: 30, weight: .semibold))
      Text("Fill your details or continue with social media")
        .foregroundColor(Colors.grayText)
        .font(.system(size: 16, weight: .regular))
    }
  }
  
  private var textFieldsContainer: some View {
    VStack(spacing: 25) {
      TextField("Email Address", text: $email)
        .padding(.leading, 45)
        .frame(width: UIScreen.main.bounds.width - 40, height: 54)
        .background(.white)
        .cornerRadius(12)
        .overlay {
          HStack {
            Image(systemName: "envelope")
              .frame(width: 24, height: 24)
              .padding(.leading, 15)
            Spacer()
          }
        }
      TextField("Password", text: $password)
        .padding(.leading, 45)
        .frame(width: UIScreen.main.bounds.width - 40, height: 54)
        .background(.white)
        .cornerRadius(12)
        .overlay {
          HStack {
            Image(systemName: "lock")
              .frame(width: 24, height: 24)
              .padding(.leading, 15)
            Spacer()
            Image(systemName: "eye.slash")
              .frame(width: 24, height: 24)
              .padding(.trailing, 20)
          }
        }
      HStack {
        Spacer()
        Text("Forget Password?")
          .font(.system(size: 12, weight: .regular))
          .foregroundColor(Colors.grayText)
          .padding(.trailing, 20)
      }
    }
  }
  
  private var buttonsContainer: some View {
    VStack(spacing: 45) {
      Button(action: {}) {
        Text("Sign In")
          .modifier(ButtonModifier())
      }
      HStack {
        Rectangle()
          .frame(width: 20, height: 1)
          .foregroundColor(Colors.grayText)
        Text("Or Continue with")
          .font(.system(size: 16, weight: .regular))
          .foregroundColor(Colors.grayText)
        Rectangle()
          .frame(width: 20, height: 1)
          .foregroundColor(Colors.grayText)
      }
      HStack(spacing: 30) {
        Image("google")
          .resizable()
          .scaledToFit()
          .frame(width: 50, height: 50)
        Image("facebook")
          .resizable()
          .scaledToFit()
          .frame(width: 50, height: 50)
      }
      HStack {
        Text("New User?")
          .font(.system(size: 16, weight: .regular))
          .foregroundColor(Colors.grayText)
        Button(action: {}) {
          Text("Create Account")
            .font(.system(size: 16, weight: .regular))
            .foregroundColor(Colors.darkPurple)
        }
      }
    }
  }
}

struct SignInView_Previews: PreviewProvider {
  static var previews: some View {
    SignInView()
  }
}
