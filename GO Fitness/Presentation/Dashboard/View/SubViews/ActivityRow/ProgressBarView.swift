//
//  ProgressBarView.swift
//  GO Fitness
//
//  Created by Youssif Hany on 02/05/2026.
//

import SwiftUI

struct ProgressBarView: View {
    let item: ProgressBarItem
    init(item: ProgressBarItem) {
        self.item = item
    }
    var body: some View {
        HStack(spacing: 20) {
            if let icon = item.icon {
                Image(systemName: icon)
                    .foregroundStyle(item.color)
                    .font(.headline)
                    .fontWeight(.black)
                    .frame(width: 24)
            }

            VStack(spacing: 4) {
                HStack {
                    if let title = item.title {
                        Text(title)
                            .textCase(.uppercase)
                            .font(.callout)
                            .fontWeight(.medium)
                    }

                    Spacer()

                    if let value = item.value {
                        Text(value)
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundStyle(item.color)
                    }
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
