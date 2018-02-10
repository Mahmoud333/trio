//
//  CellData.swift
//  trio
//
//  Created by mac on 2/11/18.
//  Copyright © 2018 mac. All rights reserved.
//

import Foundation


class CellData {
    
    var title: String!
    var uid: String!
    var email: String!
    var telNumber: String!
    var image: String!
    var selected: Bool!
 
    init(title: String, uid: String, email: String, telNumber: String, image: String, selected: Bool) {
        self.title = title
        self.uid = uid
        self.email = email
        self.telNumber = telNumber
        self.image = image
        self.selected = selected
    }
}
