const showSpecialtyInput = () => {
  const searchProfessionInput = document.getElementsByClassName('search_roles')[0];
  const searchSpecialtyInput = document.getElementsByClassName('search_specialty')[0];
  const professionsWithSpecialties = ['medic', 'asistent medical']
  searchProfessionInput.addEventListener('change', () => {
    if ( professionsWithSpecialties.includes(searchProfessionInput.firstChild.value)) {
      searchSpecialtyInput.classList.add('show-specialty-input');
    } else if (!professionsWithSpecialties.includes(searchProfessionInput.firstChild.value)) {
      searchSpecialtyInput.classList.remove('show-specialty-input');
    }
  })

}

export { showSpecialtyInput };