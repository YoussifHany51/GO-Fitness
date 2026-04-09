//
//  RoutingManagerView.swift
//  GO Fitness
//
//  Created by Youssif Hany on 09/04/2026.
//

import SwiftUI

struct RoutingManagerView<Root: View, Routes: Routable> : View {
    @Binding private var routes: [Routes]
    private let root: () -> Root
    
    public init(stack: Binding<[Routes]>,
                @ViewBuilder root: @escaping () -> Root) {
        self._routes = stack
        self.root = root
    }

    var body: some View {
        NavigationStack(path: $routes) {
            root()
                .navigationDestination(for: Routes.self) { view in
                    view.body
                }
        }
    }
}
