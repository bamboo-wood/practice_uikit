//
//  APIRequest.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/28.
//

import Alamofire

protocol APIRequest {
    associatedtype Response: Codable

    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
    var headers: HTTPHeaders? { get }
}
