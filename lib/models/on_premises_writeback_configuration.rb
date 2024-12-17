require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnPremisesWritebackConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The distinguished name of the on-premises container that the customer is using to store unified groups which are created in the cloud.
            @unified_group_container
            ## 
            # The distinguished name of the on-premises container that the customer is using to store users which are created in the cloud.
            @user_container
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
            ## Instantiates a new OnPremisesWritebackConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_writeback_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesWritebackConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "unifiedGroupContainer" => lambda {|n| @unified_group_container = n.get_string_value() },
                    "userContainer" => lambda {|n| @user_container = n.get_string_value() },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("unifiedGroupContainer", @unified_group_container)
                writer.write_string_value("userContainer", @user_container)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the unifiedGroupContainer property value. The distinguished name of the on-premises container that the customer is using to store unified groups which are created in the cloud.
            ## @return a string
            ## 
            def unified_group_container
                return @unified_group_container
            end
            ## 
            ## Sets the unifiedGroupContainer property value. The distinguished name of the on-premises container that the customer is using to store unified groups which are created in the cloud.
            ## @param value Value to set for the unifiedGroupContainer property.
            ## @return a void
            ## 
            def unified_group_container=(value)
                @unified_group_container = value
            end
            ## 
            ## Gets the userContainer property value. The distinguished name of the on-premises container that the customer is using to store users which are created in the cloud.
            ## @return a string
            ## 
            def user_container
                return @user_container
            end
            ## 
            ## Sets the userContainer property value. The distinguished name of the on-premises container that the customer is using to store users which are created in the cloud.
            ## @param value Value to set for the userContainer property.
            ## @return a void
            ## 
            def user_container=(value)
                @user_container = value
            end
        end
    end
end
