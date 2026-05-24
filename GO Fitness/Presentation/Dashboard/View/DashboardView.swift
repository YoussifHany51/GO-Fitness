//
//  HomeView.swift
//  GO Fitness
//
//  Created by Youssif Hany on 18/04/2026.
//

import SwiftUI

struct DashboardView: View {
    let activities: [ProgressBarItem] = [
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
    
    let foodMacros: [ProgressBarItem] = [
        .init(
            title: "Protein",
            value: "850 / 1000 kcal",
            progress: 0.6,
            color: .white
        ),
        .init(
            title: "Carbs",
            value: "42 / 60 min",
            progress: 0.6,
            color: .white
        ),
        .init(
            title: "Fats",
            value: "10 / 12 hr",
            progress: 0.6,
            color: .white
        )
    ]

    var body: some View {
        ZStack {
            ColorTokens.Background.secondary.ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20) {
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
                                    ProgressBarView(item: item)
                                }
                            }
                        }
                        .padding()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(ColorTokens.Brand.primary)
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Nutrition")
                                        .textCase(.uppercase)
                                        .foregroundStyle(ColorTokens.Background.secondary)
                                        .font(.caption)
                                    
                                    Text("1,840")
                                        .foregroundStyle(Color.white)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    
                                    Text("Calories remaining")
                                        .foregroundStyle(ColorTokens.Background.secondary)
                                        .font(.callout)
                                }
                                .padding()
                                Spacer()
                            }
                            VStack {
                                ForEach(foodMacros) { item in
                                    ProgressBarView(item: item)
                                }
                            }
                            .foregroundStyle(Color.white)
                            .padding()
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(Color.gray.opacity(0.2))
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Recent Workouts")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                    Text("Your performance is increasing steadily")
                                }
                                Spacer()
                                Button {
                                    
                                } label: {
                                    Text("View All")
                                        .textCase(.uppercase)
                                        .foregroundStyle(ColorTokens.Brand.tertiary)
                                        .fontWeight(.bold)
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
