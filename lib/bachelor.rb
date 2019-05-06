require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |year, cast|
    if year.to_s == season
      cast.each do |person|
        if person["status"] == "Winner"
          return person["name"].split[0]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  homies = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        homies << contestant["name"]
      end
    end
  end
  homies.length
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |year, contestants|
      if year.to_s == season
          contestants.each do |contestant|
              ages << contestant["age"].to_f
          end
      end
  end
  (ages.sum / ages.size).round
end
