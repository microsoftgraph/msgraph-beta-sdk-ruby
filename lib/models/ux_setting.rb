require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UxSetting < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The restrictNonAdminAccess property
            @restrict_non_admin_access
            ## 
            ## Instantiates a new UxSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ux_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UxSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "restrictNonAdminAccess" => lambda {|n| @restrict_non_admin_access = n.get_enum_value(MicrosoftGraphBeta::Models::NonAdminSetting) },
                })
            end
            ## 
            ## Gets the restrictNonAdminAccess property value. The restrictNonAdminAccess property
            ## @return a non_admin_setting
            ## 
            def restrict_non_admin_access
                return @restrict_non_admin_access
            end
            ## 
            ## Sets the restrictNonAdminAccess property value. The restrictNonAdminAccess property
            ## @param value Value to set for the restrictNonAdminAccess property.
            ## @return a void
            ## 
            def restrict_non_admin_access=(value)
                @restrict_non_admin_access = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("restrictNonAdminAccess", @restrict_non_admin_access)
            end
        end
    end
end
