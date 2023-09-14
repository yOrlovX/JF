//
//  CustomJobTypePicker.swift
//  JF
//
//  Created by Yaroslav Orlov on 13.09.2023.
//

import SwiftUI

struct CustomJobTypePicker: View {
  @State private var selectedItems: Set<String> = []
  
  let jobTypes = ["Full time","Part Time","Contract","Freelance","Remote"]
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("Job Type")
        .font(.system(size: 16, weight: .medium))
        .padding()
      LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 15) {
        ForEach(jobTypes, id: \.self) { option in
          Button(action: {
            if selectedItems.contains(option) {
              selectedItems.remove(option)
            } else {
              selectedItems.insert(option)
            }
          }) {
            HStack {
              Text(option)
                .foregroundColor(selectedItems.contains(option) ? .white : .black)
              Spacer()
            }
            .padding()
            .background(selectedItems.contains(option) ? Colors.darkPurple : Color.clear)
            .cornerRadius(10)
            .overlay(
              RoundedRectangle(cornerRadius: 8)
                .stroke(Colors.grayText, lineWidth: 1)
            )
          }
          .buttonStyle(PlainButtonStyle())
        }
      }
      .padding()
    }
  }
}

struct CustomJobTypePicker_Previews: PreviewProvider {
  static var previews: some View {
    CustomJobTypePicker()
  }
}
