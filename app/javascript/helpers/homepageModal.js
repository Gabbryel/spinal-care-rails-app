const reviewToggle = () => {
  if (document.getElementById('review-modal')) {
    const modal = document.getElementById('review-modal');
    const carouselModalBtn = document.getElementById('new-review');
    const navModalBtn = document.getElementById('nav-review-btn');
    const body = document.getElementsByTagName('body')[0];
    const closeReviewModal = document.getElementById('btn-close');
    const showModal = () => {
        modal.classList.add('review-modal-active')
        body.classList.add('short-body')
    }
    carouselModalBtn.addEventListener('click', showModal);
    navModalBtn.addEventListener('click', showModal);

    closeReviewModal.addEventListener('click', () => {
      modal.classList.remove('review-modal-active')
      body.classList.remove('short-body')
    })
    }
  }


export { reviewToggle };