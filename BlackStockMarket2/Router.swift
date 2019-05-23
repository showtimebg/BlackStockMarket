//
//  Router.swift
//  BlackStockMarket2
//
//  Created by Chris Toney on 5/22/19.
//  Copyright © 2019 Chris Toney. All rights reserved.
//

import Foundation

enum Router {
    // 1.
    //The case for the URL
    case getReviewData
    
    // 2.
    // This is the scheme variable which is the same for all cases
    var scheme: String {
        switch self {
        case .getReviewData:
            return "https"
        }
    }
    // 3.
    // This is the host variable which is also the same for all variables
    var host: String {
        switch self {
        case .getReviewData:
            return "search.google.com"
        }
    }
    
    // 4.
    // This variable returns the path for each case
    var path: String {
        switch self {
        case .getReviewData:
            return "/structured-data/testing-tool"
            
        }
    }
    
    // 5.
    // Create an array of URLQueryItem’s to build up the parameters since all routes have more than one parameter.
    var parameters: [URLQueryItem] {
        switch self {
        case .getReviewData:
            // 6.
            //All of the bolded wods in the URL are the query name
            return [URLQueryItem(name: "utm_campiagn", value: "devsite"),
                    URLQueryItem(name: "utm_medium", value: "jsonld"),
                    URLQueryItem(name: "utm_source", value: "review-snippet")]
        }
    }
    
    var method: String {
        switch self {
        case .getReviewData:
            return "GET"
        }
    }
}

