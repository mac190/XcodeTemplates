//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleName___CellCreator {
    
}

protocol ___VARIABLE_moduleName___CellFactory {
    func buildCell(delegate: ___VARIABLE_moduleName___CellDelegate, type: ___VARIABLE_moduleName___CellType) -> UITableViewCell
}

class ___VARIABLE_moduleName___CellFactoryImpl: ___VARIABLE_moduleName___CellFactory {
    
    fileprivate let tableView: UITableView
    
    init(tableView: UITableView) {
        self.tableView = tableView
    }
    
    func buildCell(delegate: ___VARIABLE_moduleName___CellDelegate, type: ___VARIABLE_moduleName___CellType) -> UITableViewCell {
        switch type {
        case .someCell:
            // TODO: creator
            return UITableViewCell()
        }
    }
}
