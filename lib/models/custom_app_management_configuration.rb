require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomAppManagementConfiguration < MicrosoftGraphBeta::Models::AppManagementConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Restrictions that are applicable only to application objects to which the policy is attached.
            @application_restrictions
            ## 
            ## Gets the applicationRestrictions property value. Restrictions that are applicable only to application objects to which the policy is attached.
            ## @return a custom_app_management_application_configuration
            ## 
            def application_restrictions
                return @application_restrictions
            end
            ## 
            ## Sets the applicationRestrictions property value. Restrictions that are applicable only to application objects to which the policy is attached.
            ## @param value Value to set for the applicationRestrictions property.
            ## @return a void
            ## 
            def application_restrictions=(value)
                @application_restrictions = value
            end
            ## 
            ## Instantiates a new CustomAppManagementConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.customAppManagementConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_app_management_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomAppManagementConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationRestrictions" => lambda {|n| @application_restrictions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CustomAppManagementApplicationConfiguration.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("applicationRestrictions", @application_restrictions)
            end
        end
    end
end
