require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A `managedAppLogUpload` represents the log upload result for a given Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs.
        class ManagedAppLogUpload
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs. Read-only.
            @managed_app_component
            ## 
            # The Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs. Read-only.
            @managed_app_component_description
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A provider-specific reference id for the uploaded logs. Read-only.
            @reference_id
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
            ## Instantiates a new ManagedAppLogUpload and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_app_log_upload
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedAppLogUpload.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "managedAppComponent" => lambda {|n| @managed_app_component = n.get_string_value() },
                    "managedAppComponentDescription" => lambda {|n| @managed_app_component_description = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "referenceId" => lambda {|n| @reference_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the managedAppComponent property value. The Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs. Read-only.
            ## @return a string
            ## 
            def managed_app_component
                return @managed_app_component
            end
            ## 
            ## Sets the managedAppComponent property value. The Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs. Read-only.
            ## @param value Value to set for the managedAppComponent property.
            ## @return a void
            ## 
            def managed_app_component=(value)
                @managed_app_component = value
            end
            ## 
            ## Gets the managedAppComponentDescription property value. The Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs. Read-only.
            ## @return a string
            ## 
            def managed_app_component_description
                return @managed_app_component_description
            end
            ## 
            ## Sets the managedAppComponentDescription property value. The Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs. Read-only.
            ## @param value Value to set for the managedAppComponentDescription property.
            ## @return a void
            ## 
            def managed_app_component_description=(value)
                @managed_app_component_description = value
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
            ## Gets the referenceId property value. A provider-specific reference id for the uploaded logs. Read-only.
            ## @return a string
            ## 
            def reference_id
                return @reference_id
            end
            ## 
            ## Sets the referenceId property value. A provider-specific reference id for the uploaded logs. Read-only.
            ## @param value Value to set for the referenceId property.
            ## @return a void
            ## 
            def reference_id=(value)
                @reference_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("managedAppComponent", @managed_app_component)
                writer.write_string_value("managedAppComponentDescription", @managed_app_component_description)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("referenceId", @reference_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
