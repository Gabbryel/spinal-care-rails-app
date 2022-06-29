const toggleFilterForm = () => {
  const btnOpenForm = document.getElementsByClassName('fa-filter')[0];
  const form = document.getElementsByClassName('members-filter-form')[0];

  btnOpenForm.addEventListener('click', () => {
    form.classList.toggle('members-filter-form-active')
  })
}

export { toggleFilterForm }