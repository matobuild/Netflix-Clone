//
//  Extensions.swift
//  Netflix Clone
//
//  Created by kittawat phuangsombat on 2022/9/1.
//

import Foundation


extension String{
    func capitalizeFirstLetter() -> String {
        self.prefix(1).uppercased() + self.lowercased().dropFirst()
        
    }
}
