require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Settings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies if the user's primary mailbox is hosted in the cloud and is enabled for Microsoft Graph.
            @has_graph_mailbox
            ## 
            # Specifies if the user has a MyAnalytics license assigned.
            @has_license
            ## 
            # Specifies if the user opted out of MyAnalytics.
            @has_opted_out
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new Settings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Settings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "hasGraphMailbox" => lambda {|n| @has_graph_mailbox = n.get_boolean_value() },
                    "hasLicense" => lambda {|n| @has_license = n.get_boolean_value() },
                    "hasOptedOut" => lambda {|n| @has_opted_out = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the hasGraphMailbox property value. Specifies if the user's primary mailbox is hosted in the cloud and is enabled for Microsoft Graph.
            ## @return a boolean
            ## 
            def has_graph_mailbox
                return @has_graph_mailbox
            end
            ## 
            ## Sets the hasGraphMailbox property value. Specifies if the user's primary mailbox is hosted in the cloud and is enabled for Microsoft Graph.
            ## @param value Value to set for the hasGraphMailbox property.
            ## @return a void
            ## 
            def has_graph_mailbox=(value)
                @has_graph_mailbox = value
            end
            ## 
            ## Gets the hasLicense property value. Specifies if the user has a MyAnalytics license assigned.
            ## @return a boolean
            ## 
            def has_license
                return @has_license
            end
            ## 
            ## Sets the hasLicense property value. Specifies if the user has a MyAnalytics license assigned.
            ## @param value Value to set for the hasLicense property.
            ## @return a void
            ## 
            def has_license=(value)
                @has_license = value
            end
            ## 
            ## Gets the hasOptedOut property value. Specifies if the user opted out of MyAnalytics.
            ## @return a boolean
            ## 
            def has_opted_out
                return @has_opted_out
            end
            ## 
            ## Sets the hasOptedOut property value. Specifies if the user opted out of MyAnalytics.
            ## @param value Value to set for the hasOptedOut property.
            ## @return a void
            ## 
            def has_opted_out=(value)
                @has_opted_out = value
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
                writer.write_boolean_value("hasGraphMailbox", @has_graph_mailbox)
                writer.write_boolean_value("hasLicense", @has_license)
                writer.write_boolean_value("hasOptedOut", @has_opted_out)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
