const reviewToggle = () => {
  const modal = document.getElementById('review-modal');
  if (modal) {
    const body = document.getElementsByTagName('body')[0];
    const navModalBtn = document.getElementById('nav-review-btn');
    const closeReviewModal = document.getElementById('btn-close');
    navModalBtn.addEventListener('click', () => {
      modal.classList.add('review-modal-active')
      body.classList.add('short-body')
    })
    closeReviewModal.addEventListener('click', () => {
      modal.classList.remove('review-modal-active')
      body.classList.remove('short-body')
    }
      )
    }
  }


export { reviewToggle };