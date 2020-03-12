//
//  Films.swift
//  SwiftUIBasic
//
//  Created by Kitabisa.com on 12/03/20.
//  Copyright © 2020 fachrudin. All rights reserved.
//

struct Films: Decodable {
  let count: Int
  let all: [Film]
  
  enum CodingKeys: String, CodingKey {
    case count
    case all = "results"
  }
}
