`RAILS_ENV=test rails s -d -p 4000`

at_exit do
  `kill -9 $(cat tmp/pids/server.pid)`
end

Before ('@login') do
  RestClient.post("http://localhost:4000/auth",
                  {
                      "email" => 'joseph.yao.ruozhou@gmail.com',
                      "password" => '123456'
                  }
  )
  wait_for_element_exists "* id:'email'"
  enter_text("* id:'email'", 'joseph.yao.ruozhou@gmail.com')
  wait_for_element_exists "* id:'password'"
  enter_text("* id:'password'", '123456')
  touch("* id:'email_sign_in_button'")
end