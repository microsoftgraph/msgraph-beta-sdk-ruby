require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analytics tenant level information for all the device scope configurations
    class UserExperienceAnalyticsDeviceScopeSummary
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # A collection of the user experience analytics device scope Unique Identifiers that are enabled and finished recalculating the report metric.
        @completed_device_scope_ids
        ## 
        # A collection of user experience analytics device scope Unique Identitfiers that are enabled but there is insufficient data to calculate results.
        @insufficient_data_device_scope_ids
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The total number of user experience analytics device scopes. Valid values -2147483648 to 2147483647
        @total_device_scopes
        ## 
        # The total number of user experience analytics device scopes that are enabled. Valid values -2147483648 to 2147483647
        @total_device_scopes_enabled
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
        ## Gets the completedDeviceScopeIds property value. A collection of the user experience analytics device scope Unique Identifiers that are enabled and finished recalculating the report metric.
        ## @return a string
        ## 
        def completed_device_scope_ids
            return @completed_device_scope_ids
        end
        ## 
        ## Sets the completedDeviceScopeIds property value. A collection of the user experience analytics device scope Unique Identifiers that are enabled and finished recalculating the report metric.
        ## @param value Value to set for the completedDeviceScopeIds property.
        ## @return a void
        ## 
        def completed_device_scope_ids=(value)
            @completed_device_scope_ids = value
        end
        ## 
        ## Instantiates a new userExperienceAnalyticsDeviceScopeSummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_device_scope_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsDeviceScopeSummary.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "completedDeviceScopeIds" => lambda {|n| @completed_device_scope_ids = n.get_collection_of_primitive_values(String) },
                "insufficientDataDeviceScopeIds" => lambda {|n| @insufficient_data_device_scope_ids = n.get_collection_of_primitive_values(String) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "totalDeviceScopes" => lambda {|n| @total_device_scopes = n.get_number_value() },
                "totalDeviceScopesEnabled" => lambda {|n| @total_device_scopes_enabled = n.get_number_value() },
            }
        end
        ## 
        ## Gets the insufficientDataDeviceScopeIds property value. A collection of user experience analytics device scope Unique Identitfiers that are enabled but there is insufficient data to calculate results.
        ## @return a string
        ## 
        def insufficient_data_device_scope_ids
            return @insufficient_data_device_scope_ids
        end
        ## 
        ## Sets the insufficientDataDeviceScopeIds property value. A collection of user experience analytics device scope Unique Identitfiers that are enabled but there is insufficient data to calculate results.
        ## @param value Value to set for the insufficientDataDeviceScopeIds property.
        ## @return a void
        ## 
        def insufficient_data_device_scope_ids=(value)
            @insufficient_data_device_scope_ids = value
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
            writer.write_collection_of_primitive_values("completedDeviceScopeIds", @completed_device_scope_ids)
            writer.write_collection_of_primitive_values("insufficientDataDeviceScopeIds", @insufficient_data_device_scope_ids)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("totalDeviceScopes", @total_device_scopes)
            writer.write_number_value("totalDeviceScopesEnabled", @total_device_scopes_enabled)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the totalDeviceScopes property value. The total number of user experience analytics device scopes. Valid values -2147483648 to 2147483647
        ## @return a integer
        ## 
        def total_device_scopes
            return @total_device_scopes
        end
        ## 
        ## Sets the totalDeviceScopes property value. The total number of user experience analytics device scopes. Valid values -2147483648 to 2147483647
        ## @param value Value to set for the totalDeviceScopes property.
        ## @return a void
        ## 
        def total_device_scopes=(value)
            @total_device_scopes = value
        end
        ## 
        ## Gets the totalDeviceScopesEnabled property value. The total number of user experience analytics device scopes that are enabled. Valid values -2147483648 to 2147483647
        ## @return a integer
        ## 
        def total_device_scopes_enabled
            return @total_device_scopes_enabled
        end
        ## 
        ## Sets the totalDeviceScopesEnabled property value. The total number of user experience analytics device scopes that are enabled. Valid values -2147483648 to 2147483647
        ## @param value Value to set for the totalDeviceScopesEnabled property.
        ## @return a void
        ## 
        def total_device_scopes_enabled=(value)
            @total_device_scopes_enabled = value
        end
    end
end
