require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DelegationSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The allowedActions property
            @allowed_actions
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The isActive property
            @is_active
            ## 
            ## Gets the allowedActions property value. The allowedActions property
            ## @return a delegate_allowed_actions
            ## 
            def allowed_actions
                return @allowed_actions
            end
            ## 
            ## Sets the allowedActions property value. The allowedActions property
            ## @param value Value to set for the allowedActions property.
            ## @return a void
            ## 
            def allowed_actions=(value)
                @allowed_actions = value
            end
            ## 
            ## Instantiates a new DelegationSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a delegation_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DelegationSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedActions" => lambda {|n| @allowed_actions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DelegateAllowedActions.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isActive property value. The isActive property
            ## @return a boolean
            ## 
            def is_active
                return @is_active
            end
            ## 
            ## Sets the isActive property value. The isActive property
            ## @param value Value to set for the isActive property.
            ## @return a void
            ## 
            def is_active=(value)
                @is_active = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("allowedActions", @allowed_actions)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_boolean_value("isActive", @is_active)
            end
        end
    end
end
