class Cep
        include HTTParty
      
        def pesquisa_cep(cep)
          url = "https://viacep.com.br/ws/#{cep}/json/"
          HTTParty.get(url)
        end
      
    
end