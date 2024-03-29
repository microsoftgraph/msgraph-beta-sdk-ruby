require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Describes the features of a device that are shared between all devices in a correlation group.
        class UserExperienceAnalyticsAnomalyCorrelationGroupFeature
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the device's feature type. Possible values are: manufacturer, model, osVersion, application or driver.
            @device_feature_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specific metric values that describe the features of the given device feature type.
            @values
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsAnomalyCorrelationGroupFeature and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_anomaly_correlation_group_feature
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAnomalyCorrelationGroupFeature.new
            end
            ## 
            ## Gets the deviceFeatureType property value. Indicates the device's feature type. Possible values are: manufacturer, model, osVersion, application or driver.
            ## @return a user_experience_analytics_anomaly_device_feature_type
            ## 
            def device_feature_type
                return @device_feature_type
            end
            ## 
            ## Sets the deviceFeatureType property value. Indicates the device's feature type. Possible values are: manufacturer, model, osVersion, application or driver.
            ## @param value Value to set for the deviceFeatureType property.
            ## @return a void
            ## 
            def device_feature_type=(value)
                @device_feature_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceFeatureType" => lambda {|n| @device_feature_type = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsAnomalyDeviceFeatureType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "values" => lambda {|n| @values = n.get_collection_of_primitive_values(String) },
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
                writer.write_enum_value("deviceFeatureType", @device_feature_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("values", @values)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the values property value. Specific metric values that describe the features of the given device feature type.
            ## @return a string
            ## 
            def values
                return @values
            end
            ## 
            ## Sets the values property value. Specific metric values that describe the features of the given device feature type.
            ## @param value Value to set for the values property.
            ## @return a void
            ## 
            def values=(value)
                @values = value
            end
        end
    end
end
