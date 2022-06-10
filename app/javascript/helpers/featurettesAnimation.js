const featurettesAnimation = () => {
  let featurettes = Array.from(document.getElementsByClassName('f-animation'));
  if (featurettes) {
    window.addEventListener('scroll', () => {
      featurettes.forEach(f => {
        let windowHeight = window.innerHeight;
        let fDistanceFromTop = f.getBoundingClientRect().top;
        if (fDistanceFromTop < windowHeight * .90 ) {
          f.classList.add('active-f')
        } else {
          f.classList.remove('active-f')
        }
      })
    }, {passive: true})
  }
}

export {featurettesAnimation};