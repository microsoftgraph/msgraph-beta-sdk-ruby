require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class BitlockerRecoveryKey < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when the key was originally backed up to Azure Active Directory.
            @created_date_time
            ## 
            # ID of the device the BitLocker key is originally backed up from.
            @device_id
            ## 
            # The BitLocker recovery key.
            @key
            ## 
            # Indicates the type of volume the BitLocker key is associated with. Possible values are: operatingSystemVolume, fixedDataVolume, removableDataVolume, unknownFutureValue.
            @volume_type
            ## 
            ## Instantiates a new bitlockerRecoveryKey and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the key was originally backed up to Azure Active Directory.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the key was originally backed up to Azure Active Directory.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a bitlocker_recovery_key
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BitlockerRecoveryKey.new
            end
            ## 
            ## Gets the deviceId property value. ID of the device the BitLocker key is originally backed up from.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. ID of the device the BitLocker key is originally backed up from.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "key" => lambda {|n| @key = n.get_string_value() },
                    "volumeType" => lambda {|n| @volume_type = n.get_enum_value(MicrosoftGraphBeta::Models::VolumeType) },
                })
            end
            ## 
            ## Gets the key property value. The BitLocker recovery key.
            ## @return a string
            ## 
            def key
                return @key
            end
            ## 
            ## Sets the key property value. The BitLocker recovery key.
            ## @param value Value to set for the key property.
            ## @return a void
            ## 
            def key=(value)
                @key = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("key", @key)
                writer.write_enum_value("volumeType", @volume_type)
            end
            ## 
            ## Gets the volumeType property value. Indicates the type of volume the BitLocker key is associated with. Possible values are: operatingSystemVolume, fixedDataVolume, removableDataVolume, unknownFutureValue.
            ## @return a volume_type
            ## 
            def volume_type
                return @volume_type
            end
            ## 
            ## Sets the volumeType property value. Indicates the type of volume the BitLocker key is associated with. Possible values are: operatingSystemVolume, fixedDataVolume, removableDataVolume, unknownFutureValue.
            ## @param value Value to set for the volumeType property.
            ## @return a void
            ## 
            def volume_type=(value)
                @volume_type = value
            end
        end
    end
end
