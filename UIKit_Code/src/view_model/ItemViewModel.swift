//
//  ItemViewModel.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/28.
//

import Foundation

class ItemViewModel {
    private let repository: ItemRepository
    
    var item: Item?
    
    init(repository: ItemRepository) {
        self.repository = repository
    }
    
    func fetchItem(id: String) async throws -> Item {
        return try await repository.fetchItem(withId: id)
    }
}
