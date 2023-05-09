require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkSoftwareUpdateStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The available software version to update.
            @available_version
            ## 
            # The current software version.
            @current_version
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The update status of the software. The possible values are: unknown, latest, updateAvailable, unknownFutureValue.
            @software_freshness
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
            ## Gets the availableVersion property value. The available software version to update.
            ## @return a string
            ## 
            def available_version
                return @available_version
            end
            ## 
            ## Sets the availableVersion property value. The available software version to update.
            ## @param value Value to set for the available_version property.
            ## @return a void
            ## 
            def available_version=(value)
                @available_version = value
            end
            ## 
            ## Instantiates a new teamworkSoftwareUpdateStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_software_update_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkSoftwareUpdateStatus.new
            end
            ## 
            ## Gets the currentVersion property value. The current software version.
            ## @return a string
            ## 
            def current_version
                return @current_version
            end
            ## 
            ## Sets the currentVersion property value. The current software version.
            ## @param value Value to set for the current_version property.
            ## @return a void
            ## 
            def current_version=(value)
                @current_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "availableVersion" => lambda {|n| @available_version = n.get_string_value() },
                    "currentVersion" => lambda {|n| @current_version = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "softwareFreshness" => lambda {|n| @software_freshness = n.get_enum_value(MicrosoftGraphBeta::Models::TeamworkSoftwareFreshness) },
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
                writer.write_string_value("availableVersion", @available_version)
                writer.write_string_value("currentVersion", @current_version)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("softwareFreshness", @software_freshness)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the softwareFreshness property value. The update status of the software. The possible values are: unknown, latest, updateAvailable, unknownFutureValue.
            ## @return a teamwork_software_freshness
            ## 
            def software_freshness
                return @software_freshness
            end
            ## 
            ## Sets the softwareFreshness property value. The update status of the software. The possible values are: unknown, latest, updateAvailable, unknownFutureValue.
            ## @param value Value to set for the software_freshness property.
            ## @return a void
            ## 
            def software_freshness=(value)
                @software_freshness = value
            end
        end
    end
end
