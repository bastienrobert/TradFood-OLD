/*
  Initialisation du Fullpage */
  $(function(){
    $('#fullpage').fullpage()
    $('.section').height("100%") // Correction bug hauteur sur firefox ..
  })

  AOS.init();
