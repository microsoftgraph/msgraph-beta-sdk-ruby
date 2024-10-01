require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationSynchronizationError < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the sync entity (school, section, student, teacher).
            @entry_type
            ## 
            # Represents the error code for this error.
            @error_code
            ## 
            # Contains a description of the error.
            @error_message
            ## 
            # The unique identifier for the entry.
            @joining_value
            ## 
            # The time of occurrence of this error.
            @recorded_date_time
            ## 
            # The identifier of this error entry.
            @reportable_identifier
            ## 
            ## Instantiates a new EducationSynchronizationError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_synchronization_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationSynchronizationError.new
            end
            ## 
            ## Gets the entryType property value. Represents the sync entity (school, section, student, teacher).
            ## @return a string
            ## 
            def entry_type
                return @entry_type
            end
            ## 
            ## Sets the entryType property value. Represents the sync entity (school, section, student, teacher).
            ## @param value Value to set for the entryType property.
            ## @return a void
            ## 
            def entry_type=(value)
                @entry_type = value
            end
            ## 
            ## Gets the errorCode property value. Represents the error code for this error.
            ## @return a string
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. Represents the error code for this error.
            ## @param value Value to set for the errorCode property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## Gets the errorMessage property value. Contains a description of the error.
            ## @return a string
            ## 
            def error_message
                return @error_message
            end
            ## 
            ## Sets the errorMessage property value. Contains a description of the error.
            ## @param value Value to set for the errorMessage property.
            ## @return a void
            ## 
            def error_message=(value)
                @error_message = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "entryType" => lambda {|n| @entry_type = n.get_string_value() },
                    "errorCode" => lambda {|n| @error_code = n.get_string_value() },
                    "errorMessage" => lambda {|n| @error_message = n.get_string_value() },
                    "joiningValue" => lambda {|n| @joining_value = n.get_string_value() },
                    "recordedDateTime" => lambda {|n| @recorded_date_time = n.get_date_time_value() },
                    "reportableIdentifier" => lambda {|n| @reportable_identifier = n.get_string_value() },
                })
            end
            ## 
            ## Gets the joiningValue property value. The unique identifier for the entry.
            ## @return a string
            ## 
            def joining_value
                return @joining_value
            end
            ## 
            ## Sets the joiningValue property value. The unique identifier for the entry.
            ## @param value Value to set for the joiningValue property.
            ## @return a void
            ## 
            def joining_value=(value)
                @joining_value = value
            end
            ## 
            ## Gets the recordedDateTime property value. The time of occurrence of this error.
            ## @return a date_time
            ## 
            def recorded_date_time
                return @recorded_date_time
            end
            ## 
            ## Sets the recordedDateTime property value. The time of occurrence of this error.
            ## @param value Value to set for the recordedDateTime property.
            ## @return a void
            ## 
            def recorded_date_time=(value)
                @recorded_date_time = value
            end
            ## 
            ## Gets the reportableIdentifier property value. The identifier of this error entry.
            ## @return a string
            ## 
            def reportable_identifier
                return @reportable_identifier
            end
            ## 
            ## Sets the reportableIdentifier property value. The identifier of this error entry.
            ## @param value Value to set for the reportableIdentifier property.
            ## @return a void
            ## 
            def reportable_identifier=(value)
                @reportable_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("entryType", @entry_type)
                writer.write_string_value("errorCode", @error_code)
                writer.write_string_value("errorMessage", @error_message)
                writer.write_string_value("joiningValue", @joining_value)
                writer.write_date_time_value("recordedDateTime", @recorded_date_time)
                writer.write_string_value("reportableIdentifier", @reportable_identifier)
            end
        end
    end
end
