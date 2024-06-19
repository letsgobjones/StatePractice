//
//  FriendsView.swift
//  StatePractice
//
//  Created by Brandon Jones on 6/13/24.
//

import SwiftUI

struct FriendsView: View {
  
  @State private var search: String = ""
  @State private var friends: [String] = ["John", "Mary", "Steven", "Steve", "Jerry"]
  
  @State private var filteredFriends: [String] = []
  
  
  var body: some View {
    VStack {
      List(filteredFriends, id: \.self) { friend in
        Text(friend)
      }
      .listStyle(.plain)
      .searchable(text: $search)
      .onChange(of: search) {
        if search.isEmpty {
          filteredFriends = friends
        } else {
          filteredFriends = friends.filter { $0.contains(search) }
        }
      }
      
    }
    .padding()
    .onAppear(perform: {
      filteredFriends = friends
    })
    .navigationTitle("Friends")
  }
}




#Preview {
  NavigationStack {
    FriendsView()
  }
}
