//
//  HomeService.swift
//  PrimeiroAppMVVM
//r
//  Created by Jenifer Rocha on 10/04/25.
//

import UIKit
import Alamofire

// MARK: Camada de serviço responsável por fornecer os dados da Home. Atualmente utiliza dados mockados, mas pode ser adaptada para chamadas reais de API futuramente.

enum ErrorDetail: Swift.Error { // customizar os tipos de erros
    case errorURL(urlString: String)
    case detailError(detail: String )
    
}

class HomeService {
    
    // MARK: Ideal para quando se trabalha com chamadas de rede (ex: APIs), onde a resposta pode não ser imediata. Deste modo retornamos atraves de um loading
    // MARK: O parâmetro `completion` é utilizado para retornar os dados de forma assíncrona quando estiverem prontos.
    
    func getHomeURLSession(completion: @escaping (HomeData?, Error?) -> Void) {
        
        // Criamos a URL
        let urlString: String = "https://run.mocky.io/v3/69ead729-7138-4c2f-9d6a-486a81cf940a"
        
        // Transformamos ela em uma URL definitiva
        guard let url: URL = URL(string: urlString) else { return completion(nil, ErrorDetail.errorURL(urlString: urlString))}
        
        // Criamos uma Request, o corpo da requisicao na qual vamos informar as principais atribuiçoes
        var request = URLRequest(url: url)
        request.httpMethod = "GET" // tipo do metodo vai ser GET
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            // Remover a opcionalidade do data
            guard let dataResult = data else { return completion(nil, ErrorDetail.detailError(detail: "Error Data"))}
            
            // Transformar um binário em Json pra printar
            let json = try? JSONSerialization.jsonObject(with: dataResult, options: [])
            print(json as Any)
            
            // Remover a opcionalidade do response e informando que ela é do tipo HTTPURLResponse para acessar uma propriedade mto especifica -> StatusCode
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 { // se ele for 200 entao   sucesso
                do {
                    let homeData: HomeData = try JSONDecoder().decode(HomeData.self, from: dataResult)
                    print("SUCESS -? \(#function)")
                    completion(homeData, nil)
                } catch  {
                    print("ERROR -> \(#function)")
                    completion(nil, error)
                }
            } else { // caso contrario, tivemos uma falha
                print("ERROR -> \(#function)")
                completion(nil, error)
            }
        }
        task.resume()
    }
    
    func getHomeAlamofire(completion: @escaping (HomeData?, Error?) -> Void) {
        let url: String = "https://run.mocky.io/v3/69ead729-7138-4c2f-9d6a-486a81cf940a"
        
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
