//
//  Home.swift
//  JF
//
//  Created by Yaroslav Orlov on 08.09.2023.
//

import SwiftUI

struct HomeView: View {
  @State private var searchText: String = ""
  @State private var presentFilterSheet: Bool = false
  
  let popularJobMockData = PopularJobCellData.mockPopularJobs
  let recentPostMockData = RecentPostCellData.mockRecentPost
  
  var body: some View {
    ZStack {
      Colors.grayBackground
        .ignoresSafeArea()
      ScrollView {
        VStack(spacing: 30) {
          searchBarContainer
          HStack {
            Text("Popular Job")
              .font(.system(size: 20, weight: .semibold))
            Spacer()
            Text("Show All")
              .font(.system(size: 12, weight: .regular))
              .foregroundColor(Colors.grayText)
          }
          ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
              ForEach(popularJobMockData) { datum in
                PopularJobCell(data: datum)
              }
            }
          }
          HStack {
            Text("Recent Post")
              .font(.system(size: 20, weight: .semibold))
            Spacer()
            Text("Show All")
              .font(.system(size: 12, weight: .regular))
              .foregroundColor(Colors.grayText)
          }
          VStack(alignment: .leading, spacing: 20) {
            ForEach(recentPostMockData) { datum in
              RecentPostCell(data: datum)
            }
          }
          
        }
        .padding(.horizontal, 20)
      }
    }
    .sheet(isPresented: $presentFilterSheet) {
      SetFiltersView()
    }
  }
}

extension HomeView {
  private var searchBarContainer: some View {
    HStack(spacing: 15) {
      SearchBarView(searchText: $searchText)
      Button(action: { presentFilterSheet = true }) {
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
