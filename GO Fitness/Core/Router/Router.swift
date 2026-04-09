//
//  Router.swift
//  GO Fitness
//
//  Created by Youssif Hany on 09/04/2026.
//

import SwiftUI
import Combine

public final class Router<Routes: Routable>: ObservableObject, RoutableObject {
    
    public typealias Destination = Routes
    @Published public var stack: [Destination] = []
    
    public init() { }
}
