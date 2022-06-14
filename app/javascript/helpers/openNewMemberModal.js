const openNewMemberModal = () => {
  const btnOpen = document.getElementById('create-new-member');
  const form = document.getElementById('new_member_modal');
  const btnClose = document.getElementById('btn-close');

  const btnsEditMode = Array.from(document.getElementsByClassName('member-edit-btn'));
  const forms = Array.from(document.getElementsByClassName('edit_member_modal'));
  const btnsCloseEditMode = Array.from(document.getElementsByClassName('btn-close'));

  btnOpen.addEventListener('click', () => {
    form.classList.add('new_member_modal-active');
  })

  btnClose.addEventListener('click', () => {
    form.classList.remove('new_member_modal-active');
  })

  btnsEditMode.forEach( (btn, i) => {
    btn.addEventListener('click', () => {
      forms[i].classList.remove('edit_member_modal')
      forms[i].classList.add('edit_member_modal-active');
    })
  })

  btnsCloseEditMode.forEach((btn, i) => {
    btn.addEventListener('click', () => {
      const form = document.getElementsByClassName('edit_member_modal-active')[0]
      form.classList.add('edit_member_modal');
      form.classList.remove('edit_member_modal-active')
    })
  })
}

export { openNewMemberModal };