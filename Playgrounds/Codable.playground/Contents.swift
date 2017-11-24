//: Playground - noun: a place where people can play

import UIKit

//var jsonString = """
//{
//"name": "麺爆怒門",
//"urls": {
//"ramendb": "https://ramendb.supleks.jp/s/88121.html"
//},
//"open": "11:00～14:00／18:00～21:00",
//"holiday": "火曜",
//"latlng": {
//"latitude": 37.0578431,
//"longitude": 138.2605566
//},
//"type": 1,
//"adress": "〒944-0008 新潟県妙高市柳井田町4-11-16",
//"id": 779
//}
//"""

var jsonString = """
{
    "name": "麺爆怒門",
    "urls": {
        "ramendb": "https://ramendb.supleks.jp/s/88121.html"
    },
    "open": "11:00～14:00／18:00～21:00",
    "holiday": "火曜",
    "latlng": {
        "latitude": 37.0578431,
        "longitude": 138.2605566
    },
    "type": 1,
    "adress": "〒944-0008 新潟県妙高市柳井田町4-11-16",
    "id": 779
}
"""

print(jsonString)

struct LatLng: Codable {
    let latitude: Float
    let longitude: Float
}

struct JiroItem: Codable {
    let adress: String
    let holiday: String
    let id: Int
    let name: String
    let open: String
    let type: Int
    let urls: [String: String]
    let latlng: LatLng
    
}
let data: Data! = jsonString.data(using: .utf8)

let decoder: JSONDecoder = JSONDecoder()
do {
    let newJson: JiroItem = try decoder.decode(JiroItem.self, from: data)
    print(newJson) //Success!!!
} catch {
    print("json convert failed in JSONDecoder", error.localizedDescription)
}
