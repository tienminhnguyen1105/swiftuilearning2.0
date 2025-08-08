//
//  Bundle+Ext.swift
//  mvvmc
//
//  Created by Nguyễn Đình Đông on 28/06/2022.
//

import Foundation
import ObjectMapper
import SwiftyJSON

extension Bundle {
    var displayName: String {
        if let appName = object(forInfoDictionaryKey: "CFBundleDisplayName") as? String {
            return appName
        }
        return "This app"
    }
    
    /// Hàm hỗ trợ map json file trong project
    ///
    /// - Parameters:
    ///     - file: File JSON được lưu trong Resources
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the json file
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // 2. Create property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // 4. Return the ready-to-use data
        return loaded
    }
    
    func decode2Array<T: Mappable>(_ type: T.Type, file: String) -> [T] {
        // 1. Load local file
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // 2. Create property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        do {
            // 3. Convert data to json
            let json = try JSON(data: data)
            print("-->\"\(url.absoluteString)\":  \(json)")
            let arrayValue = json.arrayValue
            let result = arrayValue.map { T.init(JSON: $0.rawValue as! [String : Any])}
            return result.compactMap {$0}
        }
        catch {
            return []
        }
    }
}
