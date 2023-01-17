require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EducationSynchronizationCustomization
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Indicates whether the display name of the resource can be overwritten by the sync.
        @allow_display_name_update
        ## 
        # Indicates whether synchronization of the parent entity is deferred to a later date.
        @is_sync_deferred
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The collection of property names to sync. If set to null, all properties will be synchronized. Does not apply to Student Enrollments or Teacher Rosters
        @optional_properties_to_sync
        ## 
        # The date that the synchronization should start. This value should be set to a future date. If set to null, the resource will be synchronized when the profile setup completes. Only applies to Student Enrollments
        @synchronization_start_date
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
        ## Gets the allowDisplayNameUpdate property value. Indicates whether the display name of the resource can be overwritten by the sync.
        ## @return a boolean
        ## 
        def allow_display_name_update
            return @allow_display_name_update
        end
        ## 
        ## Sets the allowDisplayNameUpdate property value. Indicates whether the display name of the resource can be overwritten by the sync.
        ## @param value Value to set for the allowDisplayNameUpdate property.
        ## @return a void
        ## 
        def allow_display_name_update=(value)
            @allow_display_name_update = value
        end
        ## 
        ## Instantiates a new educationSynchronizationCustomization and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a education_synchronization_customization
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EducationSynchronizationCustomization.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "allowDisplayNameUpdate" => lambda {|n| @allow_display_name_update = n.get_boolean_value() },
                "isSyncDeferred" => lambda {|n| @is_sync_deferred = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "optionalPropertiesToSync" => lambda {|n| @optional_properties_to_sync = n.get_collection_of_primitive_values(String) },
                "synchronizationStartDate" => lambda {|n| @synchronization_start_date = n.get_date_time_value() },
            }
        end
        ## 
        ## Gets the isSyncDeferred property value. Indicates whether synchronization of the parent entity is deferred to a later date.
        ## @return a boolean
        ## 
        def is_sync_deferred
            return @is_sync_deferred
        end
        ## 
        ## Sets the isSyncDeferred property value. Indicates whether synchronization of the parent entity is deferred to a later date.
        ## @param value Value to set for the isSyncDeferred property.
        ## @return a void
        ## 
        def is_sync_deferred=(value)
            @is_sync_deferred = value
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
        ## Gets the optionalPropertiesToSync property value. The collection of property names to sync. If set to null, all properties will be synchronized. Does not apply to Student Enrollments or Teacher Rosters
        ## @return a string
        ## 
        def optional_properties_to_sync
            return @optional_properties_to_sync
        end
        ## 
        ## Sets the optionalPropertiesToSync property value. The collection of property names to sync. If set to null, all properties will be synchronized. Does not apply to Student Enrollments or Teacher Rosters
        ## @param value Value to set for the optionalPropertiesToSync property.
        ## @return a void
        ## 
        def optional_properties_to_sync=(value)
            @optional_properties_to_sync = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("allowDisplayNameUpdate", @allow_display_name_update)
            writer.write_boolean_value("isSyncDeferred", @is_sync_deferred)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_primitive_values("optionalPropertiesToSync", @optional_properties_to_sync)
            writer.write_date_time_value("synchronizationStartDate", @synchronization_start_date)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the synchronizationStartDate property value. The date that the synchronization should start. This value should be set to a future date. If set to null, the resource will be synchronized when the profile setup completes. Only applies to Student Enrollments
        ## @return a date_time
        ## 
        def synchronization_start_date
            return @synchronization_start_date
        end
        ## 
        ## Sets the synchronizationStartDate property value. The date that the synchronization should start. This value should be set to a future date. If set to null, the resource will be synchronized when the profile setup completes. Only applies to Student Enrollments
        ## @param value Value to set for the synchronizationStartDate property.
        ## @return a void
        ## 
        def synchronization_start_date=(value)
            @synchronization_start_date = value
        end
    end
end
