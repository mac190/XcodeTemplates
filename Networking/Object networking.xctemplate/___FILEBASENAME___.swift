//
//  ___VARIABLE_moduleName___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import SwiftyJSON

fileprivate struct Parameters {
    
}

protocol ___VARIABLE_moduleName___: class {
    func getItem()
    func postItem(_ any: Any?)
}

protocol ___VARIABLE_moduleName___Delegate: class {
    func unknownErrorOccured()
    func noInternetConnection()
    func success(_ json: JSON)
}

class ___VARIABLE_moduleName___Impl: ___VARIABLE_moduleName___ {
    
    weak var delegate: ___VARIABLE_moduleName___Delegate?
    
    override func handleUnknownError() {
        delegate?.unknownErrorOccured()
    }
    
    override func handleResponseNoInternetConnection() {
        delegate?.noInternetConnection()
    }
    
    override func handleResponseBadRequest(json: JSON?) {
        delegate?.unknownErrorOccured()
    }
    
    override func handleResponseSuccess(json: JSON?) {
        delegate?.success(json)
    }
    
}

extension ___VARIABLE_moduleName___Impl: BaseNetworking {
    
    func getItem() {
        makeRequest(request: getRequest())
    }
    
    func postItem(_ any: Any?) {
        makeRequest(request: getRequest())
    }
    
    fileprivate func getRequest() -> HTTPRequest {
        return HTTPRequest(url: getUrl(), method: .get, parameters: nil, headers: getHeaders())
    }
    
    fileprivate func getRequest(_ any: Any?) -> HTTPRequest {
        return HTTPRequest(url: getUrl(), method: .post, parameters: nil, headers: getHeaders())
    }
    
    fileprivate func getUrl() -> String {
        return Endpoints.baseUrl
    }
    
}
