require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Configuration Manager client information synced from SCCM
    class ConfigurationManagerClientInformation
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Configuration Manager Client Id from SCCM
        @client_identifier
        ## 
        # Configuration Manager Client version from SCCM
        @client_version
        ## 
        # Configuration Manager Client blocked status from SCCM
        @is_blocked
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
        ## Gets the clientIdentifier property value. Configuration Manager Client Id from SCCM
        ## @return a string
        ## 
        def client_identifier
            return @client_identifier
        end
        ## 
        ## Sets the clientIdentifier property value. Configuration Manager Client Id from SCCM
        ## @param value Value to set for the clientIdentifier property.
        ## @return a void
        ## 
        def client_identifier=(value)
            @client_identifier = value
        end
        ## 
        ## Gets the clientVersion property value. Configuration Manager Client version from SCCM
        ## @return a string
        ## 
        def client_version
            return @client_version
        end
        ## 
        ## Sets the clientVersion property value. Configuration Manager Client version from SCCM
        ## @param value Value to set for the clientVersion property.
        ## @return a void
        ## 
        def client_version=(value)
            @client_version = value
        end
        ## 
        ## Instantiates a new configurationManagerClientInformation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a configuration_manager_client_information
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ConfigurationManagerClientInformation.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "clientIdentifier" => lambda {|n| @client_identifier = n.get_string_value() },
                "clientVersion" => lambda {|n| @client_version = n.get_string_value() },
                "isBlocked" => lambda {|n| @is_blocked = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the isBlocked property value. Configuration Manager Client blocked status from SCCM
        ## @return a boolean
        ## 
        def is_blocked
            return @is_blocked
        end
        ## 
        ## Sets the isBlocked property value. Configuration Manager Client blocked status from SCCM
        ## @param value Value to set for the isBlocked property.
        ## @return a void
        ## 
        def is_blocked=(value)
            @is_blocked = value
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
            writer.write_string_value("clientIdentifier", @client_identifier)
            writer.write_string_value("clientVersion", @client_version)
            writer.write_boolean_value("isBlocked", @is_blocked)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
