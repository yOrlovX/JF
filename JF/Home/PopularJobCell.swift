//
//  PopularJobCell.swift
//  JF
//
//  Created by Yaroslav Orlov on 08.09.2023.
//

import SwiftUI

struct PopularJobCell: View {
  
  //  let organizationName: String
  //  let position: String
  //  let salary: Int
  //  let location: String
  //  let isFavorite: Bool
  //  let image: String
  let data: PopularJobCellData
  
  var body: some View {
    VStack(alignment: .leading, spacing: 15) {
      HStack {
        VStack(spacing: 5) {
          Image(data.image)
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
            .cornerRadius(10)
          
          Text(data.organizationName)
            .font(.system(size: 12, weight: .regular))
            .foregroundColor(Colors.grayText)
        }
        Spacer()
        Image(systemName: data.isFavorite ? "heart.fill" : "heart")
          .foregroundColor(.red)
          .frame(width: 28, height: 28)
      }
      .padding(.horizontal, 20)
      
      Text(data.position)
        .font(.system(size: 16, weight: .medium))
        .foregroundColor(.black)
        .padding(.leading, 20)
      
      HStack(spacing: 5) {
        Text("$\(data.salary)/m")
          .font(.system(size: 12, weight: .semibold))
          .foregroundColor(.black)
        
        Text(data.location)
          .font(.system(size: 12, weight: .regular))
          .foregroundColor(Colors.grayText)
      }
      .padding(.leading, 20)
    }
    .frame(maxWidth: 260, maxHeight: 160)
    .background(.white)
    .cornerRadius(20)
  }
}

struct PopularJobCell_Previews: PreviewProvider {
  static var previews: some View {
    PopularJobCell(data: PopularJobCellData(organizationName: "ABC Inc.", position: "Software Engineer", salary: 80000, location: "New York, NY", isFavorite: false, image: "1"))
      .previewLayout(.sizeThatFits)
  }
}


struct PopularJobCellData: Identifiable {
  let id = UUID()
  let organizationName: String
  let position: String
  let salary: Int
  let location: String
  let isFavorite: Bool
  let image: String
  
  static let mockPopularJobs: [PopularJobCellData] = [
    PopularJobCellData(organizationName: "ABC Inc.", position: "Software Engineer", salary: 80000, location: "New York, NY", isFavorite: true, image: "1"),
    PopularJobCellData(organizationName: "XYZ Corp.", position: "Data Scientist", salary: 90000, location: "San Francisco, CA", isFavorite: false, image: "2"),
    PopularJobCellData(organizationName: "Tech Innovators", position: "UX Designer", salary: 75000, location: "Los Angeles, CA", isFavorite: true, image: "3"),
    PopularJobCellData(organizationName: "Global Solutions", position: "Product Manager", salary: 95000, location: "Chicago, IL", isFavorite: false, image: "4"),
    PopularJobCellData(organizationName: "Web Wizards Ltd.", position: "Frontend Developer", salary: 85000, location: "Austin, TX", isFavorite: true, image: "5"),
  ]
  
}
