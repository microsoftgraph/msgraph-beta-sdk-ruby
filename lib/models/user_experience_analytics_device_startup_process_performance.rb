require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics device startup process performance.
        class UserExperienceAnalyticsDeviceStartupProcessPerformance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # User experience analytics device startup process summarized count.
            @device_count
            ## 
            # User experience analytics device startup process median impact in milliseconds.
            @median_impact_in_ms
            ## 
            # User experience analytics device startup process median impact in milliseconds.
            @median_impact_in_ms2
            ## 
            # User experience analytics device startup process name.
            @process_name
            ## 
            # The user experience analytics device startup process product name.
            @product_name
            ## 
            # The User experience analytics device startup process publisher.
            @publisher
            ## 
            # User experience analytics device startup process total impact in milliseconds.
            @total_impact_in_ms
            ## 
            # User experience analytics device startup process total impact in milliseconds.
            @total_impact_in_ms2
            ## 
            ## Instantiates a new userExperienceAnalyticsDeviceStartupProcessPerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_device_startup_process_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsDeviceStartupProcessPerformance.new
            end
            ## 
            ## Gets the deviceCount property value. User experience analytics device startup process summarized count.
            ## @return a int64
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. User experience analytics device startup process summarized count.
            ## @param value Value to set for the device_count property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceCount" => lambda {|n| @device_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "medianImpactInMs" => lambda {|n| @median_impact_in_ms = n.get_number_value() },
                    "medianImpactInMs2" => lambda {|n| @median_impact_in_ms2 = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "processName" => lambda {|n| @process_name = n.get_string_value() },
                    "productName" => lambda {|n| @product_name = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "totalImpactInMs" => lambda {|n| @total_impact_in_ms = n.get_number_value() },
                    "totalImpactInMs2" => lambda {|n| @total_impact_in_ms2 = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the medianImpactInMs property value. User experience analytics device startup process median impact in milliseconds.
            ## @return a integer
            ## 
            def median_impact_in_ms
                return @median_impact_in_ms
            end
            ## 
            ## Sets the medianImpactInMs property value. User experience analytics device startup process median impact in milliseconds.
            ## @param value Value to set for the median_impact_in_ms property.
            ## @return a void
            ## 
            def median_impact_in_ms=(value)
                @median_impact_in_ms = value
            end
            ## 
            ## Gets the medianImpactInMs2 property value. User experience analytics device startup process median impact in milliseconds.
            ## @return a int64
            ## 
            def median_impact_in_ms2
                return @median_impact_in_ms2
            end
            ## 
            ## Sets the medianImpactInMs2 property value. User experience analytics device startup process median impact in milliseconds.
            ## @param value Value to set for the median_impact_in_ms2 property.
            ## @return a void
            ## 
            def median_impact_in_ms2=(value)
                @median_impact_in_ms2 = value
            end
            ## 
            ## Gets the processName property value. User experience analytics device startup process name.
            ## @return a string
            ## 
            def process_name
                return @process_name
            end
            ## 
            ## Sets the processName property value. User experience analytics device startup process name.
            ## @param value Value to set for the process_name property.
            ## @return a void
            ## 
            def process_name=(value)
                @process_name = value
            end
            ## 
            ## Gets the productName property value. The user experience analytics device startup process product name.
            ## @return a string
            ## 
            def product_name
                return @product_name
            end
            ## 
            ## Sets the productName property value. The user experience analytics device startup process product name.
            ## @param value Value to set for the product_name property.
            ## @return a void
            ## 
            def product_name=(value)
                @product_name = value
            end
            ## 
            ## Gets the publisher property value. The User experience analytics device startup process publisher.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. The User experience analytics device startup process publisher.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("deviceCount", @device_count)
                writer.write_number_value("medianImpactInMs", @median_impact_in_ms)
                writer.write_object_value("medianImpactInMs2", @median_impact_in_ms2)
                writer.write_string_value("processName", @process_name)
                writer.write_string_value("productName", @product_name)
                writer.write_string_value("publisher", @publisher)
                writer.write_number_value("totalImpactInMs", @total_impact_in_ms)
                writer.write_object_value("totalImpactInMs2", @total_impact_in_ms2)
            end
            ## 
            ## Gets the totalImpactInMs property value. User experience analytics device startup process total impact in milliseconds.
            ## @return a integer
            ## 
            def total_impact_in_ms
                return @total_impact_in_ms
            end
            ## 
            ## Sets the totalImpactInMs property value. User experience analytics device startup process total impact in milliseconds.
            ## @param value Value to set for the total_impact_in_ms property.
            ## @return a void
            ## 
            def total_impact_in_ms=(value)
                @total_impact_in_ms = value
            end
            ## 
            ## Gets the totalImpactInMs2 property value. User experience analytics device startup process total impact in milliseconds.
            ## @return a int64
            ## 
            def total_impact_in_ms2
                return @total_impact_in_ms2
            end
            ## 
            ## Sets the totalImpactInMs2 property value. User experience analytics device startup process total impact in milliseconds.
            ## @param value Value to set for the total_impact_in_ms2 property.
            ## @return a void
            ## 
            def total_impact_in_ms2=(value)
                @total_impact_in_ms2 = value
            end
        end
    end
end
