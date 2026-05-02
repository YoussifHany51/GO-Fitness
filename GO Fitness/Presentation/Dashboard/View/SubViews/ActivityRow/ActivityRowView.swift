//
//  ActivityRowView.swift
//  GO Fitness
//
//  Created by Youssif Hany on 02/05/2026.
//

import SwiftUI

struct ActivityRowView: View {
    let item: ActivityItem

    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: item.icon)
                .foregroundStyle(item.color)
                .font(.headline)
                .fontWeight(.black)
                .frame(width: 24)

            VStack(spacing: 4) {
                HStack {
                    Text(item.title)
                        .textCase(.uppercase)
                        .font(.callout)
                        .fontWeight(.medium)

                    Spacer()

                    Text(item.value)
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundStyle(item.color)
                }

                ProgressBar(
                    progress: item.progress,
                    progressColor: item.color
                )
                .frame(height: 8)
            }
        }
    }
}
