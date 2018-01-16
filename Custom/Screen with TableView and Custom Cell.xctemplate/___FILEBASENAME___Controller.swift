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
    fileprivate let cellManager: ___VARIABLE_moduleName___ViewCellManager
    
    init(viewModel: ___VARIABLE_moduleName___ViewModel,mainView: ___VARIABLE_moduleName___View, cellManager: ___VARIABLE_moduleName___ViewCellManager) {
        self.viewModel = viewModel
        self.mainView = mainView
        self.cellManager = cellManager
        super.init(nibName: nil, bundle: nil)
        setupView()
        setupTableView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        view = mainView
    }
    
    fileprivate func setupTableView() {
        setupDelegate()
        setupDataSource()
    }
    
}

extension ___VARIABLE_moduleName___ViewController: UITableViewDelegate {
    
    func setupDelegate() {
        mainView.tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
    
}

extension ___VARIABLE_moduleName___ViewController: UITableViewDataSource {
    
    func setupDataSource() {
        mainView.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellManager.buildCell(indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ___VARIABLE_moduleName___CellOrder.cellCount.rawValue
    }
    
}
