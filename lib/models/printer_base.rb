require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrinterBase < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The capabilities property
            @capabilities
            ## 
            # The defaults property
            @defaults
            ## 
            # The displayName property
            @display_name
            ## 
            # The isAcceptingJobs property
            @is_accepting_jobs
            ## 
            # The jobs property
            @jobs
            ## 
            # The location property
            @location
            ## 
            # The manufacturer property
            @manufacturer
            ## 
            # The model property
            @model
            ## 
            # The name property
            @name
            ## 
            # The status property
            @status
            ## 
            ## Gets the capabilities property value. The capabilities property
            ## @return a printer_capabilities
            ## 
            def capabilities
                return @capabilities
            end
            ## 
            ## Sets the capabilities property value. The capabilities property
            ## @param value Value to set for the capabilities property.
            ## @return a void
            ## 
            def capabilities=(value)
                @capabilities = value
            end
            ## 
            ## Instantiates a new PrinterBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a printer_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.printer"
                            return Printer.new
                        when "#microsoft.graph.printerShare"
                            return PrinterShare.new
                    end
                end
                return PrinterBase.new
            end
            ## 
            ## Gets the defaults property value. The defaults property
            ## @return a printer_defaults
            ## 
            def defaults
                return @defaults
            end
            ## 
            ## Sets the defaults property value. The defaults property
            ## @param value Value to set for the defaults property.
            ## @return a void
            ## 
            def defaults=(value)
                @defaults = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "capabilities" => lambda {|n| @capabilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrinterCapabilities.create_from_discriminator_value(pn) }) },
                    "defaults" => lambda {|n| @defaults = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrinterDefaults.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isAcceptingJobs" => lambda {|n| @is_accepting_jobs = n.get_boolean_value() },
                    "jobs" => lambda {|n| @jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintJob.create_from_discriminator_value(pn) }) },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrinterLocation.create_from_discriminator_value(pn) }) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrinterStatus.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isAcceptingJobs property value. The isAcceptingJobs property
            ## @return a boolean
            ## 
            def is_accepting_jobs
                return @is_accepting_jobs
            end
            ## 
            ## Sets the isAcceptingJobs property value. The isAcceptingJobs property
            ## @param value Value to set for the isAcceptingJobs property.
            ## @return a void
            ## 
            def is_accepting_jobs=(value)
                @is_accepting_jobs = value
            end
            ## 
            ## Gets the jobs property value. The jobs property
            ## @return a print_job
            ## 
            def jobs
                return @jobs
            end
            ## 
            ## Sets the jobs property value. The jobs property
            ## @param value Value to set for the jobs property.
            ## @return a void
            ## 
            def jobs=(value)
                @jobs = value
            end
            ## 
            ## Gets the location property value. The location property
            ## @return a printer_location
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. The location property
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Gets the manufacturer property value. The manufacturer property
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer property
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. The model property
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The model property
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("capabilities", @capabilities)
                writer.write_object_value("defaults", @defaults)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isAcceptingJobs", @is_accepting_jobs)
                writer.write_collection_of_object_values("jobs", @jobs)
                writer.write_object_value("location", @location)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_string_value("name", @name)
                writer.write_object_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a printer_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
