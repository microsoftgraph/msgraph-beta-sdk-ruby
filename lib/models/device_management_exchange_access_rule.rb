require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Device Access Rules in Exchange.
        class DeviceManagementExchangeAccessRule
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Access Level in Exchange.
            @access_level
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Device Class which will be impacted by this rule.
            @device_class
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the accessLevel property value. Access Level in Exchange.
            ## @return a device_management_exchange_access_level
            ## 
            def access_level
                return @access_level
            end
            ## 
            ## Sets the accessLevel property value. Access Level in Exchange.
            ## @param value Value to set for the accessLevel property.
            ## @return a void
            ## 
            def access_level=(value)
                @access_level = value
            end
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
            ## Instantiates a new deviceManagementExchangeAccessRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_exchange_access_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementExchangeAccessRule.new
            end
            ## 
            ## Gets the deviceClass property value. Device Class which will be impacted by this rule.
            ## @return a device_management_exchange_device_class
            ## 
            def device_class
                return @device_class
            end
            ## 
            ## Sets the deviceClass property value. Device Class which will be impacted by this rule.
            ## @param value Value to set for the deviceClass property.
            ## @return a void
            ## 
            def device_class=(value)
                @device_class = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accessLevel" => lambda {|n| @access_level = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementExchangeAccessLevel) },
                    "deviceClass" => lambda {|n| @device_class = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementExchangeDeviceClass.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_enum_value("accessLevel", @access_level)
                writer.write_object_value("deviceClass", @device_class)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
