//
//  Home.swift
//  JF
//
//  Created by Yaroslav Orlov on 08.09.2023.
//

import SwiftUI

struct HomeView: View {
  @State private var searchText: String = ""
  let popularJobMockData = PopularJobCellData.mockPopularJobs
  let recentPostMockData = RecentPostCellData.mockRecentPost
  
  var body: some View {
    ZStack {
      Colors.grayBackground
        .ignoresSafeArea()
      VStack {
        searchBarContainer
        Text("Recent Post")
        ScrollView(.horizontal) {
          HStack(spacing: 20) {
            ForEach(popularJobMockData) { datum in
              PopularJobCell(data: datum)
            }
          }
        }
        Text("Recent Post")
        ScrollView(.vertical) {
          VStack(alignment: .leading, spacing: 20) {
            Text("Recent Post")
              .font(.system(size: 20, weight: .semibold))
            ForEach(recentPostMockData) { datum in
              RecentPostCell(data: datum)
            }
          }
        }
      }
      .padding(.horizontal, 20)
    }
  }
}

extension HomeView {
  private var searchBarContainer: some View {
    HStack(spacing: 15) {
      SearchBarView(searchText: $searchText)
      Button(action: {}) {
        Image(systemName: "slider.horizontal.3")
          .foregroundColor(.white)
          .frame(width: 54, height: 54)
          .background(Colors.darkPurple)
          .cornerRadius(12)
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
