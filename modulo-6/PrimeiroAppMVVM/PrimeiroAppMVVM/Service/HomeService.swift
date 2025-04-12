//
//  HomeService.swift
//  PrimeiroAppMVVM
//r
//  Created by Jenifer Rocha on 10/04/25.
//

import UIKit
import Alamofire

// MARK: Camada de serviço responsável por fornecer os dados da Home. Atualmente utiliza dados mockados, mas pode ser adaptada para chamadas reais de API futuramente.

class HomeService {
    
    // MARK: Ideal para quando se trabalha com chamadas de rede (ex: APIs), onde a resposta pode não ser imediata. Deste modo retornamos atraves de um loading
    // MARK: O parâmetro `completion` é utilizado para retornar os dados de forma assíncrona quando estiverem prontos.
    
    func getHomeAlamofire(completion: @escaping (HomeData?, Error?) -> Void) {
        let url: String = "https://run.mocky.io/v3/47ba5b26-2912-4196-942d-e3f812688635"
        
        AF.request(url, method: .get).validate().responseDecodable(of: HomeData.self) { response in
            
            debugPrint(response)
            
            switch response.result {
                
            case .success(let success):
                print("SUCCESS -> \(#function)")
                completion(success, nil)
            case .failure(let error):
                print("ERROR -> \(#function)")
                completion(nil, error)
            }
        }
    }
    

    func getHomeJson(completion: @escaping (HomeData?, Error?) -> Void) {
        if let url = Bundle.main.url(forResource: "HomeData", withExtension: "json") { // buscar o arquivo HomeData
            do {
                let data = try Data(contentsOf: url) // atraves da url esta convertendo o json em um binario
                let homeData: HomeData = try JSONDecoder().decode(HomeData.self, from: data) // Esta criando um objeto, JSONDecoder é para converter o binario em objeto
                completion(homeData, nil)
            } catch  { // caso contrario... tivemos uma falha
                completion(nil, error)
            }
        }
    }
    
}
