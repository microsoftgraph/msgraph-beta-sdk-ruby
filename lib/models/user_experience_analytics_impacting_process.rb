require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserExperienceAnalyticsImpactingProcess < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The category of impacting process.
            @category
            ## 
            # The description of process.
            @description
            ## 
            # The unique identifier of the impacted device.
            @device_id
            ## 
            # The impact value of the process. Valid values 0 to 1.79769313486232E+308
            @impact_value
            ## 
            # The process name.
            @process_name
            ## 
            # The publisher of the process.
            @publisher
            ## 
            ## Gets the category property value. The category of impacting process.
            ## @return a string
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category of impacting process.
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsImpactingProcess and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_impacting_process
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsImpactingProcess.new
            end
            ## 
            ## Gets the description property value. The description of process.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of process.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceId property value. The unique identifier of the impacted device.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The unique identifier of the impacted device.
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "category" => lambda {|n| @category = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "impactValue" => lambda {|n| @impact_value = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "processName" => lambda {|n| @process_name = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                })
            end
            ## 
            ## Gets the impactValue property value. The impact value of the process. Valid values 0 to 1.79769313486232E+308
            ## @return a double
            ## 
            def impact_value
                return @impact_value
            end
            ## 
            ## Sets the impactValue property value. The impact value of the process. Valid values 0 to 1.79769313486232E+308
            ## @param value Value to set for the impact_value property.
            ## @return a void
            ## 
            def impact_value=(value)
                @impact_value = value
            end
            ## 
            ## Gets the processName property value. The process name.
            ## @return a string
            ## 
            def process_name
                return @process_name
            end
            ## 
            ## Sets the processName property value. The process name.
            ## @param value Value to set for the process_name property.
            ## @return a void
            ## 
            def process_name=(value)
                @process_name = value
            end
            ## 
            ## Gets the publisher property value. The publisher of the process.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. The publisher of the process.
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
                writer.write_string_value("category", @category)
                writer.write_string_value("description", @description)
                writer.write_string_value("deviceId", @device_id)
                writer.write_object_value("impactValue", @impact_value)
                writer.write_string_value("processName", @process_name)
                writer.write_string_value("publisher", @publisher)
            end
        end
    end
end
