//
//  Item.swift
//  Todoey
//
//  Created by Pathompat Mekbenchapivat on 14/4/2567 BE.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    let parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
