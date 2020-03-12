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

struct ItemView: View {
    var data: Movie

    var body: some View {
        HStack() {
            KFImage(data.posterURL)
               .resizable()
               .frame(width: 120.0, height: 120.0, alignment: .center)
            Text(data.title).bold()
               Spacer()
           }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(data: Movie(id: 0, title: "yoyo", posterPath: "/asd", overview: "overview", releaseDate: "21 Des"))
    }
}
