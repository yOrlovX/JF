//
//  Modifiers.swift
//  JF
//
//  Created by Yaroslav Orlov on 08.09.2023.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .foregroundColor(.white)
      .frame(width: UIScreen.main.bounds.width - 74, height: 54)
      .background(Colors.darkPurple)
      .cornerRadius(12)
  }
}
