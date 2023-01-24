require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The definition value entity stores the value for a single group policy definition.
    class GroupPolicyDefinitionValue < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Group Policy Configuration Type
        @configuration_type
        ## 
        # The date and time the object was created.
        @created_date_time
        ## 
        # The associated group policy definition with the value.
        @definition
        ## 
        # Enables or disables the associated group policy definition.
        @enabled
        ## 
        # The date and time the entity was last modified.
        @last_modified_date_time
        ## 
        # The associated group policy presentation values with the definition value.
        @presentation_values
        ## 
        ## Gets the configurationType property value. Group Policy Configuration Type
        ## @return a group_policy_configuration_type
        ## 
        def configuration_type
            return @configuration_type
        end
        ## 
        ## Sets the configurationType property value. Group Policy Configuration Type
        ## @param value Value to set for the configurationType property.
        ## @return a void
        ## 
        def configuration_type=(value)
            @configuration_type = value
        end
        ## 
        ## Instantiates a new groupPolicyDefinitionValue and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. The date and time the object was created.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The date and time the object was created.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a group_policy_definition_value
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return GroupPolicyDefinitionValue.new
        end
        ## 
        ## Gets the definition property value. The associated group policy definition with the value.
        ## @return a group_policy_definition
        ## 
        def definition
            return @definition
        end
        ## 
        ## Sets the definition property value. The associated group policy definition with the value.
        ## @param value Value to set for the definition property.
        ## @return a void
        ## 
        def definition=(value)
            @definition = value
        end
        ## 
        ## Gets the enabled property value. Enables or disables the associated group policy definition.
        ## @return a boolean
        ## 
        def enabled
            return @enabled
        end
        ## 
        ## Sets the enabled property value. Enables or disables the associated group policy definition.
        ## @param value Value to set for the enabled property.
        ## @return a void
        ## 
        def enabled=(value)
            @enabled = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "configurationType" => lambda {|n| @configuration_type = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicyConfigurationType) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "definition" => lambda {|n| @definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinition.create_from_discriminator_value(pn) }) },
                "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "presentationValues" => lambda {|n| @presentation_values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyPresentationValue.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The date and time the entity was last modified.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The date and time the entity was last modified.
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the presentationValues property value. The associated group policy presentation values with the definition value.
        ## @return a group_policy_presentation_value
        ## 
        def presentation_values
            return @presentation_values
        end
        ## 
        ## Sets the presentationValues property value. The associated group policy presentation values with the definition value.
        ## @param value Value to set for the presentationValues property.
        ## @return a void
        ## 
        def presentation_values=(value)
            @presentation_values = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("configurationType", @configuration_type)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_object_value("definition", @definition)
            writer.write_boolean_value("enabled", @enabled)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_collection_of_object_values("presentationValues", @presentation_values)
        end
    end
end
