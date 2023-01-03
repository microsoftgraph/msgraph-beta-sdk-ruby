require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analyte remote connection entity.
    class UserExperienceAnalyticsRemoteConnection < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The sign in failure percentage of Cloud PC Device. Valid values 0 to 100
        @cloud_pc_failure_percentage
        ## 
        # The round tip time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        @cloud_pc_round_trip_time
        ## 
        # The sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        @cloud_pc_sign_in_time
        ## 
        # The core boot time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        @core_boot_time
        ## 
        # The core sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        @core_sign_in_time
        ## 
        # The count of remote connection. Valid values 0 to 2147483647
        @device_count
        ## 
        # The id of the device.
        @device_id
        ## 
        # The name of the device.
        @device_name
        ## 
        # The user experience analytics manufacturer.
        @manufacturer
        ## 
        # The user experience analytics device model.
        @model
        ## 
        # The remote sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        @remote_sign_in_time
        ## 
        # The user experience analytics userPrincipalName.
        @user_principal_name
        ## 
        # The user experience analytics virtual network.
        @virtual_network
        ## 
        ## Gets the cloudPcFailurePercentage property value. The sign in failure percentage of Cloud PC Device. Valid values 0 to 100
        ## @return a double
        ## 
        def cloud_pc_failure_percentage
            return @cloud_pc_failure_percentage
        end
        ## 
        ## Sets the cloudPcFailurePercentage property value. The sign in failure percentage of Cloud PC Device. Valid values 0 to 100
        ## @param value Value to set for the cloudPcFailurePercentage property.
        ## @return a void
        ## 
        def cloud_pc_failure_percentage=(value)
            @cloud_pc_failure_percentage = value
        end
        ## 
        ## Gets the cloudPcRoundTripTime property value. The round tip time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        ## @return a double
        ## 
        def cloud_pc_round_trip_time
            return @cloud_pc_round_trip_time
        end
        ## 
        ## Sets the cloudPcRoundTripTime property value. The round tip time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        ## @param value Value to set for the cloudPcRoundTripTime property.
        ## @return a void
        ## 
        def cloud_pc_round_trip_time=(value)
            @cloud_pc_round_trip_time = value
        end
        ## 
        ## Gets the cloudPcSignInTime property value. The sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        ## @return a double
        ## 
        def cloud_pc_sign_in_time
            return @cloud_pc_sign_in_time
        end
        ## 
        ## Sets the cloudPcSignInTime property value. The sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        ## @param value Value to set for the cloudPcSignInTime property.
        ## @return a void
        ## 
        def cloud_pc_sign_in_time=(value)
            @cloud_pc_sign_in_time = value
        end
        ## 
        ## Instantiates a new userExperienceAnalyticsRemoteConnection and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the coreBootTime property value. The core boot time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        ## @return a double
        ## 
        def core_boot_time
            return @core_boot_time
        end
        ## 
        ## Sets the coreBootTime property value. The core boot time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        ## @param value Value to set for the coreBootTime property.
        ## @return a void
        ## 
        def core_boot_time=(value)
            @core_boot_time = value
        end
        ## 
        ## Gets the coreSignInTime property value. The core sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        ## @return a double
        ## 
        def core_sign_in_time
            return @core_sign_in_time
        end
        ## 
        ## Sets the coreSignInTime property value. The core sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        ## @param value Value to set for the coreSignInTime property.
        ## @return a void
        ## 
        def core_sign_in_time=(value)
            @core_sign_in_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_remote_connection
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsRemoteConnection.new
        end
        ## 
        ## Gets the deviceCount property value. The count of remote connection. Valid values 0 to 2147483647
        ## @return a integer
        ## 
        def device_count
            return @device_count
        end
        ## 
        ## Sets the deviceCount property value. The count of remote connection. Valid values 0 to 2147483647
        ## @param value Value to set for the deviceCount property.
        ## @return a void
        ## 
        def device_count=(value)
            @device_count = value
        end
        ## 
        ## Gets the deviceId property value. The id of the device.
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. The id of the device.
        ## @param value Value to set for the deviceId property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## Gets the deviceName property value. The name of the device.
        ## @return a string
        ## 
        def device_name
            return @device_name
        end
        ## 
        ## Sets the deviceName property value. The name of the device.
        ## @param value Value to set for the deviceName property.
        ## @return a void
        ## 
        def device_name=(value)
            @device_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "cloudPcFailurePercentage" => lambda {|n| @cloud_pc_failure_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                "cloudPcRoundTripTime" => lambda {|n| @cloud_pc_round_trip_time = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                "cloudPcSignInTime" => lambda {|n| @cloud_pc_sign_in_time = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                "coreBootTime" => lambda {|n| @core_boot_time = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                "coreSignInTime" => lambda {|n| @core_sign_in_time = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                "deviceCount" => lambda {|n| @device_count = n.get_number_value() },
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                "model" => lambda {|n| @model = n.get_string_value() },
                "remoteSignInTime" => lambda {|n| @remote_sign_in_time = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                "virtualNetwork" => lambda {|n| @virtual_network = n.get_string_value() },
            })
        end
        ## 
        ## Gets the manufacturer property value. The user experience analytics manufacturer.
        ## @return a string
        ## 
        def manufacturer
            return @manufacturer
        end
        ## 
        ## Sets the manufacturer property value. The user experience analytics manufacturer.
        ## @param value Value to set for the manufacturer property.
        ## @return a void
        ## 
        def manufacturer=(value)
            @manufacturer = value
        end
        ## 
        ## Gets the model property value. The user experience analytics device model.
        ## @return a string
        ## 
        def model
            return @model
        end
        ## 
        ## Sets the model property value. The user experience analytics device model.
        ## @param value Value to set for the model property.
        ## @return a void
        ## 
        def model=(value)
            @model = value
        end
        ## 
        ## Gets the remoteSignInTime property value. The remote sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        ## @return a double
        ## 
        def remote_sign_in_time
            return @remote_sign_in_time
        end
        ## 
        ## Sets the remoteSignInTime property value. The remote sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308
        ## @param value Value to set for the remoteSignInTime property.
        ## @return a void
        ## 
        def remote_sign_in_time=(value)
            @remote_sign_in_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("cloudPcFailurePercentage", @cloud_pc_failure_percentage)
            writer.write_object_value("cloudPcRoundTripTime", @cloud_pc_round_trip_time)
            writer.write_object_value("cloudPcSignInTime", @cloud_pc_sign_in_time)
            writer.write_object_value("coreBootTime", @core_boot_time)
            writer.write_object_value("coreSignInTime", @core_sign_in_time)
            writer.write_number_value("deviceCount", @device_count)
            writer.write_string_value("deviceId", @device_id)
            writer.write_string_value("deviceName", @device_name)
            writer.write_string_value("manufacturer", @manufacturer)
            writer.write_string_value("model", @model)
            writer.write_object_value("remoteSignInTime", @remote_sign_in_time)
            writer.write_string_value("userPrincipalName", @user_principal_name)
            writer.write_string_value("virtualNetwork", @virtual_network)
        end
        ## 
        ## Gets the userPrincipalName property value. The user experience analytics userPrincipalName.
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. The user experience analytics userPrincipalName.
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
        ## 
        ## Gets the virtualNetwork property value. The user experience analytics virtual network.
        ## @return a string
        ## 
        def virtual_network
            return @virtual_network
        end
        ## 
        ## Sets the virtualNetwork property value. The user experience analytics virtual network.
        ## @param value Value to set for the virtualNetwork property.
        ## @return a void
        ## 
        def virtual_network=(value)
            @virtual_network = value
        end
    end
end
