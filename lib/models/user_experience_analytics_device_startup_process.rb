require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics device startup process details.
        class UserExperienceAnalyticsDeviceStartupProcess < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user experience analytics device id.
            @managed_device_id
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
            # User experience analytics device startup process impact in milliseconds.
            @startup_impact_in_ms
            ## 
            ## Instantiates a new userExperienceAnalyticsDeviceStartupProcess and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_device_startup_process
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsDeviceStartupProcess.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "processName" => lambda {|n| @process_name = n.get_string_value() },
                    "productName" => lambda {|n| @product_name = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "startupImpactInMs" => lambda {|n| @startup_impact_in_ms = n.get_number_value() },
                })
            end
            ## 
            ## Gets the managedDeviceId property value. The user experience analytics device id.
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. The user experience analytics device id.
            ## @param value Value to set for the managed_device_id property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
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
                writer.write_string_value("managedDeviceId", @managed_device_id)
                writer.write_string_value("processName", @process_name)
                writer.write_string_value("productName", @product_name)
                writer.write_string_value("publisher", @publisher)
                writer.write_number_value("startupImpactInMs", @startup_impact_in_ms)
            end
            ## 
            ## Gets the startupImpactInMs property value. User experience analytics device startup process impact in milliseconds.
            ## @return a integer
            ## 
            def startup_impact_in_ms
                return @startup_impact_in_ms
            end
            ## 
            ## Sets the startupImpactInMs property value. User experience analytics device startup process impact in milliseconds.
            ## @param value Value to set for the startup_impact_in_ms property.
            ## @return a void
            ## 
            def startup_impact_in_ms=(value)
                @startup_impact_in_ms = value
            end
        end
    end
end
