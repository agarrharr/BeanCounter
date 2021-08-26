//
//  BudgetView.swift
//  Beancounter
//
//  Created by Adam Garrett-Harris on 8/26/21.
//

import SwiftUI

struct BudgetView: View {
    var body: some View {
        List {
            Text("Food")
            Text("Groceries")
            Text("Alcohol")
        }
    }
}

struct BudgetView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetView()
    }
}
