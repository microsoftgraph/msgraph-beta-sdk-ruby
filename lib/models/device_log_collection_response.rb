require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Windows Log Collection request entity.
    class DeviceLogCollectionResponse < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The User Principal Name (UPN) of the user that enrolled the device
        @enrolled_by_user
        ## 
        # The error code, if any. Valid values -9.22337203685478E+18 to 9.22337203685478E+18
        @error_code
        ## 
        # The DateTime of the expiration of the logs
        @expiration_date_time_u_t_c
        ## 
        # The UPN for who initiated the request
        @initiated_by_user_principal_name
        ## 
        # The device Id
        @managed_device_id
        ## 
        # The DateTime the request was received
        @received_date_time_u_t_c
        ## 
        # The DateTime of the request
        @requested_date_time_u_t_c
        ## 
        # The size of the logs. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
        @size
        ## 
        # The status of the log collection request
        @status
        ## 
        ## Instantiates a new deviceLogCollectionResponse and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_log_collection_response
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceLogCollectionResponse.new
        end
        ## 
        ## Gets the enrolledByUser property value. The User Principal Name (UPN) of the user that enrolled the device
        ## @return a string
        ## 
        def enrolled_by_user
            return @enrolled_by_user
        end
        ## 
        ## Sets the enrolledByUser property value. The User Principal Name (UPN) of the user that enrolled the device
        ## @param value Value to set for the enrolled_by_user property.
        ## @return a void
        ## 
        def enrolled_by_user=(value)
            @enrolled_by_user = value
        end
        ## 
        ## Gets the errorCode property value. The error code, if any. Valid values -9.22337203685478E+18 to 9.22337203685478E+18
        ## @return a int64
        ## 
        def error_code
            return @error_code
        end
        ## 
        ## Sets the errorCode property value. The error code, if any. Valid values -9.22337203685478E+18 to 9.22337203685478E+18
        ## @param value Value to set for the error_code property.
        ## @return a void
        ## 
        def error_code=(value)
            @error_code = value
        end
        ## 
        ## Gets the expirationDateTimeUTC property value. The DateTime of the expiration of the logs
        ## @return a date_time
        ## 
        def expiration_date_time_u_t_c
            return @expiration_date_time_u_t_c
        end
        ## 
        ## Sets the expirationDateTimeUTC property value. The DateTime of the expiration of the logs
        ## @param value Value to set for the expiration_date_time_u_t_c property.
        ## @return a void
        ## 
        def expiration_date_time_u_t_c=(value)
            @expiration_date_time_u_t_c = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "enrolledByUser" => lambda {|n| @enrolled_by_user = n.get_string_value() },
                "errorCode" => lambda {|n| @error_code = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "expirationDateTimeUTC" => lambda {|n| @expiration_date_time_u_t_c = n.get_date_time_value() },
                "initiatedByUserPrincipalName" => lambda {|n| @initiated_by_user_principal_name = n.get_string_value() },
                "managedDeviceId" => lambda {|n| @managed_device_id = n.get_guid_value() },
                "receivedDateTimeUTC" => lambda {|n| @received_date_time_u_t_c = n.get_date_time_value() },
                "requestedDateTimeUTC" => lambda {|n| @requested_date_time_u_t_c = n.get_date_time_value() },
                "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                "status" => lambda {|n| @status = n.get_string_value() },
            })
        end
        ## 
        ## Gets the initiatedByUserPrincipalName property value. The UPN for who initiated the request
        ## @return a string
        ## 
        def initiated_by_user_principal_name
            return @initiated_by_user_principal_name
        end
        ## 
        ## Sets the initiatedByUserPrincipalName property value. The UPN for who initiated the request
        ## @param value Value to set for the initiated_by_user_principal_name property.
        ## @return a void
        ## 
        def initiated_by_user_principal_name=(value)
            @initiated_by_user_principal_name = value
        end
        ## 
        ## Gets the managedDeviceId property value. The device Id
        ## @return a guid
        ## 
        def managed_device_id
            return @managed_device_id
        end
        ## 
        ## Sets the managedDeviceId property value. The device Id
        ## @param value Value to set for the managed_device_id property.
        ## @return a void
        ## 
        def managed_device_id=(value)
            @managed_device_id = value
        end
        ## 
        ## Gets the receivedDateTimeUTC property value. The DateTime the request was received
        ## @return a date_time
        ## 
        def received_date_time_u_t_c
            return @received_date_time_u_t_c
        end
        ## 
        ## Sets the receivedDateTimeUTC property value. The DateTime the request was received
        ## @param value Value to set for the received_date_time_u_t_c property.
        ## @return a void
        ## 
        def received_date_time_u_t_c=(value)
            @received_date_time_u_t_c = value
        end
        ## 
        ## Gets the requestedDateTimeUTC property value. The DateTime of the request
        ## @return a date_time
        ## 
        def requested_date_time_u_t_c
            return @requested_date_time_u_t_c
        end
        ## 
        ## Sets the requestedDateTimeUTC property value. The DateTime of the request
        ## @param value Value to set for the requested_date_time_u_t_c property.
        ## @return a void
        ## 
        def requested_date_time_u_t_c=(value)
            @requested_date_time_u_t_c = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("enrolledByUser", @enrolled_by_user)
            writer.write_object_value("errorCode", @error_code)
            writer.write_date_time_value("expirationDateTimeUTC", @expiration_date_time_u_t_c)
            writer.write_string_value("initiatedByUserPrincipalName", @initiated_by_user_principal_name)
            writer.write_guid_value("managedDeviceId", @managed_device_id)
            writer.write_date_time_value("receivedDateTimeUTC", @received_date_time_u_t_c)
            writer.write_date_time_value("requestedDateTimeUTC", @requested_date_time_u_t_c)
            writer.write_object_value("size", @size)
            writer.write_string_value("status", @status)
        end
        ## 
        ## Gets the size property value. The size of the logs. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
        ## @return a double
        ## 
        def size
            return @size
        end
        ## 
        ## Sets the size property value. The size of the logs. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
        ## @param value Value to set for the size property.
        ## @return a void
        ## 
        def size=(value)
            @size = value
        end
        ## 
        ## Gets the status property value. The status of the log collection request
        ## @return a string
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The status of the log collection request
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
