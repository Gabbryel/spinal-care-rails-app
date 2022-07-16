require "application_system_test_case"

class MembersTest < ApplicationSystemTestCase
  test 'create a new member' do
    visit team_members_path
    assert 'h3', text: 'Secțiunea pentru adăugare/editare membri'

    find_link("Adaugă un membru")
    # click_on "Adaugă un membru"
    # assert_selector "h4", text: "Creează un membru nou"

    # fill_in 'first_name', with: 'Helen'
    # fill_in 'last_name',	with: "Robertson"
    # fill_in 'role',	with: 'medic'
    # fill_in "specialty",	with: "none"

    # click_on 'Trimite'
  end
end
