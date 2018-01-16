//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

protocol ___VARIABLE_moduleName___CellDelegate: class {
    
}

class ___VARIABLE_moduleName___Cell: UITableViewCell {
    
    let mainView = ___VARIABLE_moduleName___CellView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
        contentView.addSubview(mainView)
        mainView.setupView()
    }
    
    fileprivate func setupCell() {
        backgroundColor = UIColor.clear
        selectionStyle = .none
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
}
