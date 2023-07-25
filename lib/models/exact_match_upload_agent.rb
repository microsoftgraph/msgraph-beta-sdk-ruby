require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExactMatchUploadAgent < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The creationDateTime property
            @creation_date_time
            ## 
            # The description property
            @description
            ## 
            ## Instantiates a new exactMatchUploadAgent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exact_match_upload_agent
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExactMatchUploadAgent.new
            end
            ## 
            ## Gets the creationDateTime property value. The creationDateTime property
            ## @return a date_time
            ## 
            def creation_date_time
                return @creation_date_time
            end
            ## 
            ## Sets the creationDateTime property value. The creationDateTime property
            ## @param value Value to set for the creationDateTime property.
            ## @return a void
            ## 
            def creation_date_time=(value)
                @creation_date_time = value
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
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
                writer.write_date_time_value("creationDateTime", @creation_date_time)
                writer.write_string_value("description", @description)
            end
        end
    end
end
