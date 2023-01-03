require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Casts the previous resource to application.
    class Connector < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The external IP address as detected by the the connector server. Read-only.
        @external_ip
        ## 
        # The machine name the connector is installed and running on.
        @machine_name
        ## 
        # The connectorGroup that the connector is a member of. Read-only.
        @member_of
        ## 
        # The status property
        @status
        ## 
        ## Instantiates a new connector and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a connector
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Connector.new
        end
        ## 
        ## Gets the externalIp property value. The external IP address as detected by the the connector server. Read-only.
        ## @return a string
        ## 
        def external_ip
            return @external_ip
        end
        ## 
        ## Sets the externalIp property value. The external IP address as detected by the the connector server. Read-only.
        ## @param value Value to set for the externalIp property.
        ## @return a void
        ## 
        def external_ip=(value)
            @external_ip = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "externalIp" => lambda {|n| @external_ip = n.get_string_value() },
                "machineName" => lambda {|n| @machine_name = n.get_string_value() },
                "memberOf" => lambda {|n| @member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConnectorGroup.create_from_discriminator_value(pn) }) },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::ConnectorStatus) },
            })
        end
        ## 
        ## Gets the machineName property value. The machine name the connector is installed and running on.
        ## @return a string
        ## 
        def machine_name
            return @machine_name
        end
        ## 
        ## Sets the machineName property value. The machine name the connector is installed and running on.
        ## @param value Value to set for the machineName property.
        ## @return a void
        ## 
        def machine_name=(value)
            @machine_name = value
        end
        ## 
        ## Gets the memberOf property value. The connectorGroup that the connector is a member of. Read-only.
        ## @return a connector_group
        ## 
        def member_of
            return @member_of
        end
        ## 
        ## Sets the memberOf property value. The connectorGroup that the connector is a member of. Read-only.
        ## @param value Value to set for the memberOf property.
        ## @return a void
        ## 
        def member_of=(value)
            @member_of = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("externalIp", @external_ip)
            writer.write_string_value("machineName", @machine_name)
            writer.write_collection_of_object_values("memberOf", @member_of)
            writer.write_enum_value("status", @status)
        end
        ## 
        ## Gets the status property value. The status property
        ## @return a connector_status
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
