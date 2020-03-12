//
//  ListView.swift
//  SwiftUIBasic
//
//  Created by Kitabisa.com on 10/03/20.
//  Copyright © 2020 fachrudin. All rights reserved.
//

import SwiftUI
import Alamofire

struct ListView: View {
    @ObservedObject private var observed = ListObserver()
            @State private var showConnectionAlert = false

        var body: some View {
            NavigationView{
                List(observed.jokes){ item in
                    ContentView(data: item)
                    }.navigationBarItems(
                        trailing: Button(action: { self.showConnectionAlert = true}, label: { Text("Click Me") })
                                .alert(isPresented: $showConnectionAlert) {
                                    Alert(
                                        title: Text("Cie"),
                                        message: Text("Penasaran nih?"),
                                        dismissButton: Alert.Button.default(
                                            Text("OK"),
                                            action: { self.showConnectionAlert = false }
                                    ))
                                }
                )
                .navigationBarTitle("SwiftUI Alakadarnya")
            }
        }
        
        func addJoke(){
            observed.getJokes(count: 1)
        }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
