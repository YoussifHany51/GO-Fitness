//
//  ActivityRowItem.swift
//  GO Fitness
//
//  Created by Youssif Hany on 02/05/2026.
//

import SwiftUI

struct ProgressBarItem: Identifiable {
    let id = UUID()
    let icon: String?
    let title: String?
    let value: String?
    let progress: CGFloat
    let color: Color
    
    init(icon: String? = nil,
         title: String? = "",
         value: String? = "",
         progress: CGFloat,
         color: Color
    ) {
        self.icon = icon
        self.title = title
        self.value = value
        self.progress = progress
        self.color = color
    }
}
