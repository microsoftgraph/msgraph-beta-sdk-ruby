require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './security/security'

module MicrosoftGraphBeta
    module Models
        class SecurityOrganizationalScope
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The scopeNames property
            @scope_names
            ## 
            # The scopeType property
            @scope_type
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
            ## Instantiates a new organizationalScope and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_organizational_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityOrganizationalScope.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "scopeNames" => lambda {|n| @scope_names = n.get_collection_of_primitive_values(String) },
                    "scopeType" => lambda {|n| @scope_type = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityScopeType) },
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
            ## Gets the scopeNames property value. The scopeNames property
            ## @return a string
            ## 
            def scope_names
                return @scope_names
            end
            ## 
            ## Sets the scopeNames property value. The scopeNames property
            ## @param value Value to set for the scopeNames property.
            ## @return a void
            ## 
            def scope_names=(value)
                @scope_names = value
            end
            ## 
            ## Gets the scopeType property value. The scopeType property
            ## @return a security_scope_type
            ## 
            def scope_type
                return @scope_type
            end
            ## 
            ## Sets the scopeType property value. The scopeType property
            ## @param value Value to set for the scopeType property.
            ## @return a void
            ## 
            def scope_type=(value)
                @scope_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("scopeNames", @scope_names)
                writer.write_enum_value("scopeType", @scope_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
