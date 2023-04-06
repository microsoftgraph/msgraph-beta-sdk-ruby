require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ConditionalAccessDeviceStates
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # States excluded from the scope of the policy. Possible values: Compliant, DomainJoined.
            @exclude_states
            ## 
            # States in the scope of the policy. All is the only allowed value.
            @include_states
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new conditionalAccessDeviceStates and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_device_states
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessDeviceStates.new
            end
            ## 
            ## Gets the excludeStates property value. States excluded from the scope of the policy. Possible values: Compliant, DomainJoined.
            ## @return a string
            ## 
            def exclude_states
                return @exclude_states
            end
            ## 
            ## Sets the excludeStates property value. States excluded from the scope of the policy. Possible values: Compliant, DomainJoined.
            ## @param value Value to set for the exclude_states property.
            ## @return a void
            ## 
            def exclude_states=(value)
                @exclude_states = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "excludeStates" => lambda {|n| @exclude_states = n.get_collection_of_primitive_values(String) },
                    "includeStates" => lambda {|n| @include_states = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the includeStates property value. States in the scope of the policy. All is the only allowed value.
            ## @return a string
            ## 
            def include_states
                return @include_states
            end
            ## 
            ## Sets the includeStates property value. States in the scope of the policy. All is the only allowed value.
            ## @param value Value to set for the include_states property.
            ## @return a void
            ## 
            def include_states=(value)
                @include_states = value
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_collection_of_primitive_values("excludeStates", @exclude_states)
                writer.write_collection_of_primitive_values("includeStates", @include_states)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
