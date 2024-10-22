require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataUserConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The password settings for the users to be provisioned with.
            @default_password_settings
            ## 
            # The license skus for the users to be provisioned with.
            @license_skus
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The roleGroup property
            @role_group
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new IndustryDataUserConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_user_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataUserConfiguration.new
            end
            ## 
            ## Gets the defaultPasswordSettings property value. The password settings for the users to be provisioned with.
            ## @return a industry_data_password_settings
            ## 
            def default_password_settings
                return @default_password_settings
            end
            ## 
            ## Sets the defaultPasswordSettings property value. The password settings for the users to be provisioned with.
            ## @param value Value to set for the defaultPasswordSettings property.
            ## @return a void
            ## 
            def default_password_settings=(value)
                @default_password_settings = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultPasswordSettings" => lambda {|n| @default_password_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataPasswordSettings.create_from_discriminator_value(pn) }) },
                    "licenseSkus" => lambda {|n| @license_skus = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "roleGroup" => lambda {|n| @role_group = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataRoleGroup.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the licenseSkus property value. The license skus for the users to be provisioned with.
            ## @return a string
            ## 
            def license_skus
                return @license_skus
            end
            ## 
            ## Sets the licenseSkus property value. The license skus for the users to be provisioned with.
            ## @param value Value to set for the licenseSkus property.
            ## @return a void
            ## 
            def license_skus=(value)
                @license_skus = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the roleGroup property value. The roleGroup property
            ## @return a industry_data_role_group
            ## 
            def role_group
                return @role_group
            end
            ## 
            ## Sets the roleGroup property value. The roleGroup property
            ## @param value Value to set for the roleGroup property.
            ## @return a void
            ## 
            def role_group=(value)
                @role_group = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("defaultPasswordSettings", @default_password_settings)
                writer.write_collection_of_primitive_values("licenseSkus", @license_skus)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("roleGroup", @role_group)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
