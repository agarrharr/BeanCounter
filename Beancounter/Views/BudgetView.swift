//
//  BudgetView.swift
//  Beancounter
//
//  Created by Adam Garrett-Harris on 8/26/21.
//

import SwiftUI

struct BudgetView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "ellipsis.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.horizontal)
                Spacer()
                Text("August 2021")
                Image(systemName: "chevron.down")
                Spacer()
            }
            .padding(.top)
            List {
                Section(header: Text("Food")) {
                    Text("Groceries")
                    Text("Alcohol")
                }
                Section(header: Text("Giving")) {
                    Text("Church")
                    Text("Charity")
                }
                Section(header: Text("Holidays")) {
                    Text("Gifts")
                    Text("Anniversary")
                    Text("Birthdays")
                    Text("Christmas")
                    Text("Halloween")
                    Text("Thanksgiving")
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

struct BudgetView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetView()
    }
}
