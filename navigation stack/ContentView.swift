//
//  ContentView.swift
//  navigation stack
//
//  Created by scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("This is the root view 🌳")
                //                NavigationLink(destination: secondView()) {
                //                    Text("Take me to a new view")
                //                }
                //                NavigationLink(destination: Text("You've arrived to the Second View 🎂")) {
                //                    Text("Click here")
                //                }
                //                NavigationLink(destination: Text("You've arrived to the Third View 💐")) {
                //                    Text("Click me")
                //                }
            } //vstack
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: secondView()) {
                        Text("About")
                    }
                    
                    
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(false)
                    
                }
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: Contact()) {
                        Text("Contact")
                    }
                    
                    
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(false)
                    
                }
                
                
            } //nstack
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
