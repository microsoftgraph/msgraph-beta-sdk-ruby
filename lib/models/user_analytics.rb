require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserAnalytics < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of work activities that a user spent time on during and outside of working hours. Read-only. Nullable.
            @activity_statistics
            ## 
            # The current settings for a user to use the analytics API.
            @settings
            ## 
            ## Gets the activityStatistics property value. The collection of work activities that a user spent time on during and outside of working hours. Read-only. Nullable.
            ## @return a activity_statistics
            ## 
            def activity_statistics
                return @activity_statistics
            end
            ## 
            ## Sets the activityStatistics property value. The collection of work activities that a user spent time on during and outside of working hours. Read-only. Nullable.
            ## @param value Value to set for the activity_statistics property.
            ## @return a void
            ## 
            def activity_statistics=(value)
                @activity_statistics = value
            end
            ## 
            ## Instantiates a new userAnalytics and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_analytics
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserAnalytics.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activityStatistics" => lambda {|n| @activity_statistics = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ActivityStatistics.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Settings.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("activityStatistics", @activity_statistics)
                writer.write_object_value("settings", @settings)
            end
            ## 
            ## Gets the settings property value. The current settings for a user to use the analytics API.
            ## @return a settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The current settings for a user to use the analytics API.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
        end
    end
end
