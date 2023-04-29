# (current_user)
def authentificate_test_user
  # Your code here

  user = User.find_by(email: 'testemail@gmail.com')

  if user
    visit '/users/sign_in'
    fill_in 'Email*', with: 'testemail@gmail.com'
    fill_in 'Password*', with: 'testPassword'
    click_button 'Log in'
  else
    # sign up
    visit '/users/sign_up'
    fill_in 'Enter your name here', with: 'testName'
    fill_in 'Enter your email', with: 'testemail@gmail.com'
    fill_in 'Enter new password', with: 'testPassword'
    fill_in 'Confirm password', with: 'testPassword'
    click_button 'Sign up'
    user = User.find_by(email: 'testemail@gmail.com')
  end
  user
end
