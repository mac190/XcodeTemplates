//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import SwiftyJSON

struct ___FILEBASENAME___Parameters {
    
}

protocol ___FILEBASENAME___: class {
    func unserialize(_ json: JSON) -> Any?
    func serialize(_ any: Any?) -> [String: Any]
}

class ___FILEBASENAME___Impl: BaseNetworking {
    
    func unserialize(_ json: JSON) -> Any?{
        return nil
    }
    
    func serialize(_ any: Any?) -> [String: Any] {
        return [:]
    }
    
}
