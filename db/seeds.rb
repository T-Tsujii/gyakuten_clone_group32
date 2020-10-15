User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts "ユーザーの初期データインポートに成功しました。"
end

AdminUser.find_or_create_by!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')