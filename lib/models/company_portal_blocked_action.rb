require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Blocked actions on the company portal as per platform and device ownership types
        class CompanyPortalBlockedAction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Action on a device that can be executed in the Company Portal
            @action
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Owner type of device.
            @owner_type
            ## 
            # Supported platform types.
            @platform
            ## 
            ## Gets the action property value. Action on a device that can be executed in the Company Portal
            ## @return a company_portal_action
            ## 
            def action
                return @action
            end
            ## 
            ## Sets the action property value. Action on a device that can be executed in the Company Portal
            ## @param value Value to set for the action property.
            ## @return a void
            ## 
            def action=(value)
                @action = value
            end
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new companyPortalBlockedAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a company_portal_blocked_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CompanyPortalBlockedAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::CompanyPortalAction) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "ownerType" => lambda {|n| @owner_type = n.get_enum_value(MicrosoftGraphBeta::Models::OwnerType) },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraphBeta::Models::DevicePlatformType) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the ownerType property value. Owner type of device.
            ## @return a owner_type
            ## 
            def owner_type
                return @owner_type
            end
            ## 
            ## Sets the ownerType property value. Owner type of device.
            ## @param value Value to set for the owner_type property.
            ## @return a void
            ## 
            def owner_type=(value)
                @owner_type = value
            end
            ## 
            ## Gets the platform property value. Supported platform types.
            ## @return a device_platform_type
            ## 
            def platform
                return @platform
            end
            ## 
            ## Sets the platform property value. Supported platform types.
            ## @param value Value to set for the platform property.
            ## @return a void
            ## 
            def platform=(value)
                @platform = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("action", @action)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("ownerType", @owner_type)
                writer.write_enum_value("platform", @platform)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
