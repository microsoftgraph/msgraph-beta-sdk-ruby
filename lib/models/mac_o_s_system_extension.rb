require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Represents a specific macOS system extension.
    class MacOSSystemExtension
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Gets or sets the bundle identifier of the system extension.
        @bundle_id
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Gets or sets the team identifier that was used to sign the system extension.
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
        ## Gets the bundleId property value. Gets or sets the bundle identifier of the system extension.
        ## @return a string
        ## 
        def bundle_id
            return @bundle_id
        end
        ## 
        ## Sets the bundleId property value. Gets or sets the bundle identifier of the system extension.
        ## @param value Value to set for the bundleId property.
        ## @return a void
        ## 
        def bundle_id=(value)
            @bundle_id = value
        end
        ## 
        ## Instantiates a new macOSSystemExtension and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mac_o_s_system_extension
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MacOSSystemExtension.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "bundleId" => lambda {|n| @bundle_id = n.get_string_value() },
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
            writer.write_string_value("bundleId", @bundle_id)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("teamIdentifier", @team_identifier)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the teamIdentifier property value. Gets or sets the team identifier that was used to sign the system extension.
        ## @return a string
        ## 
        def team_identifier
            return @team_identifier
        end
        ## 
        ## Sets the teamIdentifier property value. Gets or sets the team identifier that was used to sign the system extension.
        ## @param value Value to set for the teamIdentifier property.
        ## @return a void
        ## 
        def team_identifier=(value)
            @team_identifier = value
        end
    end
end
