

import Foundation



struct News: Identifiable, Codable {
    let id=UUID()
    let title: String
    let sottotitolo: String
    let image: String
    let contenuto: String
    let fonte: String
    //    static func getData() -> [News] {
    //                    if let path=Bundle.main.path(forResource: "news", ofType: "json"){
    //                        do{
    //                        let data = try Data(contentsOf: URL(fileURLWithPath: path))
    //                        return try JSONDecoder().decode([News].self, from: data)
    //                        }catch{
    //
    //                        }
    //                    }
    //                    return a
    //        }
    
}

public class DataLoader {
    
    @Published var articolo = [News]()
    init() {
        load()
    }
    func load(){
        if let fileLocation = Bundle.main.url(forResource: "MOCK_DATA",withExtension: "json"){
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([News].self, from: data)
                self.articolo = dataFromJson
            } catch {
                print(error)
            }
        }
        
    }
}

var a : [News] = [
    News.init(title: "CIAO", sottotitolo: "COME", image: "", contenuto: "?", fonte: "CIAOOO"),
]


//var aNews : DataLoader =  DataLoader.load(DataLoader)





