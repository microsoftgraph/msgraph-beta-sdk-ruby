require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkTeamsClientConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The configuration of the Microsoft Teams client user account for a device.
            @account_configuration
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The configuration of Microsoft Teams client features for a device.
            @features_configuration
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the accountConfiguration property value. The configuration of the Microsoft Teams client user account for a device.
            ## @return a teamwork_account_configuration
            ## 
            def account_configuration
                return @account_configuration
            end
            ## 
            ## Sets the accountConfiguration property value. The configuration of the Microsoft Teams client user account for a device.
            ## @param value Value to set for the account_configuration property.
            ## @return a void
            ## 
            def account_configuration=(value)
                @account_configuration = value
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
            ## Instantiates a new teamworkTeamsClientConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_teams_client_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkTeamsClientConfiguration.new
            end
            ## 
            ## Gets the featuresConfiguration property value. The configuration of Microsoft Teams client features for a device.
            ## @return a teamwork_features_configuration
            ## 
            def features_configuration
                return @features_configuration
            end
            ## 
            ## Sets the featuresConfiguration property value. The configuration of Microsoft Teams client features for a device.
            ## @param value Value to set for the features_configuration property.
            ## @return a void
            ## 
            def features_configuration=(value)
                @features_configuration = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accountConfiguration" => lambda {|n| @account_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkAccountConfiguration.create_from_discriminator_value(pn) }) },
                    "featuresConfiguration" => lambda {|n| @features_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkFeaturesConfiguration.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("accountConfiguration", @account_configuration)
                writer.write_object_value("featuresConfiguration", @features_configuration)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
