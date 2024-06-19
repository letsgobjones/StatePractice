//
//  ContentView.swift
//  StatePractice
//
//  Created by Brandon Jones on 6/13/24.
//

import SwiftUI

struct ContentView: View {
  
  @State private var count: Int = 0
  @State private var isOn: Bool = false
  @State private var name: String = ""
  @State private var friends: [String] = []
  var body: some View {
      VStack {
        Text("Hello World!")
        Text("\(count)")
          .font(.largeTitle)
        Button("Increment") {
          count += 1
        }
        Toggle(isOn: $isOn, label: {
          Text(isOn ? "ON " : "OFF"  )
        }) .fixedSize()
      }
      .frame(width: 250, height: 250)
      .background(isOn ? .pink : .yellow)
      .padding()
      VStack {
        TextField("Enter name", text: $name)
          .textFieldStyle(.roundedBorder)
          .onSubmit {
            friends.append(name)
            name = ""
          }
        
        
        
        List(friends, id: \.self) { friend in
          Text(friend)
        }
      }
      .padding()
    }
  }


#Preview {
    ContentView()
 
}
