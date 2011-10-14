module Ptax
  class Client
    include Helpers::RestHelper
    
    def find_daily_ptax_csv_link(params = {})
      doc = post "http://www4.bcb.gov.br/pec/taxas/port/PtaxRPesq.asp", 
        #RadOpcao=2&DATAINI=13%2F10%2F2011&ChkMoeda=220&OPCAO=2
        :RadOpcao => '2',
        :DATAINI => params[:date],
        :ChkMoeda => '220',
        :OPCAO => '2'
      doc.css('.conteudo a').first.attributes["href"].value            
    end
  end
end
