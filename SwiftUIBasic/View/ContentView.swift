//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by Kitabisa.com on 09/03/20.
//  Copyright © 2020 fachrudin. All rights reserved.
//

import SwiftUI
import Alamofire
import struct Kingfisher.KFImage

struct ContentView: View {
    var data: JokesData

    var body: some View {
        Button(action: { self.fetchFilms() }) {
            HStack() {
                 KFImage(URL(string: "https://kitabisa.com/static/images/logo-large.png"))
                .resizable()
                .frame(width: 90.0, height: 90.0, alignment: .center)
                Text(data.joke).bold()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(data: JokesData(id: 0, joke: "yoyo"))
    }
}
