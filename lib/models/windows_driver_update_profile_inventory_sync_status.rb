require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A complex type to store the status of a driver and firmware profile inventory sync. The status includes the last successful sync date time and the state of the last sync.
        class WindowsDriverUpdateProfileInventorySyncStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Windows DnF update inventory sync state.
            @driver_inventory_sync_state
            ## 
            # The last successful sync date and time in UTC.
            @last_successful_sync_date_time
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new windowsDriverUpdateProfileInventorySyncStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_driver_update_profile_inventory_sync_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDriverUpdateProfileInventorySyncStatus.new
            end
            ## 
            ## Gets the driverInventorySyncState property value. Windows DnF update inventory sync state.
            ## @return a windows_driver_update_profile_inventory_sync_state
            ## 
            def driver_inventory_sync_state
                return @driver_inventory_sync_state
            end
            ## 
            ## Sets the driverInventorySyncState property value. Windows DnF update inventory sync state.
            ## @param value Value to set for the driver_inventory_sync_state property.
            ## @return a void
            ## 
            def driver_inventory_sync_state=(value)
                @driver_inventory_sync_state = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "driverInventorySyncState" => lambda {|n| @driver_inventory_sync_state = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsDriverUpdateProfileInventorySyncState) },
                    "lastSuccessfulSyncDateTime" => lambda {|n| @last_successful_sync_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastSuccessfulSyncDateTime property value. The last successful sync date and time in UTC.
            ## @return a date_time
            ## 
            def last_successful_sync_date_time
                return @last_successful_sync_date_time
            end
            ## 
            ## Sets the lastSuccessfulSyncDateTime property value. The last successful sync date and time in UTC.
            ## @param value Value to set for the last_successful_sync_date_time property.
            ## @return a void
            ## 
            def last_successful_sync_date_time=(value)
                @last_successful_sync_date_time = value
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
                writer.write_enum_value("driverInventorySyncState", @driver_inventory_sync_state)
                writer.write_date_time_value("lastSuccessfulSyncDateTime", @last_successful_sync_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
