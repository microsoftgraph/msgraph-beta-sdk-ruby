require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsTenantContactInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The email address for the contact. Optional
            @email
            ## 
            # The name for the contact. Required.
            @name
            ## 
            # The notes associated with the contact. Optional
            @notes
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The phone number for the contact. Optional.
            @phone
            ## 
            # The title for the contact. Required.
            @title
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
            ## Instantiates a new managedTenantsTenantContactInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_tenant_contact_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsTenantContactInformation.new
            end
            ## 
            ## Gets the email property value. The email address for the contact. Optional
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email address for the contact. Optional
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "notes" => lambda {|n| @notes = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "phone" => lambda {|n| @phone = n.get_string_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
                }
            end
            ## 
            ## Gets the name property value. The name for the contact. Required.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name for the contact. Required.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the notes property value. The notes associated with the contact. Optional
            ## @return a string
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. The notes associated with the contact. Optional
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
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
            ## Gets the phone property value. The phone number for the contact. Optional.
            ## @return a string
            ## 
            def phone
                return @phone
            end
            ## 
            ## Sets the phone property value. The phone number for the contact. Optional.
            ## @param value Value to set for the phone property.
            ## @return a void
            ## 
            def phone=(value)
                @phone = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("email", @email)
                writer.write_string_value("name", @name)
                writer.write_string_value("notes", @notes)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("phone", @phone)
                writer.write_string_value("title", @title)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the title property value. The title for the contact. Required.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title for the contact. Required.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
