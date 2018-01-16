//
//  ___VARIABLE_moduleName___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import SwiftyJSON

protocol ___VARIABLE_moduleName___: class {
    weak var delegate: ___VARIABLE_moduleName___Delegate? { get set }
}

protocol ___VARIABLE_moduleName___Delegate: class {
    func errorOccured()
    func noInternetConnection()
}

class ___VARIABLE_moduleName___Impl: ___VARIABLE_moduleName___ {
    
    weak var delegate: ___VARIABLE_moduleName___Delegate?
    
}
