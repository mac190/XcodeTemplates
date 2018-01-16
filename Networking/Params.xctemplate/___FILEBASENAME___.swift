//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

struct Endpoints {
    static let baseUrl = ""
    static let oauth = ""
    static let signUpUser = ""
    
}

struct SuccessCodes {
    static let ok = 200
    static let created = 201
}

struct ErrorCodes {
    static let notConnectedToInternet = -1009
    static let authorization = 401
    static let badRequest = 400
}

struct Headers {
    struct GrantType {
        static let name = "grant_type"
        static let clientCredentials = "client_credentials"
        static let password = "password"
        static let refreshToken = "refresh_token"
    }
    
    struct ClientId {
        static let name = "client_id"
        static let value = ""
    }
    
    struct ClientSecret {
        static let name = "client_secret"
        static let value = ""
    }
}

struct HeadersKeys {
    struct ContentType {
        static let name = "Content-Type"
        static let value = "application/json"
    }
    struct Accept {
        static let name = "Accept"
        static let value = "application/json"
    }
    struct Authorization {
        static let name = "Authorization"
        static let value = "Bearer "
    }
}

struct Parameters {
    struct SignUp {
        static let password = "password"
        static let email = "email"
    }
}
