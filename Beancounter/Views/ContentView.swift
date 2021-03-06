//
//  ContentView.swift
//  Beancounter
//
//  Created by Adam Garrett-Harris on 8/26/21.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting = false
    @State private var selectedItem = 1
    @State private var oldSelectedItem = 1
    
    var body: some View {
        TabView(selection: $selectedItem) {
            BudgetView()
                .tabItem {
                    Image(systemName: "banknote.fill")
                    Text("Budget")
                }
                .tag(1)
            
            AccountsView()
                .tabItem {
                    Image(systemName: "building.columns.fill")
                    Text("Accounts")
                }
                .tag(2)
            
            Text("")
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Transaction")
                }
                .tag(3)
            
            ReportsView()
                .tabItem {
                    Image(systemName: "chart.bar.xaxis")
                    Text("Reports")
                }
                .tag(4)
            
            HelpView()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                    Text("Help")
                }
                .tag(4)
        }
        .onChange(of: selectedItem) { val in
            if selectedItem == 3 {
                self.isPresenting = true
                self.selectedItem = self.oldSelectedItem
            } else {
                self.oldSelectedItem = val
            }
        }
        .sheet(isPresented: $isPresenting) {
            TransactionView()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
