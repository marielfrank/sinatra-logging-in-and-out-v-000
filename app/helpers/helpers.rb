class Helpers
  def current_user(session)
    User.find_by(id: session[:id])
  end

  def is_logged_in?(session)
    !!session[:id] == current_user(session).id
  end
end