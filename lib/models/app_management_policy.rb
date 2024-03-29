require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AppManagementPolicy < MicrosoftGraphBeta::Models::PolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of application and service principals to which a policy is applied.
            @applies_to
            ## 
            # Denotes whether the policy is enabled.
            @is_enabled
            ## 
            # Restrictions that apply to an application or service principal object.
            @restrictions
            ## 
            ## Gets the appliesTo property value. Collection of application and service principals to which a policy is applied.
            ## @return a directory_object
            ## 
            def applies_to
                return @applies_to
            end
            ## 
            ## Sets the appliesTo property value. Collection of application and service principals to which a policy is applied.
            ## @param value Value to set for the appliesTo property.
            ## @return a void
            ## 
            def applies_to=(value)
                @applies_to = value
            end
            ## 
            ## Instantiates a new appManagementPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.appManagementPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a app_management_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppManagementPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appliesTo" => lambda {|n| @applies_to = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "restrictions" => lambda {|n| @restrictions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AppManagementConfiguration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isEnabled property value. Denotes whether the policy is enabled.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Denotes whether the policy is enabled.
            ## @param value Value to set for the isEnabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the restrictions property value. Restrictions that apply to an application or service principal object.
            ## @return a app_management_configuration
            ## 
            def restrictions
                return @restrictions
            end
            ## 
            ## Sets the restrictions property value. Restrictions that apply to an application or service principal object.
            ## @param value Value to set for the restrictions property.
            ## @return a void
            ## 
            def restrictions=(value)
                @restrictions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("appliesTo", @applies_to)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_object_value("restrictions", @restrictions)
            end
        end
    end
end
