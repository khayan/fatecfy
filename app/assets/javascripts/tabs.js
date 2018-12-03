// turbolink chama a função para não travar
$(document).on("turbolinks:load", function(){
  $("div.tabs.shared li").click(function(){
      
    // faz a troca de abas, removendo a anterior
    let target = $(this).children("a").prop("target");
    $("div.tabs.shared li").removeClass("is-active");
    $(this).addClass("is-active");
    
    // faz a troca do conteúdo (resultados da search) juntamente com a aba correspondente
    $("div.tabs-content div.tab-item").removeClass("active");
    $(`div.tabs-content div${target}`).addClass("active");
  });
});