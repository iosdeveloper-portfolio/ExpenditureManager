//
// ExpensesListView.swift
// ExpenditureManager
//

import UIKit

protocol ExpensesListView: class {
    
    func requestFailure(withError error:  String?)
    func requestSuccess(withExpenses expenses: [Expenses])
}
