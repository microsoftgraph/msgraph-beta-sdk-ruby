require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/key_credential'
require_relative '../../../templates'
require_relative '../../device_templates'
require_relative '../item'
require_relative './create_device_from_template'

module MicrosoftGraphBeta
    module Templates
        module DeviceTemplates
            module Item
                module CreateDeviceFromTemplate
                    class CreateDeviceFromTemplatePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The accountEnabled property
                        @account_enabled
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The alternativeNames property
                        @alternative_names
                        ## 
                        # The externalDeviceId property
                        @external_device_id
                        ## 
                        # The externalSourceName property
                        @external_source_name
                        ## 
                        # The keyCredential property
                        @key_credential
                        ## 
                        # The operatingSystemVersion property
                        @operating_system_version
                        ## 
                        ## Gets the accountEnabled property value. The accountEnabled property
                        ## @return a boolean
                        ## 
                        def account_enabled
                            return @account_enabled
                        end
                        ## 
                        ## Sets the accountEnabled property value. The accountEnabled property
                        ## @param value Value to set for the accountEnabled property.
                        ## @return a void
                        ## 
                        def account_enabled=(value)
                            @account_enabled = value
                        end
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
                        ## Gets the alternativeNames property value. The alternativeNames property
                        ## @return a string
                        ## 
                        def alternative_names
                            return @alternative_names
                        end
                        ## 
                        ## Sets the alternativeNames property value. The alternativeNames property
                        ## @param value Value to set for the alternativeNames property.
                        ## @return a void
                        ## 
                        def alternative_names=(value)
                            @alternative_names = value
                        end
                        ## 
                        ## Instantiates a new CreateDeviceFromTemplatePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a create_device_from_template_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return CreateDeviceFromTemplatePostRequestBody.new
                        end
                        ## 
                        ## Gets the externalDeviceId property value. The externalDeviceId property
                        ## @return a string
                        ## 
                        def external_device_id
                            return @external_device_id
                        end
                        ## 
                        ## Sets the externalDeviceId property value. The externalDeviceId property
                        ## @param value Value to set for the externalDeviceId property.
                        ## @return a void
                        ## 
                        def external_device_id=(value)
                            @external_device_id = value
                        end
                        ## 
                        ## Gets the externalSourceName property value. The externalSourceName property
                        ## @return a string
                        ## 
                        def external_source_name
                            return @external_source_name
                        end
                        ## 
                        ## Sets the externalSourceName property value. The externalSourceName property
                        ## @param value Value to set for the externalSourceName property.
                        ## @return a void
                        ## 
                        def external_source_name=(value)
                            @external_source_name = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "accountEnabled" => lambda {|n| @account_enabled = n.get_boolean_value() },
                                "alternativeNames" => lambda {|n| @alternative_names = n.get_collection_of_primitive_values(String) },
                                "externalDeviceId" => lambda {|n| @external_device_id = n.get_string_value() },
                                "externalSourceName" => lambda {|n| @external_source_name = n.get_string_value() },
                                "keyCredential" => lambda {|n| @key_credential = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::KeyCredential.create_from_discriminator_value(pn) }) },
                                "operatingSystemVersion" => lambda {|n| @operating_system_version = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the keyCredential property value. The keyCredential property
                        ## @return a key_credential
                        ## 
                        def key_credential
                            return @key_credential
                        end
                        ## 
                        ## Sets the keyCredential property value. The keyCredential property
                        ## @param value Value to set for the keyCredential property.
                        ## @return a void
                        ## 
                        def key_credential=(value)
                            @key_credential = value
                        end
                        ## 
                        ## Gets the operatingSystemVersion property value. The operatingSystemVersion property
                        ## @return a string
                        ## 
                        def operating_system_version
                            return @operating_system_version
                        end
                        ## 
                        ## Sets the operatingSystemVersion property value. The operatingSystemVersion property
                        ## @param value Value to set for the operatingSystemVersion property.
                        ## @return a void
                        ## 
                        def operating_system_version=(value)
                            @operating_system_version = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_boolean_value("accountEnabled", @account_enabled)
                            writer.write_collection_of_primitive_values("alternativeNames", @alternative_names)
                            writer.write_string_value("externalDeviceId", @external_device_id)
                            writer.write_string_value("externalSourceName", @external_source_name)
                            writer.write_object_value("keyCredential", @key_credential)
                            writer.write_string_value("operatingSystemVersion", @operating_system_version)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
