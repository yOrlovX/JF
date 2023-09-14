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
  
  let locations = ["United States", "Canada", "United Kingdom", "Australia", "Germany", "France", "Japan"]
  
  let salarys = ["1k","2k","3k","4k","5k"]
  
  let jobTypes = ["Full time","Part Time","Contract","Freelance","Remote"]
  
  
  @State private var selectedProfession = "UI/UX Design"
  @State private var selectedSubcategory = "Logo Design"
  @State private var selectedLocation = "Canada"
  @State private var selectedSalary = "2k"
  @State private var selectedJobType = "Part Time"
  
  var body: some View {
    ZStack {
      Colors.grayBackground
        .ignoresSafeArea()
      VStack(spacing: 30) {
        Text("Set Filters")
          .font(.system(size: 20, weight: .semibold))
        
        CustomPicker(title: "Category", selectedValue: $selectedProfession, options: professions) {
          Text("\(selectedProfession)")
        }
        CustomPicker(title: "Sub Category", selectedValue: $selectedSubcategory, options: subcategories) {
          Text("\(selectedSubcategory)")
        }
        HStack {
          CustomMiniPicker(title: "Location", selectedValue: $selectedLocation, options: locations) {
            Text("\(selectedLocation)")
          }
          CustomMiniPicker(title: "Salary", selectedValue: $selectedSalary, options: salarys) {
            Text("$\(selectedSalary)")
          }
        }
        .padding(.horizontal, 20)
        
        CustomJobTypePicker()
        
        Button(action: {}) {
          Text("Apply Filters")
            .modifier(ButtonModifier())
        }
      }
    }
  }
}

struct SetFiltersView_Previews: PreviewProvider {
  static var previews: some View {
    SetFiltersView()
  }
}
