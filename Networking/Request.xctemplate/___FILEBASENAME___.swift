//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import Alamofire

class ___FILEBASENAME___: CustomDebugStringConvertible {
    
    var url: URLConvertible
    var method: HTTPMethod
    var parameters: Parameters?
    var headers: HTTPHeaders?
    var encoding: ParameterEncoding = JSONEncoding.default
    
    var debugDescription: String {
        return "URL - \(url) METHOD - \(method) PARAMETERS - \(String(describing: parameters)) HEADERS - \(String(describing: headers))"
    }
    
    init(url: URLConvertible, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders) {
        self.url = url
        self.method = method
        self.parameters = parameters
        self.headers = headers
    }
    
    init(url: URLConvertible, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders, encoding: ParameterEncoding) {
        self.url = url
        self.method = method
        self.parameters = parameters
        self.headers = headers
        self.encoding = encoding
    }
    
}

