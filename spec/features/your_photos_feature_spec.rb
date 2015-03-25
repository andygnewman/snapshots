require 'rails_helper'

feature 'your photos' do

  context 'user not logged in' do

    it 'should display a prompt to login or sign up' do
      visit '/posts'
      expect(page).to have_content('You must log in or sign up to view your snapshots')
    end

  end

  context 'user logged in' do

    before do
      sign_up('test')
    end

    context 'user has no posted Snapshots' do

      it 'should tell the user they do not have any snapshots' do
        expect(page).to have_content 'You have not yet posted any Snapshot!s'
      end

    end

    context 'user has previously posted a snapshot' do

      it 'should display the snapshots a user has previously posted' do
        new_post('My first Snapshot!')
        expect(page).to have_content 'My first Snapshot!'
      end

      it 'should display the snapshots in order of most recent first' do
        new_post('My first Snapshot!')
        new_post('My second Snapshot!')
        within(:css, "section#your-snapshots") do
          expect(page.all('li')[0]).to have_content 'My second Snapshot!'
          expect(page.all('li')[1]).to have_content 'My first Snapshot!'
        end
      end

    end

  end

end
