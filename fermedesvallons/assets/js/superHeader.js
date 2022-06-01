let superHeader = document.querySelector('p.js-custom-header')
let contenus = [
  'ðŸšš La livraison en point relais est maintenant disponible. ðŸšš',
  'Commander ici et retirer votre commande sur un marchÃ©.',
]
let i = 0

const switchContent = function() {
  superHeader.innerText = contenus[i]

  i++

  if(i == contenus.length) {
    i = 0
  }
}

switchContent()

var myVar;

function myFunction() {
  myVar = setInterval(switchContent, 6000);
}

myFunction()