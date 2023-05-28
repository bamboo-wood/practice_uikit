//
//  GetItemRequest.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/28.
//

import Alamofire

struct GetItemRequest: APIRequest {
    typealias Response = Item

    let itemId: String
    
    var method: HTTPMethod { .get }
    var path: String { "items/\(itemId)" }
    var parameters: Parameters? { nil }
    var headers: HTTPHeaders? { nil }
}
