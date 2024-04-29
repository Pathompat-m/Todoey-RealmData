//
//  Category.swift
//  Todoey
//
//  Created by Pathompat Mekbenchapivat on 14/4/2567 BE.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
}
