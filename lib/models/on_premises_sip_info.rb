require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnPremisesSipInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the user is currently enabled for on-premises Skype for Business.
            @is_sip_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates a fully qualified DNS name of the Microsoft Online Communications Server deployment.
            @sip_deployment_location
            ## 
            # Serves as a unique identifier for each user on the on-premises Skype for Business.
            @sip_primary_address
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
            ## Instantiates a new onPremisesSipInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_sip_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesSipInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isSipEnabled" => lambda {|n| @is_sip_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sipDeploymentLocation" => lambda {|n| @sip_deployment_location = n.get_string_value() },
                    "sipPrimaryAddress" => lambda {|n| @sip_primary_address = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isSipEnabled property value. Indicates whether the user is currently enabled for on-premises Skype for Business.
            ## @return a boolean
            ## 
            def is_sip_enabled
                return @is_sip_enabled
            end
            ## 
            ## Sets the isSipEnabled property value. Indicates whether the user is currently enabled for on-premises Skype for Business.
            ## @param value Value to set for the isSipEnabled property.
            ## @return a void
            ## 
            def is_sip_enabled=(value)
                @is_sip_enabled = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isSipEnabled", @is_sip_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sipDeploymentLocation", @sip_deployment_location)
                writer.write_string_value("sipPrimaryAddress", @sip_primary_address)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sipDeploymentLocation property value. Indicates a fully qualified DNS name of the Microsoft Online Communications Server deployment.
            ## @return a string
            ## 
            def sip_deployment_location
                return @sip_deployment_location
            end
            ## 
            ## Sets the sipDeploymentLocation property value. Indicates a fully qualified DNS name of the Microsoft Online Communications Server deployment.
            ## @param value Value to set for the sipDeploymentLocation property.
            ## @return a void
            ## 
            def sip_deployment_location=(value)
                @sip_deployment_location = value
            end
            ## 
            ## Gets the sipPrimaryAddress property value. Serves as a unique identifier for each user on the on-premises Skype for Business.
            ## @return a string
            ## 
            def sip_primary_address
                return @sip_primary_address
            end
            ## 
            ## Sets the sipPrimaryAddress property value. Serves as a unique identifier for each user on the on-premises Skype for Business.
            ## @param value Value to set for the sipPrimaryAddress property.
            ## @return a void
            ## 
            def sip_primary_address=(value)
                @sip_primary_address = value
            end
        end
    end
end
