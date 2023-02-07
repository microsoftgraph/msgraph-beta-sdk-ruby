require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Represents a mapping between team identifiers for macOS system extensions and system extension types.
    class MacOSSystemExtensionTypeMapping
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Flag enum representing the allowed macOS system extension types.
        @allowed_types
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Gets or sets the team identifier used to sign the system extension.
        @team_identifier
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
        ## Gets the allowedTypes property value. Flag enum representing the allowed macOS system extension types.
        ## @return a mac_o_s_system_extension_type
        ## 
        def allowed_types
            return @allowed_types
        end
        ## 
        ## Sets the allowedTypes property value. Flag enum representing the allowed macOS system extension types.
        ## @param value Value to set for the allowed_types property.
        ## @return a void
        ## 
        def allowed_types=(value)
            @allowed_types = value
        end
        ## 
        ## Instantiates a new macOSSystemExtensionTypeMapping and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mac_o_s_system_extension_type_mapping
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MacOSSystemExtensionTypeMapping.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "allowedTypes" => lambda {|n| @allowed_types = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSSystemExtensionType) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "teamIdentifier" => lambda {|n| @team_identifier = n.get_string_value() },
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("allowedTypes", @allowed_types)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("teamIdentifier", @team_identifier)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the teamIdentifier property value. Gets or sets the team identifier used to sign the system extension.
        ## @return a string
        ## 
        def team_identifier
            return @team_identifier
        end
        ## 
        ## Sets the teamIdentifier property value. Gets or sets the team identifier used to sign the system extension.
        ## @param value Value to set for the team_identifier property.
        ## @return a void
        ## 
        def team_identifier=(value)
            @team_identifier = value
        end
    end
end
