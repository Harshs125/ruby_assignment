require 'json'

module Country_Analysis
    def eligible_for_loan
        if @GDP > 7
            return true
        else
            return false
        end
    end

    def eligible_for_UN
        if @states>15
            return true
        else 
            return false
        end
    end

    def can_win_war?
        if @army_strength > 1500
            return true
        else
            return false
        end   
    end
end
    







class Country
    include Country_Analysis
    attr_accessor :name,:population,:GDP,:states,:army_strength,:development_status
    def initialize(data)
        @name=data.fetch('name')
        @population=data.fetch('population')
        @GDP=data.fetch('gdp')
        @states=data.fetch('states')
        @army_strength=data.fetch('army_strength')
        @development_status=data.fetch('development_status')  
    end
end


class Run_Country_Analysis
    file_path = './countries_data.json'
    json_data = File.read(file_path)
    countries = JSON.parse(json_data)
    countries.each do |country|
        obj=Country.new(country)
        if obj.eligible_for_loan
            puts "#{country.fetch('name')} is eligible for loan"
        else
            puts "#{country.fetch('name')} is eligible for load"
        end

        if obj.eligible_for_UN
            puts "#{country.fetch('name')} is eligible for UN seats"
        else
            puts "#{country.fetch('name')} is not eligbile for UN seats"
        end

        if obj.can_win_war?
            puts "#{country.fetch('name')} can win a war"
        else
            puts "#{country.fetch('name')} cannot win a war"
        end
    end
end

    


Run_Country_Analysis