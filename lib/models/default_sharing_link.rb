require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DefaultSharingLink
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the default link setting for this object is a direct URL rather than a sharing link.
            @default_to_existing_access
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The default sharing link role. The possible values are: none, view, edit, manageList, review, restrictedView, submitOnly, unknownFutureValue.
            @role
            ## 
            # The default sharing link scope. The possible values are: anyone, organization, specificPeople, anonymous, users, unknownFutureValue.
            @scope
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
            ## Instantiates a new DefaultSharingLink and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a default_sharing_link
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DefaultSharingLink.new
            end
            ## 
            ## Gets the defaultToExistingAccess property value. Indicates whether the default link setting for this object is a direct URL rather than a sharing link.
            ## @return a boolean
            ## 
            def default_to_existing_access
                return @default_to_existing_access
            end
            ## 
            ## Sets the defaultToExistingAccess property value. Indicates whether the default link setting for this object is a direct URL rather than a sharing link.
            ## @param value Value to set for the defaultToExistingAccess property.
            ## @return a void
            ## 
            def default_to_existing_access=(value)
                @default_to_existing_access = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultToExistingAccess" => lambda {|n| @default_to_existing_access = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraphBeta::Models::SharingRole) },
                    "scope" => lambda {|n| @scope = n.get_enum_value(MicrosoftGraphBeta::Models::SharingScope) },
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
            ## Gets the role property value. The default sharing link role. The possible values are: none, view, edit, manageList, review, restrictedView, submitOnly, unknownFutureValue.
            ## @return a sharing_role
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. The default sharing link role. The possible values are: none, view, edit, manageList, review, restrictedView, submitOnly, unknownFutureValue.
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Gets the scope property value. The default sharing link scope. The possible values are: anyone, organization, specificPeople, anonymous, users, unknownFutureValue.
            ## @return a sharing_scope
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. The default sharing link scope. The possible values are: anyone, organization, specificPeople, anonymous, users, unknownFutureValue.
            ## @param value Value to set for the scope property.
            ## @return a void
            ## 
            def scope=(value)
                @scope = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("defaultToExistingAccess", @default_to_existing_access)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("role", @role)
                writer.write_enum_value("scope", @scope)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
