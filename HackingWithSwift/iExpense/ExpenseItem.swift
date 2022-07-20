//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Mon P. on 18/07/2022.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
