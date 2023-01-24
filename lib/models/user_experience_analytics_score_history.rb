require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analytics device startup score history.
    class UserExperienceAnalyticsScoreHistory < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The user experience analytics device startup date time.
        @startup_date_time
        ## 
        ## Instantiates a new userExperienceAnalyticsScoreHistory and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_score_history
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsScoreHistory.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "startupDateTime" => lambda {|n| @startup_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("startupDateTime", @startup_date_time)
        end
        ## 
        ## Gets the startupDateTime property value. The user experience analytics device startup date time.
        ## @return a date_time
        ## 
        def startup_date_time
            return @startup_date_time
        end
        ## 
        ## Sets the startupDateTime property value. The user experience analytics device startup date time.
        ## @param value Value to set for the startupDateTime property.
        ## @return a void
        ## 
        def startup_date_time=(value)
            @startup_date_time = value
        end
    end
end
