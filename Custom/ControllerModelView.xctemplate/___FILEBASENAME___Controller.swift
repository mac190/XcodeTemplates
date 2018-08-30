//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

class ___VARIABLE_moduleName___ViewController: UIViewController {
    
    fileprivate let viewModel: ___VARIABLE_moduleName___ViewModel
    fileprivate let mainView: ___VARIABLE_moduleName___View
    
    init(viewModel: ___VARIABLE_moduleName___ViewModel,mainView: ___VARIABLE_moduleName___View) {
        self.viewModel = viewModel
        self.mainView = mainView
        super.init(nibName: nil, bundle: nil)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        view = mainView
    }
    
}
