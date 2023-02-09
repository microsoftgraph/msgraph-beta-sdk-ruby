require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../users'
require_relative '../../item'
require_relative '../managed_devices'
require_relative './microsoft_graph_move_devices_to_o_u'

module MicrosoftGraphBeta
    module Users
        module Item
            module ManagedDevices
                module MicrosoftGraphMoveDevicesToOU
                    class MoveDevicesToOUPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The deviceIds property
                        @device_ids
                        ## 
                        # The organizationalUnitPath property
                        @organizational_unit_path
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
                        ## Instantiates a new moveDevicesToOUPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a move_devices_to_o_u_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return MoveDevicesToOUPostRequestBody.new
                        end
                        ## 
                        ## Gets the deviceIds property value. The deviceIds property
                        ## @return a guid
                        ## 
                        def device_ids
                            return @device_ids
                        end
                        ## 
                        ## Sets the deviceIds property value. The deviceIds property
                        ## @param value Value to set for the device_ids property.
                        ## @return a void
                        ## 
                        def device_ids=(value)
                            @device_ids = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "deviceIds" => lambda {|n| @device_ids = n.get_collection_of_primitive_values(UUIDTools::UUID) },
                                "organizationalUnitPath" => lambda {|n| @organizational_unit_path = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the organizationalUnitPath property value. The organizationalUnitPath property
                        ## @return a string
                        ## 
                        def organizational_unit_path
                            return @organizational_unit_path
                        end
                        ## 
                        ## Sets the organizationalUnitPath property value. The organizationalUnitPath property
                        ## @param value Value to set for the organizational_unit_path property.
                        ## @return a void
                        ## 
                        def organizational_unit_path=(value)
                            @organizational_unit_path = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_primitive_values("deviceIds", @device_ids)
                            writer.write_string_value("organizationalUnitPath", @organizational_unit_path)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
