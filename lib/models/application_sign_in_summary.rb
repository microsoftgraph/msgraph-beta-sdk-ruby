require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ApplicationSignInSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Name of the application that the user signed into.
            @app_display_name
            ## 
            # Count of failed sign-ins made by the application.
            @failed_sign_in_count
            ## 
            # Percentage of successful sign-ins made by the application.
            @success_percentage
            ## 
            # Count of successful sign-ins made by the application.
            @successful_sign_in_count
            ## 
            ## Gets the appDisplayName property value. Name of the application that the user signed into.
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. Name of the application that the user signed into.
            ## @param value Value to set for the appDisplayName property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Instantiates a new ApplicationSignInSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a application_sign_in_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApplicationSignInSummary.new
            end
            ## 
            ## Gets the failedSignInCount property value. Count of failed sign-ins made by the application.
            ## @return a int64
            ## 
            def failed_sign_in_count
                return @failed_sign_in_count
            end
            ## 
            ## Sets the failedSignInCount property value. Count of failed sign-ins made by the application.
            ## @param value Value to set for the failedSignInCount property.
            ## @return a void
            ## 
            def failed_sign_in_count=(value)
                @failed_sign_in_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "failedSignInCount" => lambda {|n| @failed_sign_in_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "successPercentage" => lambda {|n| @success_percentage = n.get_object_value(lambda {|pn| ApplicationSignInSummary::ApplicationSignInSummarySuccessPercentage.create_from_discriminator_value(pn) }) },
                    "successfulSignInCount" => lambda {|n| @successful_sign_in_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_object_value("failedSignInCount", @failed_sign_in_count)
                writer.write_object_value("successPercentage", @success_percentage)
                writer.write_object_value("successfulSignInCount", @successful_sign_in_count)
            end
            ## 
            ## Gets the successPercentage property value. Percentage of successful sign-ins made by the application.
            ## @return a application_sign_in_summary_success_percentage
            ## 
            def success_percentage
                return @success_percentage
            end
            ## 
            ## Sets the successPercentage property value. Percentage of successful sign-ins made by the application.
            ## @param value Value to set for the successPercentage property.
            ## @return a void
            ## 
            def success_percentage=(value)
                @success_percentage = value
            end
            ## 
            ## Gets the successfulSignInCount property value. Count of successful sign-ins made by the application.
            ## @return a int64
            ## 
            def successful_sign_in_count
                return @successful_sign_in_count
            end
            ## 
            ## Sets the successfulSignInCount property value. Count of successful sign-ins made by the application.
            ## @param value Value to set for the successfulSignInCount property.
            ## @return a void
            ## 
            def successful_sign_in_count=(value)
                @successful_sign_in_count = value
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class ApplicationSignInSummarySuccessPercentage
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
                ## @return a application_sign_in_summary_success_percentage
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
                    return ApplicationSignInSummarySuccessPercentage.new
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
