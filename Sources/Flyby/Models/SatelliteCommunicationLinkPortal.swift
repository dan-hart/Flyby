// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let satelliteCommunicationLinkPortal = try SatCommlinkPortal(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.satelliteCommunicationLinkPortalTask(with: url) { satelliteCommunicationLinkPortal, response, error in
//     if let satelliteCommunicationLinkPortal = satelliteCommunicationLinkPortal {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - SatCommlinkPortal
struct SatelliteCommunicationLinkPortal: Codable {
    /// "conn_ok"
    let status: String?
    
    /// "Sun May  1 18:35:10 2022"
    /// This might be in AKDT?
    /// AKDT — Alaska Daylight Time
    /// -3 hours from actual time: 21:35:10
    /// -4 hours from destination time
    let time: String?
}

// MARK: SatCommlinkPortal convenience initializers and mutators

extension SatelliteCommunicationLinkPortal {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SatelliteCommunicationLinkPortal.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        status: String?? = nil,
        time: String?? = nil
    ) -> SatelliteCommunicationLinkPortal {
        return SatelliteCommunicationLinkPortal(
            status: status ?? self.status,
            time: time ?? self.time
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
