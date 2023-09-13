//
//  CustomPicker.swift
//  JF
//
//  Created by Yaroslav Orlov on 13.09.2023.
//

import SwiftUI

struct CustomPicker<Content: View>: View {
  let title: String
  let content: () -> Content
  let selectedValue: Binding<String>
  let options: [String]
  
  init(title: String, selectedValue: Binding<String>, options: [String], @ViewBuilder content: @escaping () -> Content) {
    self.title = title
    self.content = content
    self.selectedValue = selectedValue
    self.options = options
  }
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(title)
        .font(.system(size: 16, weight: .medium))
      
      ZStack {
        // Custom picker label
        HStack {
          content()
            .font(.system(size: 16, weight: .regular))
            .foregroundColor(Colors.grayText)
            .padding(20)
          Spacer()
          Image(systemName: "chevron.down")
            .resizable()
            .scaledToFit()
            .frame(width: 18, height: 18)
            .padding(20)
        }
        .frame(width: UIScreen.main.bounds.width - 40, height: 54)
        .background(.white)
        .cornerRadius(10)
        // Invisible picker
          Picker("", selection: selectedValue) {
            ForEach(options, id: \.self) { option in
              Text(option)
                .tag(option)
            }
          }
          .frame(width: .infinity, height: 54)
          .pickerStyle(.menu)
          .opacity(0.025)
      }
    }
  }
}
