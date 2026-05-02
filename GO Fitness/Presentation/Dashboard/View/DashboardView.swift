//
//  HomeView.swift
//  GO Fitness
//
//  Created by Youssif Hany on 18/04/2026.
//

import SwiftUI

struct DashboardView: View {
    let activities: [ActivityItem] = [
        .init(
            icon: "bolt.fill",
            title: "Move",
            value: "850 / 1000 kcal",
            progress: 0.6,
            color: ColorTokens.Brand.tertiary
        ),
        .init(
            icon: "dumbbell.fill",
            title: "Exercise",
            value: "42 / 60 min",
            progress: 0.6,
            color: ColorTokens.Brand.secondary
        ),
        .init(
            icon: "arrow.up.to.line",
            title: "Stand",
            value: "10 / 12 hr",
            progress: 0.6,
            color: .gray
        )
    ]

    var body: some View {
        ZStack {
            ColorTokens.Background.secondary.ignoresSafeArea()
            ScrollView {
                VStack {
                    TitleDashboard(date: "Satrday, APR 18",
                                   name: "Youssif")
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(
                                ColorTokens.Background.primary)

                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Daily Activity")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                    Text("You've reached 85% of your move goal today.")
                                        .font(.subheadline)
                                }
                                .padding()
                                Spacer()
                            }
                            VStack(spacing: 20) {
                                ForEach(activities) { item in
                                    ActivityRowView(item: item)
                                }
                            }
                            
                            
                        }
                        .padding()
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    DashboardView()
}
