require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OfficeConfiguration
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # List of office Client configuration.
        @client_configurations
        ## 
        # The OdataType property
        @odata_type
        ## 
        # List of office Client check-in status.
        @tenant_checkin_statuses
        ## 
        # Entity that describes tenant check-in statues
        @tenant_user_checkin_summary
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
        ## Gets the clientConfigurations property value. List of office Client configuration.
        ## @return a office_client_configuration
        ## 
        def client_configurations
            return @client_configurations
        end
        ## 
        ## Sets the clientConfigurations property value. List of office Client configuration.
        ## @param value Value to set for the clientConfigurations property.
        ## @return a void
        ## 
        def client_configurations=(value)
            @client_configurations = value
        end
        ## 
        ## Instantiates a new OfficeConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a office_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OfficeConfiguration.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "clientConfigurations" => lambda {|n| @client_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OfficeClientConfiguration.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "tenantCheckinStatuses" => lambda {|n| @tenant_checkin_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OfficeClientCheckinStatus.create_from_discriminator_value(pn) }) },
                "tenantUserCheckinSummary" => lambda {|n| @tenant_user_checkin_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OfficeUserCheckinSummary.create_from_discriminator_value(pn) }) },
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
            writer.write_collection_of_object_values("clientConfigurations", @client_configurations)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_object_values("tenantCheckinStatuses", @tenant_checkin_statuses)
            writer.write_object_value("tenantUserCheckinSummary", @tenant_user_checkin_summary)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the tenantCheckinStatuses property value. List of office Client check-in status.
        ## @return a office_client_checkin_status
        ## 
        def tenant_checkin_statuses
            return @tenant_checkin_statuses
        end
        ## 
        ## Sets the tenantCheckinStatuses property value. List of office Client check-in status.
        ## @param value Value to set for the tenantCheckinStatuses property.
        ## @return a void
        ## 
        def tenant_checkin_statuses=(value)
            @tenant_checkin_statuses = value
        end
        ## 
        ## Gets the tenantUserCheckinSummary property value. Entity that describes tenant check-in statues
        ## @return a office_user_checkin_summary
        ## 
        def tenant_user_checkin_summary
            return @tenant_user_checkin_summary
        end
        ## 
        ## Sets the tenantUserCheckinSummary property value. Entity that describes tenant check-in statues
        ## @param value Value to set for the tenantUserCheckinSummary property.
        ## @return a void
        ## 
        def tenant_user_checkin_summary=(value)
            @tenant_user_checkin_summary = value
        end
    end
end
