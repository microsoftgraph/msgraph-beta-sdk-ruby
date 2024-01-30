require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnPremisesDirectorySynchronizationConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains the accidental deletion prevention configuration for a tenant.
            @accidental_deletion_prevention
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The anchor attribute allows customers to customize the property used to create source anchors for synchronization enabled objects.
            @anchor_attribute
            ## 
            # The identifier of the on-premises directory synchronization client application that is configured for the tenant.
            @application_id
            ## 
            # Data for the current export run.
            @current_export_data
            ## 
            # Interval of time that the customer requested the sync client waits between sync cycles.
            @customer_requested_synchronization_interval
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the version of the on-premises directory synchronization application.
            @synchronization_client_version
            ## 
            # Interval of time the sync client should honor between sync cycles
            @synchronization_interval
            ## 
            # Configuration to control how cloud created or owned objects are synchronized back to the on-premises directory.
            @writeback_configuration
            ## 
            ## Gets the accidentalDeletionPrevention property value. Contains the accidental deletion prevention configuration for a tenant.
            ## @return a on_premises_accidental_deletion_prevention
            ## 
            def accidental_deletion_prevention
                return @accidental_deletion_prevention
            end
            ## 
            ## Sets the accidentalDeletionPrevention property value. Contains the accidental deletion prevention configuration for a tenant.
            ## @param value Value to set for the accidentalDeletionPrevention property.
            ## @return a void
            ## 
            def accidental_deletion_prevention=(value)
                @accidental_deletion_prevention = value
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
            ## Gets the anchorAttribute property value. The anchor attribute allows customers to customize the property used to create source anchors for synchronization enabled objects.
            ## @return a string
            ## 
            def anchor_attribute
                return @anchor_attribute
            end
            ## 
            ## Sets the anchorAttribute property value. The anchor attribute allows customers to customize the property used to create source anchors for synchronization enabled objects.
            ## @param value Value to set for the anchorAttribute property.
            ## @return a void
            ## 
            def anchor_attribute=(value)
                @anchor_attribute = value
            end
            ## 
            ## Gets the applicationId property value. The identifier of the on-premises directory synchronization client application that is configured for the tenant.
            ## @return a string
            ## 
            def application_id
                return @application_id
            end
            ## 
            ## Sets the applicationId property value. The identifier of the on-premises directory synchronization client application that is configured for the tenant.
            ## @param value Value to set for the applicationId property.
            ## @return a void
            ## 
            def application_id=(value)
                @application_id = value
            end
            ## 
            ## Instantiates a new onPremisesDirectorySynchronizationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_directory_synchronization_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesDirectorySynchronizationConfiguration.new
            end
            ## 
            ## Gets the currentExportData property value. Data for the current export run.
            ## @return a on_premises_current_export_data
            ## 
            def current_export_data
                return @current_export_data
            end
            ## 
            ## Sets the currentExportData property value. Data for the current export run.
            ## @param value Value to set for the currentExportData property.
            ## @return a void
            ## 
            def current_export_data=(value)
                @current_export_data = value
            end
            ## 
            ## Gets the customerRequestedSynchronizationInterval property value. Interval of time that the customer requested the sync client waits between sync cycles.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def customer_requested_synchronization_interval
                return @customer_requested_synchronization_interval
            end
            ## 
            ## Sets the customerRequestedSynchronizationInterval property value. Interval of time that the customer requested the sync client waits between sync cycles.
            ## @param value Value to set for the customerRequestedSynchronizationInterval property.
            ## @return a void
            ## 
            def customer_requested_synchronization_interval=(value)
                @customer_requested_synchronization_interval = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accidentalDeletionPrevention" => lambda {|n| @accidental_deletion_prevention = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesAccidentalDeletionPrevention.create_from_discriminator_value(pn) }) },
                    "anchorAttribute" => lambda {|n| @anchor_attribute = n.get_string_value() },
                    "applicationId" => lambda {|n| @application_id = n.get_string_value() },
                    "currentExportData" => lambda {|n| @current_export_data = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesCurrentExportData.create_from_discriminator_value(pn) }) },
                    "customerRequestedSynchronizationInterval" => lambda {|n| @customer_requested_synchronization_interval = n.get_duration_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "synchronizationClientVersion" => lambda {|n| @synchronization_client_version = n.get_string_value() },
                    "synchronizationInterval" => lambda {|n| @synchronization_interval = n.get_duration_value() },
                    "writebackConfiguration" => lambda {|n| @writeback_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesWritebackConfiguration.create_from_discriminator_value(pn) }) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("accidentalDeletionPrevention", @accidental_deletion_prevention)
                writer.write_string_value("anchorAttribute", @anchor_attribute)
                writer.write_string_value("applicationId", @application_id)
                writer.write_object_value("currentExportData", @current_export_data)
                writer.write_duration_value("customerRequestedSynchronizationInterval", @customer_requested_synchronization_interval)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("synchronizationClientVersion", @synchronization_client_version)
                writer.write_duration_value("synchronizationInterval", @synchronization_interval)
                writer.write_object_value("writebackConfiguration", @writeback_configuration)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the synchronizationClientVersion property value. Indicates the version of the on-premises directory synchronization application.
            ## @return a string
            ## 
            def synchronization_client_version
                return @synchronization_client_version
            end
            ## 
            ## Sets the synchronizationClientVersion property value. Indicates the version of the on-premises directory synchronization application.
            ## @param value Value to set for the synchronizationClientVersion property.
            ## @return a void
            ## 
            def synchronization_client_version=(value)
                @synchronization_client_version = value
            end
            ## 
            ## Gets the synchronizationInterval property value. Interval of time the sync client should honor between sync cycles
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def synchronization_interval
                return @synchronization_interval
            end
            ## 
            ## Sets the synchronizationInterval property value. Interval of time the sync client should honor between sync cycles
            ## @param value Value to set for the synchronizationInterval property.
            ## @return a void
            ## 
            def synchronization_interval=(value)
                @synchronization_interval = value
            end
            ## 
            ## Gets the writebackConfiguration property value. Configuration to control how cloud created or owned objects are synchronized back to the on-premises directory.
            ## @return a on_premises_writeback_configuration
            ## 
            def writeback_configuration
                return @writeback_configuration
            end
            ## 
            ## Sets the writebackConfiguration property value. Configuration to control how cloud created or owned objects are synchronized back to the on-premises directory.
            ## @param value Value to set for the writebackConfiguration property.
            ## @return a void
            ## 
            def writeback_configuration=(value)
                @writeback_configuration = value
            end
        end
    end
end
