//
//  Displayable.swift
//  SwiftUIBasic
//
//  Created by Kitabisa.com on 12/03/20.
//  Copyright © 2020 fachrudin. All rights reserved.
//

protocol Displayable {
  var titleLabelText: String { get }
  var subtitleLabelText: String { get }
  var item1: (label: String, value: String) { get }
  var item2: (label: String, value: String) { get }
  var item3: (label: String, value: String) { get }
  var listTitle: String { get }
  var listItems: [String] { get }
}
