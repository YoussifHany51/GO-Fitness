//
//  TitleDashboard.swift
//  GO Fitness
//
//  Created by Youssif Hany on 18/04/2026.
//

import SwiftUI

/// This subview showes the user name and today's date
struct TitleDashboard: View {
    let date: String
    let name: String
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(date)")
                    .textCase(.uppercase)
                    .font(.caption)
                    .foregroundStyle(ColorTokens.Brand.primary)
                Text("Good morning,\(name)")
                    .foregroundStyle(ColorTokens.Text.primary)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            Spacer()
        }
    }
}

#Preview {
    TitleDashboard(date: "Monday, MAY 22", name: "Youssif")
}
