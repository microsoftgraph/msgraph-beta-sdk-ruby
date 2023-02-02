require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AuthenticationConditionsApplications
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The includeAllApplications property
        @include_all_applications
        ## 
        # The includeApplications property
        @include_applications
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
        ## Instantiates a new authenticationConditionsApplications and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a authentication_conditions_applications
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AuthenticationConditionsApplications.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "includeAllApplications" => lambda {|n| @include_all_applications = n.get_boolean_value() },
                "includeApplications" => lambda {|n| @include_applications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationConditionApplication.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the includeAllApplications property value. The includeAllApplications property
        ## @return a boolean
        ## 
        def include_all_applications
            return @include_all_applications
        end
        ## 
        ## Sets the includeAllApplications property value. The includeAllApplications property
        ## @param value Value to set for the include_all_applications property.
        ## @return a void
        ## 
        def include_all_applications=(value)
            @include_all_applications = value
        end
        ## 
        ## Gets the includeApplications property value. The includeApplications property
        ## @return a authentication_condition_application
        ## 
        def include_applications
            return @include_applications
        end
        ## 
        ## Sets the includeApplications property value. The includeApplications property
        ## @param value Value to set for the include_applications property.
        ## @return a void
        ## 
        def include_applications=(value)
            @include_applications = value
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
            writer.write_boolean_value("includeAllApplications", @include_all_applications)
            writer.write_collection_of_object_values("includeApplications", @include_applications)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
