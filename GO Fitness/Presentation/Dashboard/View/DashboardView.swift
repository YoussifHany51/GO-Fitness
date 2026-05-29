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
                        VStack(spacing: 20) {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Recent Workouts")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                    Text("Your performance is increasing steadily")
                                        .fixedSize(horizontal: false, vertical: true)
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
                            .padding()

                            WorkoutCardView(icon: Image(systemName:"figure.run"),
                                            title: "Morning Interval Run",
                                            duration: "24",
                                            calories: "340",
                                            time: "8:30 AM")

                            WorkoutCardView(icon: Image(systemName:"dumbbell.fill"),
                                            title: "Full Body Strength",
                                            duration: "45",
                                            calories: "210",
                                            time: "Yesterday")
                        }
                        .padding()
                    }
                    GeometryReader { geometry in
                        VStack(spacing: 0) {

                            Image("mealPic")
                                .resizable()
                                .scaledToFill()
                                .frame(
                                    width: geometry.size.width,
                                    height: geometry.size.height * 0.5
                                )
                                .overlay(alignment: .topTrailing) {
                                    Text("Latest Meal")
                                        .textCase(.uppercase)
                                        .foregroundStyle(Color.black)
                                        .font(.callout)
                                        .fontWeight(.medium)
                                        .padding()
                                        .frame(height: 30)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Color.white)
                                        )
                                        .padding()
                                }
                                .clipShape(
                                    UnevenRoundedRectangle(
                                        topLeadingRadius: 20,
                                        bottomLeadingRadius: 0,
                                        bottomTrailingRadius: 0,
                                        topTrailingRadius: 20
                                    )
                                )

                            VStack(alignment: .leading, spacing: 4) {
                                Text("Quinoa Power Bowl")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                Text("High in fiber and lean protein")
                                    .font(.callout)
                                    .fontWeight(.light)
                                HStack {
                                    VStack {
                                        Text("KCAL")
                                            .foregroundStyle(Color.gray)
                                            .fontWeight(.medium)
                                            .font(.footnote)
                                        Text("450")
                                            .foregroundStyle(ColorTokens.Brand.tertiary)
                                            .fontWeight(.semibold)
                                    }
                                    MealsMacrosDetailsView(title: "PROTEIN", macros: "24")
                                    MealsMacrosDetailsView(title: "CARBS", macros: "58")
                                    MealsMacrosDetailsView(title: "FATS", macros: "12")
                                }
                                .padding(.vertical)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()

                            Spacer()
                        }
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    .frame(height: 300)
                    .overlay(alignment: .bottomTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                                .fontWeight(.bold)
                                .foregroundStyle(Color.white)
                                .frame(width: 60, height: 60)
                                .background(
                                    Circle()
                                        .fill(ColorTokens.Brand.primary)
                                )
                        }
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
