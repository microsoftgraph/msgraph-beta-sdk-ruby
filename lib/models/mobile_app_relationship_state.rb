require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Describes the installation status details of the child app in the context of UPN and device id.
    class MobileAppRelationshipState
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The corresponding device id.
        @device_id
        ## 
        # The error code for install or uninstall failures of target app.
        @error_code
        ## 
        # A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
        @install_state
        ## 
        # Enum indicating additional details regarding why an application has a particular install state.
        @install_state_detail
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The collection of source mobile app's ids.
        @source_ids
        ## 
        # The related target app's display name.
        @target_display_name
        ## 
        # The related target app's id.
        @target_id
        ## 
        # The last sync time of the target app.
        @target_last_sync_date_time
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
        ## Instantiates a new mobileAppRelationshipState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mobile_app_relationship_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MobileAppRelationshipState.new
        end
        ## 
        ## Gets the deviceId property value. The corresponding device id.
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. The corresponding device id.
        ## @param value Value to set for the deviceId property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## Gets the errorCode property value. The error code for install or uninstall failures of target app.
        ## @return a integer
        ## 
        def error_code
            return @error_code
        end
        ## 
        ## Sets the errorCode property value. The error code for install or uninstall failures of target app.
        ## @param value Value to set for the errorCode property.
        ## @return a void
        ## 
        def error_code=(value)
            @error_code = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "errorCode" => lambda {|n| @error_code = n.get_number_value() },
                "installState" => lambda {|n| @install_state = n.get_enum_value(MicrosoftGraphBeta::Models::ResultantAppState) },
                "installStateDetail" => lambda {|n| @install_state_detail = n.get_enum_value(MicrosoftGraphBeta::Models::ResultantAppStateDetail) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "sourceIds" => lambda {|n| @source_ids = n.get_collection_of_primitive_values(String) },
                "targetDisplayName" => lambda {|n| @target_display_name = n.get_string_value() },
                "targetId" => lambda {|n| @target_id = n.get_string_value() },
                "targetLastSyncDateTime" => lambda {|n| @target_last_sync_date_time = n.get_date_time_value() },
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
        ## Gets the installStateDetail property value. Enum indicating additional details regarding why an application has a particular install state.
        ## @return a resultant_app_state_detail
        ## 
        def install_state_detail
            return @install_state_detail
        end
        ## 
        ## Sets the installStateDetail property value. Enum indicating additional details regarding why an application has a particular install state.
        ## @param value Value to set for the installStateDetail property.
        ## @return a void
        ## 
        def install_state_detail=(value)
            @install_state_detail = value
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_string_value("deviceId", @device_id)
            writer.write_number_value("errorCode", @error_code)
            writer.write_enum_value("installState", @install_state)
            writer.write_enum_value("installStateDetail", @install_state_detail)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_primitive_values("sourceIds", @source_ids)
            writer.write_string_value("targetDisplayName", @target_display_name)
            writer.write_string_value("targetId", @target_id)
            writer.write_date_time_value("targetLastSyncDateTime", @target_last_sync_date_time)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the sourceIds property value. The collection of source mobile app's ids.
        ## @return a string
        ## 
        def source_ids
            return @source_ids
        end
        ## 
        ## Sets the sourceIds property value. The collection of source mobile app's ids.
        ## @param value Value to set for the sourceIds property.
        ## @return a void
        ## 
        def source_ids=(value)
            @source_ids = value
        end
        ## 
        ## Gets the targetDisplayName property value. The related target app's display name.
        ## @return a string
        ## 
        def target_display_name
            return @target_display_name
        end
        ## 
        ## Sets the targetDisplayName property value. The related target app's display name.
        ## @param value Value to set for the targetDisplayName property.
        ## @return a void
        ## 
        def target_display_name=(value)
            @target_display_name = value
        end
        ## 
        ## Gets the targetId property value. The related target app's id.
        ## @return a string
        ## 
        def target_id
            return @target_id
        end
        ## 
        ## Sets the targetId property value. The related target app's id.
        ## @param value Value to set for the targetId property.
        ## @return a void
        ## 
        def target_id=(value)
            @target_id = value
        end
        ## 
        ## Gets the targetLastSyncDateTime property value. The last sync time of the target app.
        ## @return a date_time
        ## 
        def target_last_sync_date_time
            return @target_last_sync_date_time
        end
        ## 
        ## Sets the targetLastSyncDateTime property value. The last sync time of the target app.
        ## @param value Value to set for the targetLastSyncDateTime property.
        ## @return a void
        ## 
        def target_last_sync_date_time=(value)
            @target_last_sync_date_time = value
        end
    end
end
