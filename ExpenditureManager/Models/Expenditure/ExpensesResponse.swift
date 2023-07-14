//
//  ExpensesResponse.swift
// ExpenditureManager
//

import Foundation

struct ExpensesResponse: Codable {
    
	let expenses: [Expenses]?
	let total: Int?
}
