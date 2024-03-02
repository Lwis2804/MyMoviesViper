//
//  String+Extension.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 21/02/24.
//

import UIKit

extension UIView {
    class var identifier : String{
        return String(describing: self)
    }
    class var nib : UINib{
        return UINib(nibName: identifier, bundle: .main)
    }
}
