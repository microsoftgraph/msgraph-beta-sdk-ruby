require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/imported_apple_device_identity'
require_relative '../../../../device_management'
require_relative '../../../dep_onboarding_settings'
require_relative '../../item'
require_relative '../imported_apple_device_identities'
require_relative './import_apple_device_identity_list'

module MicrosoftGraphBeta
    module DeviceManagement
        module DepOnboardingSettings
            module Item
                module ImportedAppleDeviceIdentities
                    module ImportAppleDeviceIdentityList
                        class ImportAppleDeviceIdentityListPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The importedAppleDeviceIdentities property
                            @imported_apple_device_identities
                            ## 
                            # The overwriteImportedDeviceIdentities property
                            @overwrite_imported_device_identities
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
                            ## Instantiates a new importAppleDeviceIdentityListPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a import_apple_device_identity_list_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return ImportAppleDeviceIdentityListPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "importedAppleDeviceIdentities" => lambda {|n| @imported_apple_device_identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ImportedAppleDeviceIdentity.create_from_discriminator_value(pn) }) },
                                    "overwriteImportedDeviceIdentities" => lambda {|n| @overwrite_imported_device_identities = n.get_boolean_value() },
                                }
                            end
                            ## 
                            ## Gets the importedAppleDeviceIdentities property value. The importedAppleDeviceIdentities property
                            ## @return a imported_apple_device_identity
                            ## 
                            def imported_apple_device_identities
                                return @imported_apple_device_identities
                            end
                            ## 
                            ## Sets the importedAppleDeviceIdentities property value. The importedAppleDeviceIdentities property
                            ## @param value Value to set for the importedAppleDeviceIdentities property.
                            ## @return a void
                            ## 
                            def imported_apple_device_identities=(value)
                                @imported_apple_device_identities = value
                            end
                            ## 
                            ## Gets the overwriteImportedDeviceIdentities property value. The overwriteImportedDeviceIdentities property
                            ## @return a boolean
                            ## 
                            def overwrite_imported_device_identities
                                return @overwrite_imported_device_identities
                            end
                            ## 
                            ## Sets the overwriteImportedDeviceIdentities property value. The overwriteImportedDeviceIdentities property
                            ## @param value Value to set for the overwriteImportedDeviceIdentities property.
                            ## @return a void
                            ## 
                            def overwrite_imported_device_identities=(value)
                                @overwrite_imported_device_identities = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_collection_of_object_values("importedAppleDeviceIdentities", @imported_apple_device_identities)
                                writer.write_boolean_value("overwriteImportedDeviceIdentities", @overwrite_imported_device_identities)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
