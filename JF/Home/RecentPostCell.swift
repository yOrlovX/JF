//
//  RecentPostCell.swift
//  JF
//
//  Created by Yaroslav Orlov on 12.09.2023.
//

import SwiftUI

struct RecentPostCell: View {
  let data: RecentPostCellData
  
    var body: some View {
      HStack {
        Image(data.image)
          .resizable()
          .scaledToFit()
          .frame(width: 50, height: 50)
          .cornerRadius(10)
          .padding(15)
        Spacer()
        VStack(alignment: .leading, spacing: 10) {
          Text(data.position)
            .font(.system(size: 16, weight: .semibold))
          Text(data.jobType)
            .font(.system(size: 12, weight: .regular))
            .foregroundColor(Colors.grayText)
        }
        Spacer()
        Spacer()
        Spacer()
        Text("$\(data.salary)/m")
          .font(.system(size: 12, weight: .medium))
          .foregroundColor(Colors.grayText)
        Spacer()
      }
      .frame(maxWidth: UIScreen.main.bounds.width - 40, maxHeight: 80)
      .background(.white)
      .cornerRadius(20)
    }
}

struct RecentPostCellData: Identifiable {
  let id = UUID()
  let image: String
  let position: String
  let salary: Int
  let jobType: String
  
  static let mockRecentPost: [RecentPostCellData] = [
      RecentPostCellData(image: "1", position: "Software Engineer", salary: 90000, jobType: "Full-Time"),
      RecentPostCellData(image: "2", position: "Data Scientist", salary: 95000, jobType: "Full-Time"),
      RecentPostCellData(image: "3", position: "Product Manager", salary: 110000, jobType: "Full-Time"),
      RecentPostCellData(image: "4", position: "UX Designer", salary: 85000, jobType: "Contract"),
      RecentPostCellData(image: "5", position: "Marketing Specialist", salary: 80000, jobType: "Part-Time")
  ]
}

struct RecentPostCell_Previews: PreviewProvider {
    static var previews: some View {
      RecentPostCell(data: RecentPostCellData(image: "google", position: "Product Designer", salary: 4500, jobType: "Full Time"))
    }
}
