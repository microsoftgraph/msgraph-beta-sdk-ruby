require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MfaFailure < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The count property
            @count
            ## 
            # The reason property
            @reason
            ## 
            # The reasonCode property
            @reason_code
            ## 
            ## Instantiates a new MfaFailure and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the count property value. The count property
            ## @return a int64
            ## 
            def count
                return @count
            end
            ## 
            ## Sets the count property value. The count property
            ## @param value Value to set for the count property.
            ## @return a void
            ## 
            def count=(value)
                @count = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mfa_failure
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MfaFailure.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "count" => lambda {|n| @count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "reason" => lambda {|n| @reason = n.get_string_value() },
                    "reasonCode" => lambda {|n| @reason_code = n.get_enum_value(MicrosoftGraphBeta::Models::MfaFailureReasonCode) },
                })
            end
            ## 
            ## Gets the reason property value. The reason property
            ## @return a string
            ## 
            def reason
                return @reason
            end
            ## 
            ## Sets the reason property value. The reason property
            ## @param value Value to set for the reason property.
            ## @return a void
            ## 
            def reason=(value)
                @reason = value
            end
            ## 
            ## Gets the reasonCode property value. The reasonCode property
            ## @return a mfa_failure_reason_code
            ## 
            def reason_code
                return @reason_code
            end
            ## 
            ## Sets the reasonCode property value. The reasonCode property
            ## @param value Value to set for the reasonCode property.
            ## @return a void
            ## 
            def reason_code=(value)
                @reason_code = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("count", @count)
                writer.write_string_value("reason", @reason)
                writer.write_enum_value("reasonCode", @reason_code)
            end
        end
    end
end
