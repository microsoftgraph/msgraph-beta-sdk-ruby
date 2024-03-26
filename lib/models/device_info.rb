require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The deviceId property
            @device_id
            ## 
            # The displayName property
            @display_name
            ## 
            # The enrollmentProfileName property
            @enrollment_profile_name
            ## 
            # The extensionAttribute1 property
            @extension_attribute1
            ## 
            # The extensionAttribute10 property
            @extension_attribute10
            ## 
            # The extensionAttribute11 property
            @extension_attribute11
            ## 
            # The extensionAttribute12 property
            @extension_attribute12
            ## 
            # The extensionAttribute13 property
            @extension_attribute13
            ## 
            # The extensionAttribute14 property
            @extension_attribute14
            ## 
            # The extensionAttribute15 property
            @extension_attribute15
            ## 
            # The extensionAttribute2 property
            @extension_attribute2
            ## 
            # The extensionAttribute3 property
            @extension_attribute3
            ## 
            # The extensionAttribute4 property
            @extension_attribute4
            ## 
            # The extensionAttribute5 property
            @extension_attribute5
            ## 
            # The extensionAttribute6 property
            @extension_attribute6
            ## 
            # The extensionAttribute7 property
            @extension_attribute7
            ## 
            # The extensionAttribute8 property
            @extension_attribute8
            ## 
            # The extensionAttribute9 property
            @extension_attribute9
            ## 
            # The isCompliant property
            @is_compliant
            ## 
            # The manufacturer property
            @manufacturer
            ## 
            # The mdmAppId property
            @mdm_app_id
            ## 
            # The model property
            @model
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The operatingSystem property
            @operating_system
            ## 
            # The operatingSystemVersion property
            @operating_system_version
            ## 
            # The ownership property
            @ownership
            ## 
            # The physicalIds property
            @physical_ids
            ## 
            # The profileType property
            @profile_type
            ## 
            # The systemLabels property
            @system_labels
            ## 
            # The trustType property
            @trust_type
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
            ## Instantiates a new DeviceInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceInfo.new
            end
            ## 
            ## Gets the deviceId property value. The deviceId property
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The deviceId property
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
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
            ## Gets the enrollmentProfileName property value. The enrollmentProfileName property
            ## @return a string
            ## 
            def enrollment_profile_name
                return @enrollment_profile_name
            end
            ## 
            ## Sets the enrollmentProfileName property value. The enrollmentProfileName property
            ## @param value Value to set for the enrollmentProfileName property.
            ## @return a void
            ## 
            def enrollment_profile_name=(value)
                @enrollment_profile_name = value
            end
            ## 
            ## Gets the extensionAttribute1 property value. The extensionAttribute1 property
            ## @return a string
            ## 
            def extension_attribute1
                return @extension_attribute1
            end
            ## 
            ## Sets the extensionAttribute1 property value. The extensionAttribute1 property
            ## @param value Value to set for the extensionAttribute1 property.
            ## @return a void
            ## 
            def extension_attribute1=(value)
                @extension_attribute1 = value
            end
            ## 
            ## Gets the extensionAttribute10 property value. The extensionAttribute10 property
            ## @return a string
            ## 
            def extension_attribute10
                return @extension_attribute10
            end
            ## 
            ## Sets the extensionAttribute10 property value. The extensionAttribute10 property
            ## @param value Value to set for the extensionAttribute10 property.
            ## @return a void
            ## 
            def extension_attribute10=(value)
                @extension_attribute10 = value
            end
            ## 
            ## Gets the extensionAttribute11 property value. The extensionAttribute11 property
            ## @return a string
            ## 
            def extension_attribute11
                return @extension_attribute11
            end
            ## 
            ## Sets the extensionAttribute11 property value. The extensionAttribute11 property
            ## @param value Value to set for the extensionAttribute11 property.
            ## @return a void
            ## 
            def extension_attribute11=(value)
                @extension_attribute11 = value
            end
            ## 
            ## Gets the extensionAttribute12 property value. The extensionAttribute12 property
            ## @return a string
            ## 
            def extension_attribute12
                return @extension_attribute12
            end
            ## 
            ## Sets the extensionAttribute12 property value. The extensionAttribute12 property
            ## @param value Value to set for the extensionAttribute12 property.
            ## @return a void
            ## 
            def extension_attribute12=(value)
                @extension_attribute12 = value
            end
            ## 
            ## Gets the extensionAttribute13 property value. The extensionAttribute13 property
            ## @return a string
            ## 
            def extension_attribute13
                return @extension_attribute13
            end
            ## 
            ## Sets the extensionAttribute13 property value. The extensionAttribute13 property
            ## @param value Value to set for the extensionAttribute13 property.
            ## @return a void
            ## 
            def extension_attribute13=(value)
                @extension_attribute13 = value
            end
            ## 
            ## Gets the extensionAttribute14 property value. The extensionAttribute14 property
            ## @return a string
            ## 
            def extension_attribute14
                return @extension_attribute14
            end
            ## 
            ## Sets the extensionAttribute14 property value. The extensionAttribute14 property
            ## @param value Value to set for the extensionAttribute14 property.
            ## @return a void
            ## 
            def extension_attribute14=(value)
                @extension_attribute14 = value
            end
            ## 
            ## Gets the extensionAttribute15 property value. The extensionAttribute15 property
            ## @return a string
            ## 
            def extension_attribute15
                return @extension_attribute15
            end
            ## 
            ## Sets the extensionAttribute15 property value. The extensionAttribute15 property
            ## @param value Value to set for the extensionAttribute15 property.
            ## @return a void
            ## 
            def extension_attribute15=(value)
                @extension_attribute15 = value
            end
            ## 
            ## Gets the extensionAttribute2 property value. The extensionAttribute2 property
            ## @return a string
            ## 
            def extension_attribute2
                return @extension_attribute2
            end
            ## 
            ## Sets the extensionAttribute2 property value. The extensionAttribute2 property
            ## @param value Value to set for the extensionAttribute2 property.
            ## @return a void
            ## 
            def extension_attribute2=(value)
                @extension_attribute2 = value
            end
            ## 
            ## Gets the extensionAttribute3 property value. The extensionAttribute3 property
            ## @return a string
            ## 
            def extension_attribute3
                return @extension_attribute3
            end
            ## 
            ## Sets the extensionAttribute3 property value. The extensionAttribute3 property
            ## @param value Value to set for the extensionAttribute3 property.
            ## @return a void
            ## 
            def extension_attribute3=(value)
                @extension_attribute3 = value
            end
            ## 
            ## Gets the extensionAttribute4 property value. The extensionAttribute4 property
            ## @return a string
            ## 
            def extension_attribute4
                return @extension_attribute4
            end
            ## 
            ## Sets the extensionAttribute4 property value. The extensionAttribute4 property
            ## @param value Value to set for the extensionAttribute4 property.
            ## @return a void
            ## 
            def extension_attribute4=(value)
                @extension_attribute4 = value
            end
            ## 
            ## Gets the extensionAttribute5 property value. The extensionAttribute5 property
            ## @return a string
            ## 
            def extension_attribute5
                return @extension_attribute5
            end
            ## 
            ## Sets the extensionAttribute5 property value. The extensionAttribute5 property
            ## @param value Value to set for the extensionAttribute5 property.
            ## @return a void
            ## 
            def extension_attribute5=(value)
                @extension_attribute5 = value
            end
            ## 
            ## Gets the extensionAttribute6 property value. The extensionAttribute6 property
            ## @return a string
            ## 
            def extension_attribute6
                return @extension_attribute6
            end
            ## 
            ## Sets the extensionAttribute6 property value. The extensionAttribute6 property
            ## @param value Value to set for the extensionAttribute6 property.
            ## @return a void
            ## 
            def extension_attribute6=(value)
                @extension_attribute6 = value
            end
            ## 
            ## Gets the extensionAttribute7 property value. The extensionAttribute7 property
            ## @return a string
            ## 
            def extension_attribute7
                return @extension_attribute7
            end
            ## 
            ## Sets the extensionAttribute7 property value. The extensionAttribute7 property
            ## @param value Value to set for the extensionAttribute7 property.
            ## @return a void
            ## 
            def extension_attribute7=(value)
                @extension_attribute7 = value
            end
            ## 
            ## Gets the extensionAttribute8 property value. The extensionAttribute8 property
            ## @return a string
            ## 
            def extension_attribute8
                return @extension_attribute8
            end
            ## 
            ## Sets the extensionAttribute8 property value. The extensionAttribute8 property
            ## @param value Value to set for the extensionAttribute8 property.
            ## @return a void
            ## 
            def extension_attribute8=(value)
                @extension_attribute8 = value
            end
            ## 
            ## Gets the extensionAttribute9 property value. The extensionAttribute9 property
            ## @return a string
            ## 
            def extension_attribute9
                return @extension_attribute9
            end
            ## 
            ## Sets the extensionAttribute9 property value. The extensionAttribute9 property
            ## @param value Value to set for the extensionAttribute9 property.
            ## @return a void
            ## 
            def extension_attribute9=(value)
                @extension_attribute9 = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enrollmentProfileName" => lambda {|n| @enrollment_profile_name = n.get_string_value() },
                    "extensionAttribute1" => lambda {|n| @extension_attribute1 = n.get_string_value() },
                    "extensionAttribute10" => lambda {|n| @extension_attribute10 = n.get_string_value() },
                    "extensionAttribute11" => lambda {|n| @extension_attribute11 = n.get_string_value() },
                    "extensionAttribute12" => lambda {|n| @extension_attribute12 = n.get_string_value() },
                    "extensionAttribute13" => lambda {|n| @extension_attribute13 = n.get_string_value() },
                    "extensionAttribute14" => lambda {|n| @extension_attribute14 = n.get_string_value() },
                    "extensionAttribute15" => lambda {|n| @extension_attribute15 = n.get_string_value() },
                    "extensionAttribute2" => lambda {|n| @extension_attribute2 = n.get_string_value() },
                    "extensionAttribute3" => lambda {|n| @extension_attribute3 = n.get_string_value() },
                    "extensionAttribute4" => lambda {|n| @extension_attribute4 = n.get_string_value() },
                    "extensionAttribute5" => lambda {|n| @extension_attribute5 = n.get_string_value() },
                    "extensionAttribute6" => lambda {|n| @extension_attribute6 = n.get_string_value() },
                    "extensionAttribute7" => lambda {|n| @extension_attribute7 = n.get_string_value() },
                    "extensionAttribute8" => lambda {|n| @extension_attribute8 = n.get_string_value() },
                    "extensionAttribute9" => lambda {|n| @extension_attribute9 = n.get_string_value() },
                    "isCompliant" => lambda {|n| @is_compliant = n.get_boolean_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "mdmAppId" => lambda {|n| @mdm_app_id = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "operatingSystemVersion" => lambda {|n| @operating_system_version = n.get_string_value() },
                    "ownership" => lambda {|n| @ownership = n.get_string_value() },
                    "physicalIds" => lambda {|n| @physical_ids = n.get_collection_of_primitive_values(String) },
                    "profileType" => lambda {|n| @profile_type = n.get_string_value() },
                    "systemLabels" => lambda {|n| @system_labels = n.get_collection_of_primitive_values(String) },
                    "trustType" => lambda {|n| @trust_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isCompliant property value. The isCompliant property
            ## @return a boolean
            ## 
            def is_compliant
                return @is_compliant
            end
            ## 
            ## Sets the isCompliant property value. The isCompliant property
            ## @param value Value to set for the isCompliant property.
            ## @return a void
            ## 
            def is_compliant=(value)
                @is_compliant = value
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
            ## Gets the mdmAppId property value. The mdmAppId property
            ## @return a string
            ## 
            def mdm_app_id
                return @mdm_app_id
            end
            ## 
            ## Sets the mdmAppId property value. The mdmAppId property
            ## @param value Value to set for the mdmAppId property.
            ## @return a void
            ## 
            def mdm_app_id=(value)
                @mdm_app_id = value
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
            ## Gets the operatingSystem property value. The operatingSystem property
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. The operatingSystem property
            ## @param value Value to set for the operatingSystem property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the operatingSystemVersion property value. The operatingSystemVersion property
            ## @return a string
            ## 
            def operating_system_version
                return @operating_system_version
            end
            ## 
            ## Sets the operatingSystemVersion property value. The operatingSystemVersion property
            ## @param value Value to set for the operatingSystemVersion property.
            ## @return a void
            ## 
            def operating_system_version=(value)
                @operating_system_version = value
            end
            ## 
            ## Gets the ownership property value. The ownership property
            ## @return a string
            ## 
            def ownership
                return @ownership
            end
            ## 
            ## Sets the ownership property value. The ownership property
            ## @param value Value to set for the ownership property.
            ## @return a void
            ## 
            def ownership=(value)
                @ownership = value
            end
            ## 
            ## Gets the physicalIds property value. The physicalIds property
            ## @return a string
            ## 
            def physical_ids
                return @physical_ids
            end
            ## 
            ## Sets the physicalIds property value. The physicalIds property
            ## @param value Value to set for the physicalIds property.
            ## @return a void
            ## 
            def physical_ids=(value)
                @physical_ids = value
            end
            ## 
            ## Gets the profileType property value. The profileType property
            ## @return a string
            ## 
            def profile_type
                return @profile_type
            end
            ## 
            ## Sets the profileType property value. The profileType property
            ## @param value Value to set for the profileType property.
            ## @return a void
            ## 
            def profile_type=(value)
                @profile_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("enrollmentProfileName", @enrollment_profile_name)
                writer.write_string_value("extensionAttribute1", @extension_attribute1)
                writer.write_string_value("extensionAttribute10", @extension_attribute10)
                writer.write_string_value("extensionAttribute11", @extension_attribute11)
                writer.write_string_value("extensionAttribute12", @extension_attribute12)
                writer.write_string_value("extensionAttribute13", @extension_attribute13)
                writer.write_string_value("extensionAttribute14", @extension_attribute14)
                writer.write_string_value("extensionAttribute15", @extension_attribute15)
                writer.write_string_value("extensionAttribute2", @extension_attribute2)
                writer.write_string_value("extensionAttribute3", @extension_attribute3)
                writer.write_string_value("extensionAttribute4", @extension_attribute4)
                writer.write_string_value("extensionAttribute5", @extension_attribute5)
                writer.write_string_value("extensionAttribute6", @extension_attribute6)
                writer.write_string_value("extensionAttribute7", @extension_attribute7)
                writer.write_string_value("extensionAttribute8", @extension_attribute8)
                writer.write_string_value("extensionAttribute9", @extension_attribute9)
                writer.write_boolean_value("isCompliant", @is_compliant)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("mdmAppId", @mdm_app_id)
                writer.write_string_value("model", @model)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_string_value("operatingSystemVersion", @operating_system_version)
                writer.write_string_value("ownership", @ownership)
                writer.write_collection_of_primitive_values("physicalIds", @physical_ids)
                writer.write_string_value("profileType", @profile_type)
                writer.write_collection_of_primitive_values("systemLabels", @system_labels)
                writer.write_string_value("trustType", @trust_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the systemLabels property value. The systemLabels property
            ## @return a string
            ## 
            def system_labels
                return @system_labels
            end
            ## 
            ## Sets the systemLabels property value. The systemLabels property
            ## @param value Value to set for the systemLabels property.
            ## @return a void
            ## 
            def system_labels=(value)
                @system_labels = value
            end
            ## 
            ## Gets the trustType property value. The trustType property
            ## @return a string
            ## 
            def trust_type
                return @trust_type
            end
            ## 
            ## Sets the trustType property value. The trustType property
            ## @param value Value to set for the trustType property.
            ## @return a void
            ## 
            def trust_type=(value)
                @trust_type = value
            end
        end
    end
end
