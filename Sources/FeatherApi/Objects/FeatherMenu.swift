//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 03. 06..
//

import Foundation

/// generic menu object that contains menu items
public struct FeatherMenu: Codable {

    /// unique key of the menu
    public let key: String
    /// array of items associated to the menu
    public let items: [FeatherMenuItem]

    /// init a new menu object using a key and an array of items
    public init(key: String, items: [FeatherMenuItem]) {
        self.key = key
        self.items = items.sorted { $0.priority > $1.priority }
    }
}
