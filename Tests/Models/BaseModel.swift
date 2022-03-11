//
//  BaseModel.swift
//  Tests
//
//  Created by n.o.kazantsev on 11.03.2022.
//

import Foundation

enum SectionType: Int {
    case first
    case second
    
    var stringValue: String {
        switch self {
        case .first:
            return "First Section"
        case .second:
            return "Second section"
        }
    }
}

protocol BaseModel {
    var sectionName: SectionType { get }
}
