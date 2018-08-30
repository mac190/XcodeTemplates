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
    func unserialize(data: Data?) -> <#DesiredObject#>?
    func serialize(any: <#DesiredObject#>) -> [String : Any]
}

class ___FILEBASENAME___Impl: ___FILEBASENAME___ {
    
    func unserialize(data: Data?) -> <#DesiredObject#>? {
        guard let data = data else {
            return nil
        }
        do {
            return try JSONDecoder().decode(Any.self, from: data)
            return nil
        } catch (let error) {
            print(error)
            return nil
        }
    }
    
    func serialize(<#incomingObject#>: <#DesiredObject#>) -> [String : Any] {
        do {
            let data = try JSONEncoder().encode(<#incomingObject#>)
            if let parameters = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return parameters
            } else {
                return ["": ""]
            }
        } catch let error {
            print(error)
        }
        return ["": ""]
    }
    
}
