namespace :line do
  #desc "TODO"
  task alarm: :environment do
    AlarmService.new.run
  end

end
