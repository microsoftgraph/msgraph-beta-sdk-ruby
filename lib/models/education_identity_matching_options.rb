require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationIdentityMatchingOptions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The appliesTo property
            @applies_to
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The name of the source property, which should be a field name in the source data. This property is case-sensitive.
            @source_property_name
            ## 
            # The domain to suffix with the source property to match on the target. If provided as null, the source property will be used to match with the target property.
            @target_domain
            ## 
            # The name of the target property, which should be a valid property in Azure AD. This property is case-sensitive.
            @target_property_name
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
            ## Gets the appliesTo property value. The appliesTo property
            ## @return a education_user_role
            ## 
            def applies_to
                return @applies_to
            end
            ## 
            ## Sets the appliesTo property value. The appliesTo property
            ## @param value Value to set for the applies_to property.
            ## @return a void
            ## 
            def applies_to=(value)
                @applies_to = value
            end
            ## 
            ## Instantiates a new educationIdentityMatchingOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_identity_matching_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationIdentityMatchingOptions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appliesTo" => lambda {|n| @applies_to = n.get_enum_value(MicrosoftGraphBeta::Models::EducationUserRole) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sourcePropertyName" => lambda {|n| @source_property_name = n.get_string_value() },
                    "targetDomain" => lambda {|n| @target_domain = n.get_string_value() },
                    "targetPropertyName" => lambda {|n| @target_property_name = n.get_string_value() },
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
                writer.write_enum_value("appliesTo", @applies_to)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sourcePropertyName", @source_property_name)
                writer.write_string_value("targetDomain", @target_domain)
                writer.write_string_value("targetPropertyName", @target_property_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourcePropertyName property value. The name of the source property, which should be a field name in the source data. This property is case-sensitive.
            ## @return a string
            ## 
            def source_property_name
                return @source_property_name
            end
            ## 
            ## Sets the sourcePropertyName property value. The name of the source property, which should be a field name in the source data. This property is case-sensitive.
            ## @param value Value to set for the source_property_name property.
            ## @return a void
            ## 
            def source_property_name=(value)
                @source_property_name = value
            end
            ## 
            ## Gets the targetDomain property value. The domain to suffix with the source property to match on the target. If provided as null, the source property will be used to match with the target property.
            ## @return a string
            ## 
            def target_domain
                return @target_domain
            end
            ## 
            ## Sets the targetDomain property value. The domain to suffix with the source property to match on the target. If provided as null, the source property will be used to match with the target property.
            ## @param value Value to set for the target_domain property.
            ## @return a void
            ## 
            def target_domain=(value)
                @target_domain = value
            end
            ## 
            ## Gets the targetPropertyName property value. The name of the target property, which should be a valid property in Azure AD. This property is case-sensitive.
            ## @return a string
            ## 
            def target_property_name
                return @target_property_name
            end
            ## 
            ## Sets the targetPropertyName property value. The name of the target property, which should be a valid property in Azure AD. This property is case-sensitive.
            ## @param value Value to set for the target_property_name property.
            ## @return a void
            ## 
            def target_property_name=(value)
                @target_property_name = value
            end
        end
    end
end
