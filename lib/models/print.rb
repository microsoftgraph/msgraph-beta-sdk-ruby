require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Print
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The list of available print connectors.
            @connectors
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The operations property
            @operations
            ## 
            # The printerShares property
            @printer_shares
            ## 
            # The list of printers registered in the tenant.
            @printers
            ## 
            # The list of available Universal Print service endpoints.
            @services
            ## 
            # Tenant-wide settings for the Universal Print service.
            @settings
            ## 
            # The list of printer shares registered in the tenant.
            @shares
            ## 
            # The taskDefinitions property
            @task_definitions
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
            ## Gets the connectors property value. The list of available print connectors.
            ## @return a print_connector
            ## 
            def connectors
                return @connectors
            end
            ## 
            ## Sets the connectors property value. The list of available print connectors.
            ## @param value Value to set for the connectors property.
            ## @return a void
            ## 
            def connectors=(value)
                @connectors = value
            end
            ## 
            ## Instantiates a new print and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a print
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Print.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "connectors" => lambda {|n| @connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintConnector.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintOperation.create_from_discriminator_value(pn) }) },
                    "printerShares" => lambda {|n| @printer_shares = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrinterShare.create_from_discriminator_value(pn) }) },
                    "printers" => lambda {|n| @printers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Printer.create_from_discriminator_value(pn) }) },
                    "services" => lambda {|n| @services = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintService.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrintSettings.create_from_discriminator_value(pn) }) },
                    "shares" => lambda {|n| @shares = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrinterShare.create_from_discriminator_value(pn) }) },
                    "taskDefinitions" => lambda {|n| @task_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintTaskDefinition.create_from_discriminator_value(pn) }) },
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
            ## Gets the operations property value. The operations property
            ## @return a print_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The operations property
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the printerShares property value. The printerShares property
            ## @return a printer_share
            ## 
            def printer_shares
                return @printer_shares
            end
            ## 
            ## Sets the printerShares property value. The printerShares property
            ## @param value Value to set for the printerShares property.
            ## @return a void
            ## 
            def printer_shares=(value)
                @printer_shares = value
            end
            ## 
            ## Gets the printers property value. The list of printers registered in the tenant.
            ## @return a printer
            ## 
            def printers
                return @printers
            end
            ## 
            ## Sets the printers property value. The list of printers registered in the tenant.
            ## @param value Value to set for the printers property.
            ## @return a void
            ## 
            def printers=(value)
                @printers = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("connectors", @connectors)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_collection_of_object_values("printerShares", @printer_shares)
                writer.write_collection_of_object_values("printers", @printers)
                writer.write_collection_of_object_values("services", @services)
                writer.write_object_value("settings", @settings)
                writer.write_collection_of_object_values("shares", @shares)
                writer.write_collection_of_object_values("taskDefinitions", @task_definitions)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the services property value. The list of available Universal Print service endpoints.
            ## @return a print_service
            ## 
            def services
                return @services
            end
            ## 
            ## Sets the services property value. The list of available Universal Print service endpoints.
            ## @param value Value to set for the services property.
            ## @return a void
            ## 
            def services=(value)
                @services = value
            end
            ## 
            ## Gets the settings property value. Tenant-wide settings for the Universal Print service.
            ## @return a print_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. Tenant-wide settings for the Universal Print service.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the shares property value. The list of printer shares registered in the tenant.
            ## @return a printer_share
            ## 
            def shares
                return @shares
            end
            ## 
            ## Sets the shares property value. The list of printer shares registered in the tenant.
            ## @param value Value to set for the shares property.
            ## @return a void
            ## 
            def shares=(value)
                @shares = value
            end
            ## 
            ## Gets the taskDefinitions property value. The taskDefinitions property
            ## @return a print_task_definition
            ## 
            def task_definitions
                return @task_definitions
            end
            ## 
            ## Sets the taskDefinitions property value. The taskDefinitions property
            ## @param value Value to set for the taskDefinitions property.
            ## @return a void
            ## 
            def task_definitions=(value)
                @task_definitions = value
            end
        end
    end
end
