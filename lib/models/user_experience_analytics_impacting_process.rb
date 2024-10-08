require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics top impacting process entity.
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
            ## @param parse_node The parse node to use to read the discriminator value and create the object
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
            ## @param value Value to set for the deviceId property.
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
                    "impactValue" => lambda {|n| @impact_value = n.get_object_value(lambda {|pn| UserExperienceAnalyticsImpactingProcess::UserExperienceAnalyticsImpactingProcessImpactValue.create_from_discriminator_value(pn) }) },
                    "processName" => lambda {|n| @process_name = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                })
            end
            ## 
            ## Gets the impactValue property value. The impact value of the process. Valid values 0 to 1.79769313486232E+308
            ## @return a user_experience_analytics_impacting_process_impact_value
            ## 
            def impact_value
                return @impact_value
            end
            ## 
            ## Sets the impactValue property value. The impact value of the process. Valid values 0 to 1.79769313486232E+308
            ## @param value Value to set for the impactValue property.
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
            ## @param value Value to set for the processName property.
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

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class UserExperienceAnalyticsImpactingProcessImpactValue
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a user_experience_analytics_impacting_process_impact_value
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return UserExperienceAnalyticsImpactingProcessImpactValue.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraphBeta::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end
