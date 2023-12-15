require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ProtectSite < MicrosoftGraphBeta::Models::LabelActionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessType property
            @access_type
            ## 
            # The conditionalAccessProtectionLevelId property
            @conditional_access_protection_level_id
            ## 
            ## Gets the accessType property value. The accessType property
            ## @return a site_access_type
            ## 
            def access_type
                return @access_type
            end
            ## 
            ## Sets the accessType property value. The accessType property
            ## @param value Value to set for the accessType property.
            ## @return a void
            ## 
            def access_type=(value)
                @access_type = value
            end
            ## 
            ## Gets the conditionalAccessProtectionLevelId property value. The conditionalAccessProtectionLevelId property
            ## @return a string
            ## 
            def conditional_access_protection_level_id
                return @conditional_access_protection_level_id
            end
            ## 
            ## Sets the conditionalAccessProtectionLevelId property value. The conditionalAccessProtectionLevelId property
            ## @param value Value to set for the conditionalAccessProtectionLevelId property.
            ## @return a void
            ## 
            def conditional_access_protection_level_id=(value)
                @conditional_access_protection_level_id = value
            end
            ## 
            ## Instantiates a new protectSite and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.protectSite"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a protect_site
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProtectSite.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessType" => lambda {|n| @access_type = n.get_enum_value(MicrosoftGraphBeta::Models::SiteAccessType) },
                    "conditionalAccessProtectionLevelId" => lambda {|n| @conditional_access_protection_level_id = n.get_string_value() },
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
                writer.write_enum_value("accessType", @access_type)
                writer.write_string_value("conditionalAccessProtectionLevelId", @conditional_access_protection_level_id)
            end
        end
    end
end
