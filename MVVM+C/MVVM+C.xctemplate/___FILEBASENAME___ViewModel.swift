//
//  ___FILENAME___ViewModel
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import Factory

protocol ___VARIABLE_moduleName___ViewModelProtocol {
    var coordinator: ___VARIABLE_moduleName___CoordinatorProtocol? { get set }
}

final class ___VARIABLE_moduleName___ViewModel: ___VARIABLE_moduleName___ViewModelProtocol {
    
    var coordinator: ___VARIABLE_moduleName___CoordinatorProtocol?
    
}

extension Container {
    var <#object#>: ParameterFactory<<#object#>,___VARIABLE_moduleName___ViewModelProtocol> {
        self { parameter in
            ___VARIABLE_moduleName___ViewModel()
        }
    }
}
