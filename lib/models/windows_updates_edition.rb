require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesEdition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The device family targeted by the edition.
            @device_family
            ## 
            # The date and time when the edition reached the end of service. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @end_of_service_date_time
            ## 
            # The date and time when the edition became available to the general customers for the first time. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @general_availability_date_time
            ## 
            # Indicates whether the edition is in service or out of service.
            @is_in_service
            ## 
            # The name of the edition. Read-only.
            @name
            ## 
            # The public name of the edition. Read-only.
            @released_name
            ## 
            # The servicingPeriods property
            @servicing_periods
            ## 
            ## Instantiates a new WindowsUpdatesEdition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_edition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesEdition.new
            end
            ## 
            ## Gets the deviceFamily property value. The device family targeted by the edition.
            ## @return a string
            ## 
            def device_family
                return @device_family
            end
            ## 
            ## Sets the deviceFamily property value. The device family targeted by the edition.
            ## @param value Value to set for the deviceFamily property.
            ## @return a void
            ## 
            def device_family=(value)
                @device_family = value
            end
            ## 
            ## Gets the endOfServiceDateTime property value. The date and time when the edition reached the end of service. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def end_of_service_date_time
                return @end_of_service_date_time
            end
            ## 
            ## Sets the endOfServiceDateTime property value. The date and time when the edition reached the end of service. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the endOfServiceDateTime property.
            ## @return a void
            ## 
            def end_of_service_date_time=(value)
                @end_of_service_date_time = value
            end
            ## 
            ## Gets the generalAvailabilityDateTime property value. The date and time when the edition became available to the general customers for the first time. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def general_availability_date_time
                return @general_availability_date_time
            end
            ## 
            ## Sets the generalAvailabilityDateTime property value. The date and time when the edition became available to the general customers for the first time. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the generalAvailabilityDateTime property.
            ## @return a void
            ## 
            def general_availability_date_time=(value)
                @general_availability_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceFamily" => lambda {|n| @device_family = n.get_string_value() },
                    "endOfServiceDateTime" => lambda {|n| @end_of_service_date_time = n.get_date_time_value() },
                    "generalAvailabilityDateTime" => lambda {|n| @general_availability_date_time = n.get_date_time_value() },
                    "isInService" => lambda {|n| @is_in_service = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "releasedName" => lambda {|n| @released_name = n.get_string_value() },
                    "servicingPeriods" => lambda {|n| @servicing_periods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesServicingPeriod.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isInService property value. Indicates whether the edition is in service or out of service.
            ## @return a boolean
            ## 
            def is_in_service
                return @is_in_service
            end
            ## 
            ## Sets the isInService property value. Indicates whether the edition is in service or out of service.
            ## @param value Value to set for the isInService property.
            ## @return a void
            ## 
            def is_in_service=(value)
                @is_in_service = value
            end
            ## 
            ## Gets the name property value. The name of the edition. Read-only.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the edition. Read-only.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the releasedName property value. The public name of the edition. Read-only.
            ## @return a string
            ## 
            def released_name
                return @released_name
            end
            ## 
            ## Sets the releasedName property value. The public name of the edition. Read-only.
            ## @param value Value to set for the releasedName property.
            ## @return a void
            ## 
            def released_name=(value)
                @released_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("deviceFamily", @device_family)
                writer.write_date_time_value("endOfServiceDateTime", @end_of_service_date_time)
                writer.write_date_time_value("generalAvailabilityDateTime", @general_availability_date_time)
                writer.write_boolean_value("isInService", @is_in_service)
                writer.write_string_value("name", @name)
                writer.write_string_value("releasedName", @released_name)
                writer.write_collection_of_object_values("servicingPeriods", @servicing_periods)
            end
            ## 
            ## Gets the servicingPeriods property value. The servicingPeriods property
            ## @return a windows_updates_servicing_period
            ## 
            def servicing_periods
                return @servicing_periods
            end
            ## 
            ## Sets the servicingPeriods property value. The servicingPeriods property
            ## @param value Value to set for the servicingPeriods property.
            ## @return a void
            ## 
            def servicing_periods=(value)
                @servicing_periods = value
            end
        end
    end
end
