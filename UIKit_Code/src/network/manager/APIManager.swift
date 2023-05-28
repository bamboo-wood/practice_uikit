//
//  APIManager.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/28.
//

import Foundation
import Alamofire

class APIManager {
    static let shared = APIManager()
    
    let baseURL = "http://0.0.0.0:3000"
    
    func perform<T: APIRequest>(_ request: T) async throws -> T.Response {
        let url = URL(string: "\(baseURL)/\(request.path)")!
        
        let afRequest = AF.request(url, method: request.method, parameters: request.parameters, headers: request.headers)
        
        let response = await afRequest.validate().serializingDecodable(T.Response.self).response
        
        switch response.result {
        case .success(let value):
            return value
        case .failure(let error):
            print(error)
            throw error
        }
    }
}
