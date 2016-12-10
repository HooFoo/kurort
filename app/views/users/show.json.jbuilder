if @user.new_record?
  json.logged false
else
  json.logged true
  json.extract! @user, :username
end
