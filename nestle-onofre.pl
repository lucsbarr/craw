use use qw( common::sense YADA Web::Scraper DDP );
  
my $dom = scraper {
  process '#lblProductName', 'name' => 'TEXT';
  process '#cphConteudo_imgGrande','image' => '@src';
  process '#breadcrumbs a:not(:first-child)', 'categories[]' => 'TEXT';
  process '.preco_por','price' => ['TEXT', sub{ s/,/./g; s/[^0-9\.]//gi }];
  process '#cphConteudo_lblProductManufacturer a','brand' => 'text';
  process '#cphConteudo_lblDescriptionResume','resume' => 'text';
  process '#cphConteudo_lblCode','id_product' => ['text', sub{ s/[^0-9]//g}];
  process '#divDescricao','description' => 'text';
};
 

YADA->new( http_response => 1, max => 10, common_opts => { FOLLOWLOCATION => 1,USERAGENT => "googlebot" } )->append(
  #[ @{ $loc->{url} } ] => sub {
  [ qw(
  http://www.onofre.com.br/barra%20de%20cereal%20nestle%20aveia%20e%20chocolate%2020g/2657/05
http://www.onofre.com.br/barra%20de%20cereal%20nestle%20banana%20e%20chocolate%2020g/2659/05
http://www.onofre.com.br/barra%20de%20cereal%20nestle%20banana,%20aveia%20e%20mel%2020g/2658/05
http://www.onofre.com.br/barra%20de%20cereal%20nestle%20coco%2020g/2660/05
http://www.onofre.com.br/barra%20de%20cereal%20nestle%20frutas%20vermelhas%2020g/2661/05
http://www.onofre.com.br/barra%20de%20cereal%20nestle%20morango%20e%20iogurte%2020g/2662/05
http://www.onofre.com.br/cereal%20matinal%20nestle%20nesfit%20300gr/6918/05
http://www.onofre.com.br/chocolate%20nestle%20classic%2030g%20diet%20alpino/7148/05
http://www.onofre.com.br/chocolate%20nestle%20classic%20diet%20ao%20leite%2030g/7150/05
http://www.onofre.com.br/papinha%20nestle%20120g%20banana%20com%20leite/31078/05
http://www.onofre.com.br/papinha%20nestle%20120g%20caju/31081/05
http://www.onofre.com.br/papinha%20nestle%20120g%20goiaba%20com%20leite/31086/05
http://www.onofre.com.br/papinha%20nestle%20120g%20maracuja/31095/05
http://www.onofre.com.br/papinha%20nestle%20120g%20pessego%20com%20leite/31098/05
http://www.onofre.com.br/papinha%20nestle%20120g%20uva/31099/05
http://www.onofre.com.br/papinha%20nestle%20baby%20ameixa%20120g%20a%20partir%20de%206%20meses/31077/05
http://www.onofre.com.br/papinha%20nestle%20baby%20banana%20c/%20aveia%20120g/31080/05
http://www.onofre.com.br/papinha%20nestle%20baby%20carne,%20legumes%20e%20mandioquinha%20115g/31074/05
http://www.onofre.com.br/papinha%20nestle%20baby%20frutas%20sortidas%20120g%20a%20partir%20de%206%20meses/31084/05
http://www.onofre.com.br/papinha%20nestle%20baby%20maca%20120g/31089/05
http://www.onofre.com.br/papinha%20nestle%20baby%20maca%20c/%20banana%20120g/31092/05
http://www.onofre.com.br/papinha%20nestle%20baby%20pera%20120g%20a%20partir%20de%206%20meses/31096/05
http://www.onofre.com.br/papinha%20nestle%20escondidinho%20de%20carne%20250g/31117/05
http://www.onofre.com.br/papinha%20nestle%20espaguetinho%20a%20bolonhesa%20250g/31118/05
http://www.onofre.com.br/papinha%20nestle%20feijoadinha%20250g/31119/05
http://www.onofre.com.br/papinha%20nestle%20frango%20com%20hortalicas%20115g/31075/05
http://www.onofre.com.br/papinha%20nestle%20frutas%20tropicais%20120g/31085/05
http://www.onofre.com.br/papinha%20nestle%20mamao%20e%20laranja%20120g/31093/05
http://www.onofre.com.br/papinha%20nestle%20manga%20e%20pera%20120g/31094/05
http://www.onofre.com.br/papinha%20nestle%20picadinho%20de%20carne%20250g/31120/05
http://www.onofre.com.br/papinha%20nestle%20pure%20de%20frango%20250g/31121/05
http://www.onofre.com.br/papinha%20nestle%20risotinho%20de%20frango%20250g/31122/05
http://www.onofre.com.br/papinha%20nestle%20strogonofinho%20com%20arroz%20250g/31123/05
http://www.onofre.com.br/sopinha%20crem%20nestle%20baby%20caldo%20de%20feijao,legumes%20e%20beterraba%20115g%20a%20pa/38844/05
http://www.onofre.com.br/sopinha%20crem%20nestle%20baby%20carne,arroz%20e%20caldo%20de%20feijao%20170g%20a%20partir%20d/38861/05
http://www.onofre.com.br/sopinha%20cremosa%20nestle%20baby%20carne%20c/%20legumes%20115g%20a%20partir%20de%206%20meses/38839/05
http://www.onofre.com.br/sopinha%20cremosa%20nestle%20baby%20carne%20c/%20legumes%20170g%20a%20partir%20de%208%20meses/38863/05
http://www.onofre.com.br/sopinha%20cremosa%20nestle%20baby%20carne,legumes%20e%20macarrao%20115g%20a%20partir%20de/38841/05
http://www.onofre.com.br/sopinha%20cremosa%20nestle%20baby%20galinha,legumes%20e%20macarrao%20115g%20a%20partir%20d/38846/05
http://www.onofre.com.br/sopinha%20cremosa%20nestle%20baby%20gema%20de%20ovo,carne%20e%20legumes%20115g/38838/05
http://www.onofre.com.br/sopinha%20cremosa%20nestle%20baby%20peru,legumes%20e%20arroz%20115g%20a%20partir%20de%206%20me/38847/05
http://www.onofre.com.br/sopinha%20nestle%20baby%20c/pedacos%20de%20galinha%20e%20legumes%20170g%20a%20partir%20de%208/38865/05
http://www.onofre.com.br/sopinha%20nestle%20baby%20carne,%20macarrao%20e%20legumes%20170g%20em%20pedacos%20a%20partir/38860/05
http://www.onofre.com.br/sopinha%20nestle%20baby%20lentilha%20e%20peito%20de%20frango%20115g%20a%20partir%20de%206%20mese/54142/05
) ] => sub {
    my ($me) = @_;
	#p$me->response;
    return if not $me->response->is_success;
    my $res = $dom->scrape( $me->response->decoded_content );
    $res->{url} = $me->final_url .'';
 
    delete $res->{$_} for qw/ _esp /;
	p$res;
  }
)->wait;
