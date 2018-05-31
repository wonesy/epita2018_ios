//
//  Books.swift
//  cameronTableView
//
//  Created by Cameron Jones on 3/29/18.
//  Copyright © 2018 Cameron Jones. All rights reserved.
//

import Foundation

class Book {
    var author:String?
    var title:String?
    var year:Int?
    var description:String?
    
    
    init(author:String, title:String, year:Int, description:String) {
        self.author = author
        self.title = title
        self.year = year
        self.description = description
    }
    
    func printAuthor() -> String {
        return self.author!
    }
}
