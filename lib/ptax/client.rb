module Ptax
  class Client
    include Helpers::RestHelper
    
    def download_ptax_csv(params = {})
      csv_link = find_daily_ptax_csv_link(:date => params[:date])
      File.open(params[:path], 'w') { |f| f.write(get csv_link) }
    end


    def find_daily_ptax_csv_link(params = {})
      doc = parse_html(post "http://www4.bcb.gov.br/pec/taxas/port/PtaxRPesq.asp", 
                         :RadOpcao => '2',
                         :DATAINI => params[:date],
                         :ChkMoeda => '220',
                         :OPCAO => '2')

      doc.css('.conteudo a').first.attributes["href"].value            
    end
  end
end
