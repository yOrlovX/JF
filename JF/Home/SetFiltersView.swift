//
//  SetFiltersView.swift
//  JF
//
//  Created by Yaroslav Orlov on 13.09.2023.
//

import SwiftUI

struct SetFiltersView: View {
  
  let professions = ["UI/UX Design", "Software Developer", "Data Scientist", "Doctor", "Teacher", "Lawyer", "Chef", "Graphic Designer", "Marketing Manager", "Accountant"]
  
  let subcategories = ["Logo Design", "Illustration", "Web Design", "Print Design", "Motion Graphics", "Packaging Design", "User Interface (UI) Design", "Typography", "Branding", "Poster Design"]
  
  @State private var selectedProfession = "UI/UX Design"
  @State private var selectedSubcategory = "Logo Design"
  
  var body: some View {
    ZStack {
      Colors.grayBackground
        .ignoresSafeArea()
      
      VStack {
        Text("Set Filters")
          .font(.system(size: 20, weight: .semibold))
        
        categorySection
        subCategorySection
      }
    }
  }
}

extension SetFiltersView {
  private var categorySection: some View {
    VStack(alignment: .leading) {
      Text("Category")
        .font(.system(size: 16, weight: .medium))
      
      ZStack {
        // Custom picker label
        HStack {
          Text("\(selectedProfession)")
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
        Picker("", selection: $selectedProfession) {
          ForEach(professions, id: \.self) { profession in
            Text("\(profession)").tag(profession)
          }
        }
        .pickerStyle(.menu)
        .opacity(0.025)
      }
    }
  }
  
  private var subCategorySection: some View {
    VStack(alignment: .leading) {
      Text("Sub Category")
        .font(.system(size: 16, weight: .medium))
      
      ZStack {
        // Custom picker label
        HStack {
          Text("\(selectedSubcategory)")
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
        Picker("", selection: $selectedSubcategory) {
          ForEach(subcategories, id: \.self) { subcategorie in
            Text("\(subcategorie)").tag(subcategorie)
          }
        }
        .pickerStyle(.menu)
        .opacity(0.025)
      }
    }
  }
}

struct SetFiltersView_Previews: PreviewProvider {
  static var previews: some View {
    SetFiltersView()
  }
}
