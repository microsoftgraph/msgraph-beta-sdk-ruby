require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/current_label'
require_relative '../../../../../models/discovered_sensitive_type'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../information_protection'
require_relative '../sensitivity_labels'
require_relative './evaluate'

module MicrosoftGraphBeta::Users::Item::InformationProtection::SensitivityLabels::Evaluate
    ## 
    # Provides operations to call the evaluate method.
    class EvaluatePostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The currentLabel property
        @current_label
        ## 
        # The discoveredSensitiveTypes property
        @discovered_sensitive_types
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
        ## Instantiates a new evaluatePostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a evaluate_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EvaluatePostRequestBody.new
        end
        ## 
        ## Gets the currentLabel property value. The currentLabel property
        ## @return a current_label
        ## 
        def current_label
            return @current_label
        end
        ## 
        ## Sets the currentLabel property value. The currentLabel property
        ## @param value Value to set for the currentLabel property.
        ## @return a void
        ## 
        def current_label=(value)
            @current_label = value
        end
        ## 
        ## Gets the discoveredSensitiveTypes property value. The discoveredSensitiveTypes property
        ## @return a discovered_sensitive_type
        ## 
        def discovered_sensitive_types
            return @discovered_sensitive_types
        end
        ## 
        ## Sets the discoveredSensitiveTypes property value. The discoveredSensitiveTypes property
        ## @param value Value to set for the discoveredSensitiveTypes property.
        ## @return a void
        ## 
        def discovered_sensitive_types=(value)
            @discovered_sensitive_types = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "currentLabel" => lambda {|n| @current_label = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CurrentLabel.create_from_discriminator_value(pn) }) },
                "discoveredSensitiveTypes" => lambda {|n| @discovered_sensitive_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DiscoveredSensitiveType.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("currentLabel", @current_label)
            writer.write_collection_of_object_values("discoveredSensitiveTypes", @discovered_sensitive_types)
            writer.write_additional_data(@additional_data)
        end
    end
end
