//
//  Constants.swift
//  JitEat
//
//  Created by Marek Przybolewski on 19/12/2018.
//  Copyright © 2018 Marek Przybolewski. All rights reserved.
//

struct Constants {
    static let baseUrl = "https://jsonplaceholder.typicode.com"
    
    struct Parameters {
        static let userId = "userId"
    }
    
    enum HttpHeaderField: String {
        case authentication = "Authorization"
        case contentType = "Content-Type"
        case acceptType = "Accept"
        case acceptEncoding = "Accept-Encoding"
    }
    
    enum ContentType: String {
        case json = "application/json"
    }
    
    enum ApiError: Error {
        case forbidden              //Status code 403
        case notFound               //Status code 404
        case conflict               //Status code 409
        case internalServerError    //Status code 500
    }
}
