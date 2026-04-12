//
//  APIError.swift
//  GO Fitness
//
//  Created by Youssif Hany on 12/04/2026.
//

import Foundation

enum APIError: Error {
    case invalideResponse
    case httpError(statusCode: Int, data: Data?)
    case decodingError(Error)
    case networkError(Error)
}
