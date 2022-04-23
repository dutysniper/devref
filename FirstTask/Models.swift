//
//  Models.swift
//  FirstTask
//
//  Created by Константин Натаров on 22.04.2022.
//

import Foundation

protocol DevRefModelsProtocol {
    var category: String { get }
    var name: [String] { get }
    
}

    
struct Algorithm: DevRefModelsProtocol {
        
        var category: String
        
        var name: [String]
}

struct StructOfData: DevRefModelsProtocol {
  
        var category: String
    
        var name: [String]
}

struct Pattern: DevRefModelsProtocol {
        
        var category: String
        
        var name: [String]
}


