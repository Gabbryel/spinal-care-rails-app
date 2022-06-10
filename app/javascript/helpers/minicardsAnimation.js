const minicardsAnimation = () => {
  let minicards = Array.from(document.getElementsByClassName('minicard-animation'));
  if (minicards) {
    window.addEventListener('scroll', (e) => {
        e.preventDefault
        minicards.forEach(mc => {
          let windowHeight = window.innerHeight;
          let mcDistanceFromTop = mc.getBoundingClientRect().top;
          if (mcDistanceFromTop < windowHeight * .88 ) {
            mc.classList.add('active-mc')
          } else {
            mc.classList.remove('active-mc')
          }
        })
      }, {passive: true})
  }
}

export {minicardsAnimation};