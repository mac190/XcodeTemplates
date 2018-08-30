//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Alamofire
import SwiftyBeaver

protocol Networking {
    func handleResponseSuccess(response: DefaultDataResponse)
    func handleResponseBadRequest()
    func handleResponseNoInternetConnection()
    func handleUnknownError()
}

class ___FILEBASENAME___: Networking {
    
    fileprivate let manager: SessionManager
    fileprivate let log = SwiftyBeaver.self
    
    init() {
        let configuraion = URLSessionConfiguration.default
        configuraion.timeoutIntervalForRequest = 20
        self.manager = Alamofire.SessionManager(configuration: configuraion)
    }
    
    // MARK: Request
    func makeRequest(request: HTTPRequest) {
        log.debug("REQUEST : \(request.debugDescription)")
        manager.request(request.url, method: request.method, parameters: request.parameters, encoding: request.encoding, headers: request.headers).response { (response) in
            if response.data != nil {
                self.handleResponse(response: response, request: request)
            } else {
                self.handleUnknownError()
            }
        }
    }
    
    // MARK: Response
    func handleResponse(response: DefaultDataResponse, request: HTTPRequest) {
        if response.error == nil {
            successResponse(response: response, request: request)
        } else if let error = response.error {
            errorResponse(error: error)
        } else {
            handleUnknownError()
        }
    }
    
    func successResponse(response: DefaultDataResponse, request: HTTPRequest) {
        if let code = response.response?.statusCode {
            switch code {
            case ErrorCodes.badRequest:
                handleResponseBadRequest()
            case SuccessCodes.created, SuccessCodes.ok:
                handleResponseSuccess(response: response)
            default:
                handleUnknownError()
            }
        } else if let error = response.error as NSError?, error.code == ErrorCodes.notConnectedToInternet {
            handleResponseNoInternetConnection()
        } else if let error = response.error as NSError?, error.code == ErrorCodes.timeout {
            handleTimeout()
        } else {
            handleUnknownError()
        }
    }
    
    func errorResponse(error: Error) {
        let code = (error as NSError).code
        switch code {
        case ErrorCodes.notConnectedToInternet:
            handleResponseNoInternetConnection()
        default:
            handleUnknownError()
        }
    }
    
    // MARK: Headers
    func getHeaders() -> [String : String] {
        var headers = [String : String]()
//        headers[HeadersKeys.ContentType.name] = HeadersKeys.ContentType.value
//        headers[HeadersKeys.Accept.name] = HeadersKeys.Accept.value
//        headers[HeadersKeys.Authorization.name] = HeadersKeys.Authorization.value
        return headers
    }
    
    func handleTimeout() {
        log.error("You need to override this method in you networking class")
    }
    
    func handleUnknownError() {
        log.error("You need to override this method in you networking class")
    }
    
    func handleResponseNoInternetConnection() {
        log.error("You need to override this method in you networking class")
    }
    
    func handleResponseBadRequest() {
        log.error("You need to override this method in you networking class")
    }
    
    func handleResponseSuccess(response: DefaultDataResponse) {
        log.error("You need to override this method in you networking class")
    }
}

