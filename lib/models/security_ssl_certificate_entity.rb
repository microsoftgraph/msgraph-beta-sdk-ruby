require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecuritySslCertificateEntity
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The address property
            @address
            ## 
            # The alternateNames property
            @alternate_names
            ## 
            # The commonName property
            @common_name
            ## 
            # The email property
            @email
            ## 
            # The givenName property
            @given_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The organizationName property
            @organization_name
            ## 
            # The organizationUnitName property
            @organization_unit_name
            ## 
            # The serialNumber property
            @serial_number
            ## 
            # The surname property
            @surname
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
            ## Gets the address property value. The address property
            ## @return a physical_address
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The address property
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Gets the alternateNames property value. The alternateNames property
            ## @return a string
            ## 
            def alternate_names
                return @alternate_names
            end
            ## 
            ## Sets the alternateNames property value. The alternateNames property
            ## @param value Value to set for the alternateNames property.
            ## @return a void
            ## 
            def alternate_names=(value)
                @alternate_names = value
            end
            ## 
            ## Gets the commonName property value. The commonName property
            ## @return a string
            ## 
            def common_name
                return @common_name
            end
            ## 
            ## Sets the commonName property value. The commonName property
            ## @param value Value to set for the commonName property.
            ## @return a void
            ## 
            def common_name=(value)
                @common_name = value
            end
            ## 
            ## Instantiates a new securitySslCertificateEntity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ssl_certificate_entity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecuritySslCertificateEntity.new
            end
            ## 
            ## Gets the email property value. The email property
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email property
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
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "alternateNames" => lambda {|n| @alternate_names = n.get_collection_of_primitive_values(String) },
                    "commonName" => lambda {|n| @common_name = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "givenName" => lambda {|n| @given_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "organizationName" => lambda {|n| @organization_name = n.get_string_value() },
                    "organizationUnitName" => lambda {|n| @organization_unit_name = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "surname" => lambda {|n| @surname = n.get_string_value() },
                }
            end
            ## 
            ## Gets the givenName property value. The givenName property
            ## @return a string
            ## 
            def given_name
                return @given_name
            end
            ## 
            ## Sets the givenName property value. The givenName property
            ## @param value Value to set for the givenName property.
            ## @return a void
            ## 
            def given_name=(value)
                @given_name = value
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
            ## Gets the organizationName property value. The organizationName property
            ## @return a string
            ## 
            def organization_name
                return @organization_name
            end
            ## 
            ## Sets the organizationName property value. The organizationName property
            ## @param value Value to set for the organizationName property.
            ## @return a void
            ## 
            def organization_name=(value)
                @organization_name = value
            end
            ## 
            ## Gets the organizationUnitName property value. The organizationUnitName property
            ## @return a string
            ## 
            def organization_unit_name
                return @organization_unit_name
            end
            ## 
            ## Sets the organizationUnitName property value. The organizationUnitName property
            ## @param value Value to set for the organizationUnitName property.
            ## @return a void
            ## 
            def organization_unit_name=(value)
                @organization_unit_name = value
            end
            ## 
            ## Gets the serialNumber property value. The serialNumber property
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. The serialNumber property
            ## @param value Value to set for the serialNumber property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("address", @address)
                writer.write_collection_of_primitive_values("alternateNames", @alternate_names)
                writer.write_string_value("commonName", @common_name)
                writer.write_string_value("email", @email)
                writer.write_string_value("givenName", @given_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("organizationName", @organization_name)
                writer.write_string_value("organizationUnitName", @organization_unit_name)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_string_value("surname", @surname)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the surname property value. The surname property
            ## @return a string
            ## 
            def surname
                return @surname
            end
            ## 
            ## Sets the surname property value. The surname property
            ## @param value Value to set for the surname property.
            ## @return a void
            ## 
            def surname=(value)
                @surname = value
            end
        end
    end
end
