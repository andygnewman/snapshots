require 'rails_helper'

feature 'dislay all posts' do

  context 'should display posts by all users most recent first' do

    it 'should show the first one first if only one' do
      sign_up('test')
      new_post('My first Snapshot!')
      click_link 'Sign out'
      expect(page).to have_content 'My first Snapshot!, posted by test@example.com'
    end

    it 'should show the second one followed by the first one if two' do
      sign_up('jim')
      new_post('Jims first Snapshot!')
      click_link 'Sign out'
      sign_up('bob')
      new_post('Bobs first Snapshot!')
      click_link 'Sign out'
      within(:css, "section#most-recent-snapshots") do
        expect(page.all('li')[0]).to have_content 'Bobs first Snapshot!, posted by bob@example.com'
        expect(page.all('li')[1]).to have_content 'Jims first Snapshot!, posted by jim@example.com'
      end
    end

  end

end
