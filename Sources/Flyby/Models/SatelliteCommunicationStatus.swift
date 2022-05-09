// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let satelliteCommunicationStatus = try SatcommStatus(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.satelliteCommunicationStatusTask(with: url) { satelliteCommunicationStatus, response, error in
//     if let satelliteCommunicationStatus = satelliteCommunicationStatus {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - SatcommStatus
struct SatelliteCommunicationStatus: Codable {
    /// "inactive" / "active"
    let commlink: String?
    
    /// "not-stale"
    let linkparams: String?
}

// MARK: SatcommStatus convenience initializers and mutators

extension SatelliteCommunicationStatus {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SatelliteCommunicationStatus.self, from: data)
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
        commlink: String?? = nil,
        linkparams: String?? = nil
    ) -> SatelliteCommunicationStatus {
        return SatelliteCommunicationStatus(
            commlink: commlink ?? self.commlink,
            linkparams: linkparams ?? self.linkparams
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
