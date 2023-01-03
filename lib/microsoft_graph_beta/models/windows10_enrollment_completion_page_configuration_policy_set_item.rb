require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Windows10EnrollmentCompletionPageConfigurationPolicySetItem < MicrosoftGraphBeta::Models::PolicySetItem
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Priority of the Windows10EnrollmentCompletionPageConfigurationPolicySetItem.
        @priority
        ## 
        ## Instantiates a new Windows10EnrollmentCompletionPageConfigurationPolicySetItem and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windows10EnrollmentCompletionPageConfigurationPolicySetItem"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows10_enrollment_completion_page_configuration_policy_set_item
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Windows10EnrollmentCompletionPageConfigurationPolicySetItem.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "priority" => lambda {|n| @priority = n.get_number_value() },
            })
        end
        ## 
        ## Gets the priority property value. Priority of the Windows10EnrollmentCompletionPageConfigurationPolicySetItem.
        ## @return a integer
        ## 
        def priority
            return @priority
        end
        ## 
        ## Sets the priority property value. Priority of the Windows10EnrollmentCompletionPageConfigurationPolicySetItem.
        ## @param value Value to set for the priority property.
        ## @return a void
        ## 
        def priority=(value)
            @priority = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_number_value("priority", @priority)
        end
    end
end
