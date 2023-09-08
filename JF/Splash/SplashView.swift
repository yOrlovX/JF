//
//  SplashView.swift
//  JF
//
//  Created by Yaroslav Orlov on 08.09.2023.
//

import SwiftUI

struct SplashView: View {
  var body: some View {
      ZStack {
        Colors.grayBackground
          .ignoresSafeArea()
        
        VStack(spacing: 20) {
          Image("logo")
            .resizable()
            .scaledToFit()
          
          Text("Find a Perfact \nJob Match")
            .font(.system(size: 30, weight: .semibold))
            .multilineTextAlignment(.center)
          
          Text("Finding your dream job is more easire \nand faster with JobHub")
            .font(.system(size: 16, weight: .regular))
            .foregroundColor(Colors.grayText)
            .multilineTextAlignment(.center)
          
          Button(action: {}) {
            Text("Let’s Get Started")
              .modifier(ButtonModifier())
          }
        }
      }
  }
}

struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    SplashView()
  }
}
