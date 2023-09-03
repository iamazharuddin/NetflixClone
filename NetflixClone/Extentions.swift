//
//  Extentions.swift
//  NetflixClone
//
//  Created by Azharuddin 1 on 02/09/23.
//

import Foundation
extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
