//
//  ItemReposiroty.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/28.
//

import Foundation

class ItemRepository {
    func fetchItem(withId id: String) async throws -> Item {
        let request = GetItemRequest(itemId: id)
        return try await APIManager.shared.perform(request)
    }
}
