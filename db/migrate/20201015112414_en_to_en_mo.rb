class EnToEnMo < ActiveRecord::Migration[5.2]
    def up
      User.find_each do |user|
        if user.locale == 'en'
          user.update(locale: 'en-MO')
        end
      end
    end
    
    def down
      User.find_each do |user|
        if user.locale == 'en-MO'
          user.update(locale: 'en')
        end
      end
    end
end
