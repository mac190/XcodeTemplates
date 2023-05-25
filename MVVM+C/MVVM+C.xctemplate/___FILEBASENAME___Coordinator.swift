//
//  ___FILENAME___ViewModel
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import Factory

protocol ___VARIABLE_moduleName___CoordinatorProtocol {
    
}

final class ___VARIABLE_moduleName___Coordinator {
    
    var parentCoordinator: Coordinator?
    var children = [Coordinator]()
    
}

extension ___VARIABLE_moduleName___Coordinator: ___VARIABLE_moduleName___CoordinatorProtocol {
    
}

extension Container {
    var <#object#>: ParameterFactory<<#object#>, ___VARIABLE_moduleName___CoordinatorProtocol> {
        self { parameter in
            ___VARIABLE_moduleName___Coordinator()
        }
    }
}
