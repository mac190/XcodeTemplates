//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit
import Factory

final class ___VARIABLE_moduleName___ViewController: UIViewController {
    
    private let viewModel: ___VARIABLE_moduleName___ViewModelProtocol
    
    init(viewModel: ___VARIABLE_moduleName___ViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
