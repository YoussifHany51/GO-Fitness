//
//  APIService.swift
//  GO Fitness
//
//  Created by Youssif Hany on 12/04/2026.
//

import Foundation

final class APIService {

    static let shared = APIService()
    private init() {}

    func fetchAPI<T: Decodable>(url: URL,
                                method: HTTPMethod = .GET,
                                headers: [String: String]? = nil,
                                body: Data? = nil,
                                decoder: JSONDecoder = JSONDecoder()) async throws -> T {

        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.httpBody = body
        headers?.forEach { request.setValue($1, forHTTPHeaderField: $0) }

        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse else {
                throw APIError.invalideResponse
            }

            guard (200...299).contains(httpResponse.statusCode) else {
                throw APIError.httpError(statusCode: httpResponse.statusCode, data: data)
            }

            do {
                return try decoder.decode(T.self, from: data)
            } catch {
                throw APIError.decodingError(error)
            }

        } catch {
            throw APIError.networkError(error)
        }
    }
}

// MARK: HTTP methods
extension APIService {
    enum HTTPMethod: String {
        case GET, POST, PUT, DELETE, PATCH
    }
}
