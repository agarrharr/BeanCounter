//
//  AccountsView.swift
//  Beancounter
//
//  Created by Adam Garrett-Harris on 8/26/21.
//

import SwiftUI

struct AccountsView: View {
    var body: some View {
        List {
            Text("Checking")
            Text("Savings")
        }
    }
}

struct AccountsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountsView()
    }
}
