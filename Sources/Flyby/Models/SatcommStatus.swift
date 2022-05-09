// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let satcommStatus = try SatcommStatus(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.satcommStatusTask(with: url) { satcommStatus, response, error in
//     if let satcommStatus = satcommStatus {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - SatcommStatus
struct SatcommStatus: Codable {
    let commlink, linkparams: String?
}

// MARK: SatcommStatus convenience initializers and mutators

extension SatcommStatus {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SatcommStatus.self, from: data)
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
    ) -> SatcommStatus {
        return SatcommStatus(
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
