//
//  RequestLocationView.swift
//  WeatherApp
//
//  Created by Mustafa Berkan Vay on 19.07.2022.
//

import SwiftUI

struct RequestLocationView: View {
  @EnvironmentObject var locationViewModel: LocationViewModel
  
  var body: some View {
    VStack {
      Image(systemName: "location.circle")
        .resizable()
        .frame(width: 100, height: 100, alignment: .center)
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
      Button(action: {
        locationViewModel.requestPermission()
      }, label: {
        Label("Allow tracking", systemImage: "location")
      })
      .padding(10)
      .foregroundColor(.white)
      .background(Color.blue)
      .clipShape(RoundedRectangle(cornerRadius: 8))
      Text("We need your permission to track you.")
        .foregroundColor(.gray)
        .font(.caption)
    }
  }
}

struct RequestLocationView_Previews: PreviewProvider {
  static var previews: some View {
    RequestLocationView()
  }
}
