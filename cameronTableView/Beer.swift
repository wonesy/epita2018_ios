//
//  Beer.swift
//  cameronTableView
//
//  Created by Cameron Jones on 3/29/18.
//  Copyright © 2018 Cameron Jones. All rights reserved.
//

import Foundation

class Beer {
    var name:String?
    var style:String?
    var brewery:String?
    var description:String?
    var image:String?
    
    
    init(name:String, style:String, brewery:String, description:String, image:String) {
        self.name = name
        self.style = style
        self.brewery = brewery
        self.description = description
        self.image = image
    }
}
