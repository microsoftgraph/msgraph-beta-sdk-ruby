require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomAuthenticationExtension < MicrosoftGraphBeta::Models::CustomCalloutExtension
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The behaviorOnError property
            @behavior_on_error
            ## 
            ## Gets the behaviorOnError property value. The behaviorOnError property
            ## @return a custom_extension_behavior_on_error
            ## 
            def behavior_on_error
                return @behavior_on_error
            end
            ## 
            ## Sets the behaviorOnError property value. The behaviorOnError property
            ## @param value Value to set for the behaviorOnError property.
            ## @return a void
            ## 
            def behavior_on_error=(value)
                @behavior_on_error = value
            end
            ## 
            ## Instantiates a new CustomAuthenticationExtension and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.customAuthenticationExtension"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_authentication_extension
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.onAttributeCollectionStartCustomExtension"
                            return OnAttributeCollectionStartCustomExtension.new
                        when "#microsoft.graph.onAttributeCollectionSubmitCustomExtension"
                            return OnAttributeCollectionSubmitCustomExtension.new
                        when "#microsoft.graph.onOtpSendCustomExtension"
                            return OnOtpSendCustomExtension.new
                        when "#microsoft.graph.onTokenIssuanceStartCustomExtension"
                            return OnTokenIssuanceStartCustomExtension.new
                    end
                end
                return CustomAuthenticationExtension.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "behaviorOnError" => lambda {|n| @behavior_on_error = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CustomExtensionBehaviorOnError.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("behaviorOnError", @behavior_on_error)
            end
        end
    end
end
