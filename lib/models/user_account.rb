require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class UserAccount
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The displayName property
        @display_name
        ## 
        # The lastSeenDateTime property
        @last_seen_date_time
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The riskScore property
        @risk_score
        ## 
        # The service property
        @service
        ## 
        # The signinName property
        @signin_name
        ## 
        # The status property
        @status
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
        ## Instantiates a new userAccount and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_account
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserAccount.new
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
            return {
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                "service" => lambda {|n| @service = n.get_string_value() },
                "signinName" => lambda {|n| @signin_name = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::AccountStatus) },
            }
        end
        ## 
        ## Gets the lastSeenDateTime property value. The lastSeenDateTime property
        ## @return a date_time
        ## 
        def last_seen_date_time
            return @last_seen_date_time
        end
        ## 
        ## Sets the lastSeenDateTime property value. The lastSeenDateTime property
        ## @param value Value to set for the lastSeenDateTime property.
        ## @return a void
        ## 
        def last_seen_date_time=(value)
            @last_seen_date_time = value
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
        ## Gets the riskScore property value. The riskScore property
        ## @return a string
        ## 
        def risk_score
            return @risk_score
        end
        ## 
        ## Sets the riskScore property value. The riskScore property
        ## @param value Value to set for the riskScore property.
        ## @return a void
        ## 
        def risk_score=(value)
            @risk_score = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("displayName", @display_name)
            writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("riskScore", @risk_score)
            writer.write_string_value("service", @service)
            writer.write_string_value("signinName", @signin_name)
            writer.write_enum_value("status", @status)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the service property value. The service property
        ## @return a string
        ## 
        def service
            return @service
        end
        ## 
        ## Sets the service property value. The service property
        ## @param value Value to set for the service property.
        ## @return a void
        ## 
        def service=(value)
            @service = value
        end
        ## 
        ## Gets the signinName property value. The signinName property
        ## @return a string
        ## 
        def signin_name
            return @signin_name
        end
        ## 
        ## Sets the signinName property value. The signinName property
        ## @param value Value to set for the signinName property.
        ## @return a void
        ## 
        def signin_name=(value)
            @signin_name = value
        end
        ## 
        ## Gets the status property value. The status property
        ## @return a account_status
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
