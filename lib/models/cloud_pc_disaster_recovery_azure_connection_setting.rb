require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcDisasterRecoveryAzureConnectionSetting < MicrosoftGraphBeta::Models::CloudPcDisasterRecoveryNetworkSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The onPremisesConnectionId property
            @on_premises_connection_id
            ## 
            ## Instantiates a new cloudPcDisasterRecoveryAzureConnectionSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.cloudPcDisasterRecoveryAzureConnectionSetting"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_disaster_recovery_azure_connection_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcDisasterRecoveryAzureConnectionSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "onPremisesConnectionId" => lambda {|n| @on_premises_connection_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the onPremisesConnectionId property value. The onPremisesConnectionId property
            ## @return a string
            ## 
            def on_premises_connection_id
                return @on_premises_connection_id
            end
            ## 
            ## Sets the onPremisesConnectionId property value. The onPremisesConnectionId property
            ## @param value Value to set for the onPremisesConnectionId property.
            ## @return a void
            ## 
            def on_premises_connection_id=(value)
                @on_premises_connection_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("onPremisesConnectionId", @on_premises_connection_id)
            end
        end
    end
end
