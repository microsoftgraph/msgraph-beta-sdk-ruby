require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # VPN Server definition.
    class VpnServer
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Address (IP address, FQDN or URL)
        @address
        ## 
        # Description.
        @description
        ## 
        # Default server.
        @is_default_server
        ## 
        # The OdataType property
        @odata_type
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
        ## Gets the address property value. Address (IP address, FQDN or URL)
        ## @return a string
        ## 
        def address
            return @address
        end
        ## 
        ## Sets the address property value. Address (IP address, FQDN or URL)
        ## @param value Value to set for the address property.
        ## @return a void
        ## 
        def address=(value)
            @address = value
        end
        ## 
        ## Instantiates a new vpnServer and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a vpn_server
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return VpnServer.new
        end
        ## 
        ## Gets the description property value. Description.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Description.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "address" => lambda {|n| @address = n.get_string_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "isDefaultServer" => lambda {|n| @is_default_server = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the isDefaultServer property value. Default server.
        ## @return a boolean
        ## 
        def is_default_server
            return @is_default_server
        end
        ## 
        ## Sets the isDefaultServer property value. Default server.
        ## @param value Value to set for the isDefaultServer property.
        ## @return a void
        ## 
        def is_default_server=(value)
            @is_default_server = value
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_string_value("address", @address)
            writer.write_string_value("description", @description)
            writer.write_boolean_value("isDefaultServer", @is_default_server)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
