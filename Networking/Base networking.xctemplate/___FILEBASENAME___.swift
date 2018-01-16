//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Alamofire
import SwiftyJSON
import SwiftyBeaver

protocol Networking {
    func handleResponseSuccess(json: JSON?)
    func handleResponseBadRequest(json: JSON?)
    func handleResponseUnauthorized()
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
        manager.request(request.url, method: request.method, parameters: request.parameters, encoding: JSONEncoding.default, headers: request.headers).responseJSON(completionHandler:  {
                response in
                self.log.debug("RESPONSE : \(String(describing: response.response))")
                self.log.debug(response)
                self.handleResponse(response: response)
            })
    }
    
    // MARK: Response
    func handleResponse(response: DataResponse<Any>) {
        switch response.result {
        case .success(let value):
            successResponse(json: JSON(value), response: response)
        case .failure(let error):
            errorResponse(error: error)
        }
    }
    
    func successResponse(json: JSON?, response: DataResponse<Any>) {
        if let code = response.response?.statusCode {
            switch code {
            case ErrorCodes.authorization:
                handleResponseUnauthorized()
            case ErrorCodes.badRequest:
                handleResponseBadRequest(json: json)
            case SuccessCodes.created, SuccessCodes.ok:
                handleResponseSuccess(json: json)
            default:
                handleUnknownError()
            }
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
        headers[HeadersKeys.ContentType.name] = HeadersKeys.ContentType.value
        headers[HeadersKeys.Accept.name] = HeadersKeys.Accept.value
        headers[HeadersKeys.Authorization.name] = HeadersKeys.Authorization.value
        return headers
    }
    
    func handleResponseUnauthorized() {
        // Tutaj robimy zapytanie o refresh jak się nie uda to walimy notyfikacje i wymuszamy ponowne logowanie.
    }
    
    func handleUnknownError() {
        log.error("You need to override this method in you networking class")
    }
    
    func handleResponseNoInternetConnection() {
        log.error("You need to override this method in you networking class")
    }
    
    func handleResponseBadRequest(json: JSON?) {
        log.error("You need to override this method in you networking class")
    }
    
    func handleResponseSuccess(json: JSON?) {
        log.error("You need to override this method in you networking class")
    }
}

