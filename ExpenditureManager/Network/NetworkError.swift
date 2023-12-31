//
// NetworkError.swift
// ExpenditureManager
//

import UIKit

enum NetworkError: ExpenditureManagerLocalizedError {
    
    case errorString(String)
    case error(code: Double?, message: String)
    case generic
    
    var errorDescription: String? {
        switch self {
        case .errorString(let errorMessage): return errorMessage
        case .error(_,let message): return message
        case .generic: return LocalizedString.Errors.genericError
        }
    }
    
    var title: String {
        return LocalizedString.Titles.AlertGeneric
    }
}


protocol ExpenditureManagerLocalizedError: LocalizedError {
    var title: String { get }
    var localDescription: String { get }
}

extension ExpenditureManagerLocalizedError {
    var title: String {
        return ""
    }
    
    var localDescription : String {
        return ""
    }
}
