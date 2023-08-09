require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './security/security'

module MicrosoftGraphBeta
    module Models
        class SecurityDetectionAction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The alertTemplate property
            @alert_template
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The organizationalScope property
            @organizational_scope
            ## 
            # The responseActions property
            @response_actions
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
            ## Gets the alertTemplate property value. The alertTemplate property
            ## @return a security_alert_template
            ## 
            def alert_template
                return @alert_template
            end
            ## 
            ## Sets the alertTemplate property value. The alertTemplate property
            ## @param value Value to set for the alertTemplate property.
            ## @return a void
            ## 
            def alert_template=(value)
                @alert_template = value
            end
            ## 
            ## Instantiates a new detectionAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_detection_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDetectionAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "alertTemplate" => lambda {|n| @alert_template = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAlertTemplate.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "organizationalScope" => lambda {|n| @organizational_scope = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityOrganizationalScope.create_from_discriminator_value(pn) }) },
                    "responseActions" => lambda {|n| @response_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityResponseAction.create_from_discriminator_value(pn) }) },
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
            ## Gets the organizationalScope property value. The organizationalScope property
            ## @return a security_organizational_scope
            ## 
            def organizational_scope
                return @organizational_scope
            end
            ## 
            ## Sets the organizationalScope property value. The organizationalScope property
            ## @param value Value to set for the organizationalScope property.
            ## @return a void
            ## 
            def organizational_scope=(value)
                @organizational_scope = value
            end
            ## 
            ## Gets the responseActions property value. The responseActions property
            ## @return a security_response_action
            ## 
            def response_actions
                return @response_actions
            end
            ## 
            ## Sets the responseActions property value. The responseActions property
            ## @param value Value to set for the responseActions property.
            ## @return a void
            ## 
            def response_actions=(value)
                @response_actions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("alertTemplate", @alert_template)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("organizationalScope", @organizational_scope)
                writer.write_collection_of_object_values("responseActions", @response_actions)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
