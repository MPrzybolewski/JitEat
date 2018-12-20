//
//  Constants.swift
//  JitEat
//
//  Created by Marek Przybolewski on 19/12/2018.
//  Copyright © 2018 Marek Przybolewski. All rights reserved.
//

import UIKit

struct Constants {
    static let baseUrl = "https://jsonplaceholder.typicode.com"
    
    static let signalButtonText = "Powiedz nam, że już na nas czekasz!"
    
    struct Parameters {
        static let userId = "userId"
    }
    
    struct Color {
        static let Black = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0)
        static let White = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)
        static let Shadow = UIColor(red:0.60, green:0.60, blue:0.60, alpha:1.0)
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
