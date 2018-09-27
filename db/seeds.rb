
if Rails.env.development?
    [Seat, User, Fpga].each(&:delete_all)

     spinner = TTY::Spinner.new("[:spinner] Populate User ...")
     spinner.auto_spin
     sleep(1)


     User.create!(
       admin: true,
       name: 'Admin',
       email: 'admin@admin.com',
       password: "123456",
       password_confirmation: "123456",
       reset_password_token: nil,
       reset_password_sent_at: nil,
       remember_created_at: nil,
       sign_in_count: 1,
       current_sign_in_at: Time.now,
       last_sign_in_at: Time.now,
       current_sign_in_ip: "127.0.0.1",
       last_sign_in_ip: "127.0.0.1"
     )

     spinner.success("")

     spinner = TTY::Spinner.new("[:spinner] Populate FPGAs ...")
     spinner.auto_spin
     sleep(1)

     5.times do |i|
       Fpga.create!(
         family: "Altera",
         model: "Ciclone",
         name: "DE#{i}" ,
         brief: "brief DE#{i}",
         switchs: 8,
         buttons: 4,
         leds: 8,
         sevensegs: 4

       )
     end

     spinner.success("")

    spinner = TTY::Spinner.new("[:spinner] Populate Seats ...")
    spinner.auto_spin
    sleep(1)

    fpgas = Fpga.all.pluck(:id)

    5.times do |i|
      Seat.create!(
        name: "Seat #{i}",
        fpga_id: fpgas[rand(fpgas.size)],
        user_id: nil,
        time_that_user_sat: nil
      )
    end

    spinner.success("")

  else
    puts "Você não está em ambiente de desenvolvimento!"
  end
