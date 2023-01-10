require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Describes the status for a single FOTA deployment.
    class ZebraFotaDeploymentStatus
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # A boolean that indicates if a cancellation was requested on the deployment. NOTE: A cancellation request does not guarantee that the deployment was canceled.
        @cancel_requested
        ## 
        # The date and time when this deployment was completed or canceled. The actual date time is determined by the value of state. If the state is canceled, this property holds the cancellation date/time. If the the state is completed, this property holds the completion date/time. If the deployment is not completed before the deployment end date, then completed date/time and end date/time are the same. This is always in the deployment timezone. Note: An installation that is in progress can continue past the deployment end date.
        @complete_or_canceled_date_time
        ## 
        # Date and time when the deployment status was updated from Zebra
        @last_updated_date_time
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Represents the state of Zebra FOTA deployment.
        @state
        ## 
        # An integer that indicates the total number of devices where installation was successful.
        @total_awaiting_install
        ## 
        # An integer that indicates the total number of devices where installation was canceled.
        @total_canceled
        ## 
        # An integer that indicates the total number of devices that have a job in the CREATED state. Typically indicates jobs that did not reach the devices.
        @total_created
        ## 
        # An integer that indicates the total number of devices in the deployment.
        @total_devices
        ## 
        # An integer that indicates the total number of devices where installation was successful.
        @total_downloading
        ## 
        # An integer that indicates the total number of devices that have failed to download the new OS file.
        @total_failed_download
        ## 
        # An integer that indicates the total number of devices that have failed to install the new OS file.
        @total_failed_install
        ## 
        # An integer that indicates the total number of devices that received the json and are scheduled.
        @total_scheduled
        ## 
        # An integer that indicates the total number of devices where installation was successful.
        @total_succeeded_install
        ## 
        # An integer that indicates the total number of devices where no deployment status or end state has not received, even after the scheduled end date was reached.
        @total_unknown
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
        ## Gets the cancelRequested property value. A boolean that indicates if a cancellation was requested on the deployment. NOTE: A cancellation request does not guarantee that the deployment was canceled.
        ## @return a boolean
        ## 
        def cancel_requested
            return @cancel_requested
        end
        ## 
        ## Sets the cancelRequested property value. A boolean that indicates if a cancellation was requested on the deployment. NOTE: A cancellation request does not guarantee that the deployment was canceled.
        ## @param value Value to set for the cancelRequested property.
        ## @return a void
        ## 
        def cancel_requested=(value)
            @cancel_requested = value
        end
        ## 
        ## Gets the completeOrCanceledDateTime property value. The date and time when this deployment was completed or canceled. The actual date time is determined by the value of state. If the state is canceled, this property holds the cancellation date/time. If the the state is completed, this property holds the completion date/time. If the deployment is not completed before the deployment end date, then completed date/time and end date/time are the same. This is always in the deployment timezone. Note: An installation that is in progress can continue past the deployment end date.
        ## @return a date_time
        ## 
        def complete_or_canceled_date_time
            return @complete_or_canceled_date_time
        end
        ## 
        ## Sets the completeOrCanceledDateTime property value. The date and time when this deployment was completed or canceled. The actual date time is determined by the value of state. If the state is canceled, this property holds the cancellation date/time. If the the state is completed, this property holds the completion date/time. If the deployment is not completed before the deployment end date, then completed date/time and end date/time are the same. This is always in the deployment timezone. Note: An installation that is in progress can continue past the deployment end date.
        ## @param value Value to set for the completeOrCanceledDateTime property.
        ## @return a void
        ## 
        def complete_or_canceled_date_time=(value)
            @complete_or_canceled_date_time = value
        end
        ## 
        ## Instantiates a new zebraFotaDeploymentStatus and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a zebra_fota_deployment_status
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ZebraFotaDeploymentStatus.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "cancelRequested" => lambda {|n| @cancel_requested = n.get_boolean_value() },
                "completeOrCanceledDateTime" => lambda {|n| @complete_or_canceled_date_time = n.get_date_time_value() },
                "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::ZebraFotaDeploymentState) },
                "totalAwaitingInstall" => lambda {|n| @total_awaiting_install = n.get_number_value() },
                "totalCanceled" => lambda {|n| @total_canceled = n.get_number_value() },
                "totalCreated" => lambda {|n| @total_created = n.get_number_value() },
                "totalDevices" => lambda {|n| @total_devices = n.get_number_value() },
                "totalDownloading" => lambda {|n| @total_downloading = n.get_number_value() },
                "totalFailedDownload" => lambda {|n| @total_failed_download = n.get_number_value() },
                "totalFailedInstall" => lambda {|n| @total_failed_install = n.get_number_value() },
                "totalScheduled" => lambda {|n| @total_scheduled = n.get_number_value() },
                "totalSucceededInstall" => lambda {|n| @total_succeeded_install = n.get_number_value() },
                "totalUnknown" => lambda {|n| @total_unknown = n.get_number_value() },
            }
        end
        ## 
        ## Gets the lastUpdatedDateTime property value. Date and time when the deployment status was updated from Zebra
        ## @return a date_time
        ## 
        def last_updated_date_time
            return @last_updated_date_time
        end
        ## 
        ## Sets the lastUpdatedDateTime property value. Date and time when the deployment status was updated from Zebra
        ## @param value Value to set for the lastUpdatedDateTime property.
        ## @return a void
        ## 
        def last_updated_date_time=(value)
            @last_updated_date_time = value
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
            writer.write_boolean_value("cancelRequested", @cancel_requested)
            writer.write_date_time_value("completeOrCanceledDateTime", @complete_or_canceled_date_time)
            writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_enum_value("state", @state)
            writer.write_number_value("totalAwaitingInstall", @total_awaiting_install)
            writer.write_number_value("totalCanceled", @total_canceled)
            writer.write_number_value("totalCreated", @total_created)
            writer.write_number_value("totalDevices", @total_devices)
            writer.write_number_value("totalDownloading", @total_downloading)
            writer.write_number_value("totalFailedDownload", @total_failed_download)
            writer.write_number_value("totalFailedInstall", @total_failed_install)
            writer.write_number_value("totalScheduled", @total_scheduled)
            writer.write_number_value("totalSucceededInstall", @total_succeeded_install)
            writer.write_number_value("totalUnknown", @total_unknown)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the state property value. Represents the state of Zebra FOTA deployment.
        ## @return a zebra_fota_deployment_state
        ## 
        def state
            return @state
        end
        ## 
        ## Sets the state property value. Represents the state of Zebra FOTA deployment.
        ## @param value Value to set for the state property.
        ## @return a void
        ## 
        def state=(value)
            @state = value
        end
        ## 
        ## Gets the totalAwaitingInstall property value. An integer that indicates the total number of devices where installation was successful.
        ## @return a integer
        ## 
        def total_awaiting_install
            return @total_awaiting_install
        end
        ## 
        ## Sets the totalAwaitingInstall property value. An integer that indicates the total number of devices where installation was successful.
        ## @param value Value to set for the totalAwaitingInstall property.
        ## @return a void
        ## 
        def total_awaiting_install=(value)
            @total_awaiting_install = value
        end
        ## 
        ## Gets the totalCanceled property value. An integer that indicates the total number of devices where installation was canceled.
        ## @return a integer
        ## 
        def total_canceled
            return @total_canceled
        end
        ## 
        ## Sets the totalCanceled property value. An integer that indicates the total number of devices where installation was canceled.
        ## @param value Value to set for the totalCanceled property.
        ## @return a void
        ## 
        def total_canceled=(value)
            @total_canceled = value
        end
        ## 
        ## Gets the totalCreated property value. An integer that indicates the total number of devices that have a job in the CREATED state. Typically indicates jobs that did not reach the devices.
        ## @return a integer
        ## 
        def total_created
            return @total_created
        end
        ## 
        ## Sets the totalCreated property value. An integer that indicates the total number of devices that have a job in the CREATED state. Typically indicates jobs that did not reach the devices.
        ## @param value Value to set for the totalCreated property.
        ## @return a void
        ## 
        def total_created=(value)
            @total_created = value
        end
        ## 
        ## Gets the totalDevices property value. An integer that indicates the total number of devices in the deployment.
        ## @return a integer
        ## 
        def total_devices
            return @total_devices
        end
        ## 
        ## Sets the totalDevices property value. An integer that indicates the total number of devices in the deployment.
        ## @param value Value to set for the totalDevices property.
        ## @return a void
        ## 
        def total_devices=(value)
            @total_devices = value
        end
        ## 
        ## Gets the totalDownloading property value. An integer that indicates the total number of devices where installation was successful.
        ## @return a integer
        ## 
        def total_downloading
            return @total_downloading
        end
        ## 
        ## Sets the totalDownloading property value. An integer that indicates the total number of devices where installation was successful.
        ## @param value Value to set for the totalDownloading property.
        ## @return a void
        ## 
        def total_downloading=(value)
            @total_downloading = value
        end
        ## 
        ## Gets the totalFailedDownload property value. An integer that indicates the total number of devices that have failed to download the new OS file.
        ## @return a integer
        ## 
        def total_failed_download
            return @total_failed_download
        end
        ## 
        ## Sets the totalFailedDownload property value. An integer that indicates the total number of devices that have failed to download the new OS file.
        ## @param value Value to set for the totalFailedDownload property.
        ## @return a void
        ## 
        def total_failed_download=(value)
            @total_failed_download = value
        end
        ## 
        ## Gets the totalFailedInstall property value. An integer that indicates the total number of devices that have failed to install the new OS file.
        ## @return a integer
        ## 
        def total_failed_install
            return @total_failed_install
        end
        ## 
        ## Sets the totalFailedInstall property value. An integer that indicates the total number of devices that have failed to install the new OS file.
        ## @param value Value to set for the totalFailedInstall property.
        ## @return a void
        ## 
        def total_failed_install=(value)
            @total_failed_install = value
        end
        ## 
        ## Gets the totalScheduled property value. An integer that indicates the total number of devices that received the json and are scheduled.
        ## @return a integer
        ## 
        def total_scheduled
            return @total_scheduled
        end
        ## 
        ## Sets the totalScheduled property value. An integer that indicates the total number of devices that received the json and are scheduled.
        ## @param value Value to set for the totalScheduled property.
        ## @return a void
        ## 
        def total_scheduled=(value)
            @total_scheduled = value
        end
        ## 
        ## Gets the totalSucceededInstall property value. An integer that indicates the total number of devices where installation was successful.
        ## @return a integer
        ## 
        def total_succeeded_install
            return @total_succeeded_install
        end
        ## 
        ## Sets the totalSucceededInstall property value. An integer that indicates the total number of devices where installation was successful.
        ## @param value Value to set for the totalSucceededInstall property.
        ## @return a void
        ## 
        def total_succeeded_install=(value)
            @total_succeeded_install = value
        end
        ## 
        ## Gets the totalUnknown property value. An integer that indicates the total number of devices where no deployment status or end state has not received, even after the scheduled end date was reached.
        ## @return a integer
        ## 
        def total_unknown
            return @total_unknown
        end
        ## 
        ## Sets the totalUnknown property value. An integer that indicates the total number of devices where no deployment status or end state has not received, even after the scheduled end date was reached.
        ## @param value Value to set for the totalUnknown property.
        ## @return a void
        ## 
        def total_unknown=(value)
            @total_unknown = value
        end
    end
end
