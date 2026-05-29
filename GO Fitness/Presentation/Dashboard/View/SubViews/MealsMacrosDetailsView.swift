//
//  MealsMacrosDetailsView.swift
//  GO Fitness
//
//  Created by Youssif Hany on 29/05/2026.
//

import SwiftUI

struct MealsMacrosDetailsView: View {
    let title: String
    let macros: String
    var body: some View {
        VStack {
            Text(title)
                .foregroundStyle(Color.gray)
                .fontWeight(.medium)
                .font(.footnote)
            Text("\(macros)g")
                .foregroundStyle(Color.black)
                .fontWeight(.semibold)
        }
    }
}
