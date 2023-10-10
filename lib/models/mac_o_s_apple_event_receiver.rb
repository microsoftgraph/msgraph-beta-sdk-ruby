require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents a process that can receive an Apple Event notification.
        class MacOSAppleEventReceiver
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Allow or block this app from receiving Apple events.
            @allowed
            ## 
            # Code requirement for the app or binary that receives the Apple Event.
            @code_requirement
            ## 
            # Bundle ID of the app or file path of the process or executable that receives the Apple Event.
            @identifier
            ## 
            # Process identifier types for MacOS Privacy Preferences
            @identifier_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowed property value. Allow or block this app from receiving Apple events.
            ## @return a boolean
            ## 
            def allowed
                return @allowed
            end
            ## 
            ## Sets the allowed property value. Allow or block this app from receiving Apple events.
            ## @param value Value to set for the allowed property.
            ## @return a void
            ## 
            def allowed=(value)
                @allowed = value
            end
            ## 
            ## Gets the codeRequirement property value. Code requirement for the app or binary that receives the Apple Event.
            ## @return a string
            ## 
            def code_requirement
                return @code_requirement
            end
            ## 
            ## Sets the codeRequirement property value. Code requirement for the app or binary that receives the Apple Event.
            ## @param value Value to set for the codeRequirement property.
            ## @return a void
            ## 
            def code_requirement=(value)
                @code_requirement = value
            end
            ## 
            ## Instantiates a new macOSAppleEventReceiver and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_apple_event_receiver
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSAppleEventReceiver.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowed" => lambda {|n| @allowed = n.get_boolean_value() },
                    "codeRequirement" => lambda {|n| @code_requirement = n.get_string_value() },
                    "identifier" => lambda {|n| @identifier = n.get_string_value() },
                    "identifierType" => lambda {|n| @identifier_type = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSProcessIdentifierType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the identifier property value. Bundle ID of the app or file path of the process or executable that receives the Apple Event.
            ## @return a string
            ## 
            def identifier
                return @identifier
            end
            ## 
            ## Sets the identifier property value. Bundle ID of the app or file path of the process or executable that receives the Apple Event.
            ## @param value Value to set for the identifier property.
            ## @return a void
            ## 
            def identifier=(value)
                @identifier = value
            end
            ## 
            ## Gets the identifierType property value. Process identifier types for MacOS Privacy Preferences
            ## @return a mac_o_s_process_identifier_type
            ## 
            def identifier_type
                return @identifier_type
            end
            ## 
            ## Sets the identifierType property value. Process identifier types for MacOS Privacy Preferences
            ## @param value Value to set for the identifierType property.
            ## @return a void
            ## 
            def identifier_type=(value)
                @identifier_type = value
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
                writer.write_boolean_value("allowed", @allowed)
                writer.write_string_value("codeRequirement", @code_requirement)
                writer.write_string_value("identifier", @identifier)
                writer.write_enum_value("identifierType", @identifier_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
