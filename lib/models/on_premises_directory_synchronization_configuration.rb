require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OnPremisesDirectorySynchronizationConfiguration
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Contains the accidental deletion prevention configuration for a tenant.
        @accidental_deletion_prevention
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Interval of time that the customer requested the sync client waits between sync cycles.
        @customer_requested_synchronization_interval
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Interval of time the sync client should honor between sync cycles
        @synchronization_interval
        ## 
        ## Gets the accidentalDeletionPrevention property value. Contains the accidental deletion prevention configuration for a tenant.
        ## @return a on_premises_accidental_deletion_prevention
        ## 
        def accidental_deletion_prevention
            return @accidental_deletion_prevention
        end
        ## 
        ## Sets the accidentalDeletionPrevention property value. Contains the accidental deletion prevention configuration for a tenant.
        ## @param value Value to set for the accidental_deletion_prevention property.
        ## @return a void
        ## 
        def accidental_deletion_prevention=(value)
            @accidental_deletion_prevention = value
        end
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
        ## Instantiates a new onPremisesDirectorySynchronizationConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a on_premises_directory_synchronization_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OnPremisesDirectorySynchronizationConfiguration.new
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
        ## @param value Value to set for the customer_requested_synchronization_interval property.
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
                "customerRequestedSynchronizationInterval" => lambda {|n| @customer_requested_synchronization_interval = n.get_duration_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "synchronizationInterval" => lambda {|n| @synchronization_interval = n.get_duration_value() },
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
            writer.write_object_value("accidentalDeletionPrevention", @accidental_deletion_prevention)
            writer.write_duration_value("customerRequestedSynchronizationInterval", @customer_requested_synchronization_interval)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_duration_value("synchronizationInterval", @synchronization_interval)
            writer.write_additional_data(@additional_data)
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
        ## @param value Value to set for the synchronization_interval property.
        ## @return a void
        ## 
        def synchronization_interval=(value)
            @synchronization_interval = value
        end
    end
end
