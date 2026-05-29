//
//  WorkoutCardView.swift
//  GO Fitness
//
//  Created by Youssif Hany on 26/05/2026.
//

import SwiftUI

struct WorkoutCardView: View {

    let icon: Image
    let title: String
    let duration: String
    let calories: String
    let time: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.white)
                .frame(minHeight: 120)

            HStack(spacing: 20) {

                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.blue.opacity(0.15))
                    .overlay {
                        icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(ColorTokens.Brand.primary)
                    }

                VStack(alignment: .leading, spacing: 6) {

                    Text(title)
                        .font(.title3)
                        .fontWeight(.semibold)

                    HStack(spacing: 12) {
                        Text("\(duration) min")
                        Text("\(calories) Kcal")
                    }
                    .fontWeight(.light)
                }
                Text(time)
                    .font(.callout)
            }
            .padding(.horizontal)
        }
    }
}
