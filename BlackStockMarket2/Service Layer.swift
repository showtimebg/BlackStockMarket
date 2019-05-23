//
//  Service Layer.swift
//  BlackStockMarket2
//
//  Created by Chris Toney on 5/22/19.
//  Copyright © 2019 Chris Toney. All rights reserved.
//

import Foundation

class ServiceLayer {
//    // 1. This is what the function is trying to do. Telling it to get he data. I'ts asking for JSON data then its converts it into to data that I can use for my app
//    func request(router: Router, completion: @escaping ([BlackReviewData]) -> ()) {
//        // 2. Set uo the componets from the URL for the Router
//        var components = URLComponents()
//        components.scheme = router.scheme
//        components.host = router.host
//        components.path = router.path
//        components.queryItems = router.parameters
//        // 3. Create the URL request
//        guard let url = components.url else { return }
//        var urlRequest = URLRequest(url: url)
//        urlRequest.httpMethod = router.method
//        // 4. Start the Request to the server.
//        let session = URLSession(configuration: .default)
//        let dataTask = session.dataTask(with: urlRequest) { data, response, error in
//            // 5. You create a guard statement to make sure there are no errros
//            print("URL: \(url)")
//            guard error == nil else {
//                print(error?.localizedDescription)
//                return
//            }
//            guard response != nil else {
//                return
//            }
//            guard let data = data else {
//                return
//            }
//            print(data)
//
//            let dataAsString = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
//            print(dataAsString)
//            // 6. This is the part that lets us know what kind of data we've recieved wether it's real data, an error, or just a response
//            do {
////                let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
//                let responseObject = try! JSONDecoder().decode([BlackReviewData].self, from: data)
//                // 7. Dispatch back to the main thread when you use the response object when calling the function.
//                DispatchQueue.main.async {
//                    // 8. Completion repspone is used to trigger an action by the object inside the function
//                    completion(responseObject)
//                }
//            } catch {
//                print("ERROR: failed to parse JSON")
//                print(error)
//            }
//
//        }
//        dataTask.resume()
//    }
    
    class func request() -> [BlackReviewData] {
        // 1 Creates an array to hold the data
        var result: [BlackReviewData] = []
        // 2 Pulls the files
        if let path = Bundle.main.path(forResource: "reviews", ofType: "json") {
            do {
                // 3 Grabs all the data from the file to be used.
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                // 4 Converts the file into swift so I can use it.
                let responseObject = try! JSONDecoder().decode([BlackReviewData].self, from: data)
                result = responseObject
            } catch {
                // handle error
                print("ERROR: cannot convert JSON")
                print(error)
            }
        }
        return result
    }
}
