//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

enum ___VARIABLE_moduleName___CellType: Int {
    case someCell
}

enum ___VARIABLE_moduleName___CellOrder: Int {
    case someCell
    case cellCount
}

protocol ___VARIABLE_moduleName___ViewCellManagerDelegate: class {
    
}

protocol ___VARIABLE_moduleName___ViewCellManager: class {
    weak var delegate: ___VARIABLE_moduleName___ViewCellManagerDelegate? { get set }
    func buildCell(indexPath: IndexPath) -> UITableViewCell
}

class ___VARIABLE_moduleName___ViewCellManagerImpl: ___VARIABLE_moduleName___ViewCellManager {
    
    weak var delegate: ___VARIABLE_moduleName___ViewCellManagerDelegate?
    
    let tableView: UITableView
    
    init(tableView: UITableView) {
        self.tableView = tableView
        registerCells()
    }
    
    fileprivate func registerCells() {
        tableView.register(___VARIABLE_moduleName___Cell.self, forCellReuseIdentifier: String(describing: ___VARIABLE_moduleName___Cell.self))
    }
    
    func buildCell(indexPath: IndexPath) -> UITableViewCell {
        
        
        assertionFailure("Could not build cell!")
        return UITableViewCell()
    }
    
}

extension ___VARIABLE_moduleName___ViewCellManagerImpl: ___VARIABLE_moduleName___ViewCellManagerDelegate {
    
}
