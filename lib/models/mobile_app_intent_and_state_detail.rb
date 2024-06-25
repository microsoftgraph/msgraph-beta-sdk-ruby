require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Mobile App Intent and Install State for a given device.
        class MobileAppIntentAndStateDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # MobieApp identifier.
            @application_id
            ## 
            # The admin provided or imported title of the app.
            @display_name
            ## 
            # Human readable version of the application
            @display_version
            ## 
            # A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
            @install_state
            ## 
            # Indicates the status of the mobile app on the device.
            @mobile_app_intent
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The supported platforms for the app.
            @supported_device_types
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
            ## Gets the applicationId property value. MobieApp identifier.
            ## @return a string
            ## 
            def application_id
                return @application_id
            end
            ## 
            ## Sets the applicationId property value. MobieApp identifier.
            ## @param value Value to set for the applicationId property.
            ## @return a void
            ## 
            def application_id=(value)
                @application_id = value
            end
            ## 
            ## Instantiates a new MobileAppIntentAndStateDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_intent_and_state_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppIntentAndStateDetail.new
            end
            ## 
            ## Gets the displayName property value. The admin provided or imported title of the app.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The admin provided or imported title of the app.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the displayVersion property value. Human readable version of the application
            ## @return a string
            ## 
            def display_version
                return @display_version
            end
            ## 
            ## Sets the displayVersion property value. Human readable version of the application
            ## @param value Value to set for the displayVersion property.
            ## @return a void
            ## 
            def display_version=(value)
                @display_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applicationId" => lambda {|n| @application_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "displayVersion" => lambda {|n| @display_version = n.get_string_value() },
                    "installState" => lambda {|n| @install_state = n.get_enum_value(MicrosoftGraphBeta::Models::ResultantAppState) },
                    "mobileAppIntent" => lambda {|n| @mobile_app_intent = n.get_enum_value(MicrosoftGraphBeta::Models::MobileAppIntent) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "supportedDeviceTypes" => lambda {|n| @supported_device_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppSupportedDeviceType.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the installState property value. A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
            ## @return a resultant_app_state
            ## 
            def install_state
                return @install_state
            end
            ## 
            ## Sets the installState property value. A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
            ## @param value Value to set for the installState property.
            ## @return a void
            ## 
            def install_state=(value)
                @install_state = value
            end
            ## 
            ## Gets the mobileAppIntent property value. Indicates the status of the mobile app on the device.
            ## @return a mobile_app_intent
            ## 
            def mobile_app_intent
                return @mobile_app_intent
            end
            ## 
            ## Sets the mobileAppIntent property value. Indicates the status of the mobile app on the device.
            ## @param value Value to set for the mobileAppIntent property.
            ## @return a void
            ## 
            def mobile_app_intent=(value)
                @mobile_app_intent = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("applicationId", @application_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("displayVersion", @display_version)
                writer.write_enum_value("installState", @install_state)
                writer.write_enum_value("mobileAppIntent", @mobile_app_intent)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("supportedDeviceTypes", @supported_device_types)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the supportedDeviceTypes property value. The supported platforms for the app.
            ## @return a mobile_app_supported_device_type
            ## 
            def supported_device_types
                return @supported_device_types
            end
            ## 
            ## Sets the supportedDeviceTypes property value. The supported platforms for the app.
            ## @param value Value to set for the supportedDeviceTypes property.
            ## @return a void
            ## 
            def supported_device_types=(value)
                @supported_device_types = value
            end
        end
    end
end
