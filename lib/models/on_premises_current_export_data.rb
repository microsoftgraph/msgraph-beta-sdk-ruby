require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnPremisesCurrentExportData
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The name of the onPremises client machine that ran the last export.
            @client_machine_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The count of pending adds from on-premises directory.
            @pending_objects_addition
            ## 
            # The count of pending deletes from on-premises directory.
            @pending_objects_deletion
            ## 
            # The count of pending updates from on-premises directory.
            @pending_objects_update
            ## 
            # The name of the dirsync service account that is configured to connect to the directory.
            @service_account
            ## 
            # The count of updated links during the current directory sync export run.
            @successful_links_provisioning_count
            ## 
            # The count of objects that were successfully provisioned during the current directory sync export run.
            @successful_objects_provisioning_count
            ## 
            # The total number of objects in the AAD Connector Space.
            @total_connector_space_objects
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
            ## Gets the clientMachineName property value. The name of the onPremises client machine that ran the last export.
            ## @return a string
            ## 
            def client_machine_name
                return @client_machine_name
            end
            ## 
            ## Sets the clientMachineName property value. The name of the onPremises client machine that ran the last export.
            ## @param value Value to set for the clientMachineName property.
            ## @return a void
            ## 
            def client_machine_name=(value)
                @client_machine_name = value
            end
            ## 
            ## Instantiates a new onPremisesCurrentExportData and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_current_export_data
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesCurrentExportData.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "clientMachineName" => lambda {|n| @client_machine_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "pendingObjectsAddition" => lambda {|n| @pending_objects_addition = n.get_number_value() },
                    "pendingObjectsDeletion" => lambda {|n| @pending_objects_deletion = n.get_number_value() },
                    "pendingObjectsUpdate" => lambda {|n| @pending_objects_update = n.get_number_value() },
                    "serviceAccount" => lambda {|n| @service_account = n.get_string_value() },
                    "successfulLinksProvisioningCount" => lambda {|n| @successful_links_provisioning_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "successfulObjectsProvisioningCount" => lambda {|n| @successful_objects_provisioning_count = n.get_number_value() },
                    "totalConnectorSpaceObjects" => lambda {|n| @total_connector_space_objects = n.get_number_value() },
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
            ## Gets the pendingObjectsAddition property value. The count of pending adds from on-premises directory.
            ## @return a integer
            ## 
            def pending_objects_addition
                return @pending_objects_addition
            end
            ## 
            ## Sets the pendingObjectsAddition property value. The count of pending adds from on-premises directory.
            ## @param value Value to set for the pendingObjectsAddition property.
            ## @return a void
            ## 
            def pending_objects_addition=(value)
                @pending_objects_addition = value
            end
            ## 
            ## Gets the pendingObjectsDeletion property value. The count of pending deletes from on-premises directory.
            ## @return a integer
            ## 
            def pending_objects_deletion
                return @pending_objects_deletion
            end
            ## 
            ## Sets the pendingObjectsDeletion property value. The count of pending deletes from on-premises directory.
            ## @param value Value to set for the pendingObjectsDeletion property.
            ## @return a void
            ## 
            def pending_objects_deletion=(value)
                @pending_objects_deletion = value
            end
            ## 
            ## Gets the pendingObjectsUpdate property value. The count of pending updates from on-premises directory.
            ## @return a integer
            ## 
            def pending_objects_update
                return @pending_objects_update
            end
            ## 
            ## Sets the pendingObjectsUpdate property value. The count of pending updates from on-premises directory.
            ## @param value Value to set for the pendingObjectsUpdate property.
            ## @return a void
            ## 
            def pending_objects_update=(value)
                @pending_objects_update = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("clientMachineName", @client_machine_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("pendingObjectsAddition", @pending_objects_addition)
                writer.write_number_value("pendingObjectsDeletion", @pending_objects_deletion)
                writer.write_number_value("pendingObjectsUpdate", @pending_objects_update)
                writer.write_string_value("serviceAccount", @service_account)
                writer.write_object_value("successfulLinksProvisioningCount", @successful_links_provisioning_count)
                writer.write_number_value("successfulObjectsProvisioningCount", @successful_objects_provisioning_count)
                writer.write_number_value("totalConnectorSpaceObjects", @total_connector_space_objects)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the serviceAccount property value. The name of the dirsync service account that is configured to connect to the directory.
            ## @return a string
            ## 
            def service_account
                return @service_account
            end
            ## 
            ## Sets the serviceAccount property value. The name of the dirsync service account that is configured to connect to the directory.
            ## @param value Value to set for the serviceAccount property.
            ## @return a void
            ## 
            def service_account=(value)
                @service_account = value
            end
            ## 
            ## Gets the successfulLinksProvisioningCount property value. The count of updated links during the current directory sync export run.
            ## @return a int64
            ## 
            def successful_links_provisioning_count
                return @successful_links_provisioning_count
            end
            ## 
            ## Sets the successfulLinksProvisioningCount property value. The count of updated links during the current directory sync export run.
            ## @param value Value to set for the successfulLinksProvisioningCount property.
            ## @return a void
            ## 
            def successful_links_provisioning_count=(value)
                @successful_links_provisioning_count = value
            end
            ## 
            ## Gets the successfulObjectsProvisioningCount property value. The count of objects that were successfully provisioned during the current directory sync export run.
            ## @return a integer
            ## 
            def successful_objects_provisioning_count
                return @successful_objects_provisioning_count
            end
            ## 
            ## Sets the successfulObjectsProvisioningCount property value. The count of objects that were successfully provisioned during the current directory sync export run.
            ## @param value Value to set for the successfulObjectsProvisioningCount property.
            ## @return a void
            ## 
            def successful_objects_provisioning_count=(value)
                @successful_objects_provisioning_count = value
            end
            ## 
            ## Gets the totalConnectorSpaceObjects property value. The total number of objects in the AAD Connector Space.
            ## @return a integer
            ## 
            def total_connector_space_objects
                return @total_connector_space_objects
            end
            ## 
            ## Sets the totalConnectorSpaceObjects property value. The total number of objects in the AAD Connector Space.
            ## @param value Value to set for the totalConnectorSpaceObjects property.
            ## @return a void
            ## 
            def total_connector_space_objects=(value)
                @total_connector_space_objects = value
            end
        end
    end
end
