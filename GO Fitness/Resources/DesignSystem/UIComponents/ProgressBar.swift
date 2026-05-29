//
//  ProgressBar.swift
//  GO Fitness
//
//  Created by Youssif Hany on 02/05/2026.
//

import SwiftUI

public struct ProgressBar: View {
    var progress: CGFloat // 0.0 → 1.0
    var backgroundColor: Color = Color.gray.opacity(0.3)
    var progressColor: Color = .blue
    var cornerRadius: CGFloat = 8
    
    public init(progress: CGFloat, progressColor: Color) {
        self.progress = progress
        self.progressColor = progressColor
    }
    public var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                // Background
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(backgroundColor)

                // Progress
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(progressColor)
                    .frame(width: geometry.size.width * progress)
            }
        }
        
    }
}
