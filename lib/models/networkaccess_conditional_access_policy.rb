require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessConditionalAccessPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the date and time the conditional access policy was created.
            @created_date_time
            ## 
            # Provides a summary of the conditional access policy.
            @description
            ## 
            # Represents the human-readable name or title assigned to the conditional access policy.
            @display_name
            ## 
            # Indicates the date and time when the conditional access policy was last modified.
            @modified_date_time
            ## 
            ## Instantiates a new networkaccessConditionalAccessPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Indicates the date and time the conditional access policy was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Indicates the date and time the conditional access policy was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_conditional_access_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessConditionalAccessPolicy.new
            end
            ## 
            ## Gets the description property value. Provides a summary of the conditional access policy.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Provides a summary of the conditional access policy.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Represents the human-readable name or title assigned to the conditional access policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Represents the human-readable name or title assigned to the conditional access policy.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the modifiedDateTime property value. Indicates the date and time when the conditional access policy was last modified.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. Indicates the date and time when the conditional access policy was last modified.
            ## @param value Value to set for the modifiedDateTime property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
            end
        end
    end
end
