//
//  ActivityRowItem.swift
//  GO Fitness
//
//  Created by Youssif Hany on 02/05/2026.
//

import SwiftUI

struct ActivityItem: Identifiable {
    let id = UUID()
    let icon: String
    let title: String
    let value: String
    let progress: CGFloat
    let color: Color
}
