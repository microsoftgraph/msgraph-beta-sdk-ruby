require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../identity_governance'
require_relative '../../role_management_alerts'
require_relative '../alerts'
require_relative './refresh'

module MicrosoftGraphBeta
    module IdentityGovernance
        module RoleManagementAlerts
            module Alerts
                module Refresh
                    class RefreshPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The scopeId property
                        @scope_id
                        ## 
                        # The scopeType property
                        @scope_type
                        ## 
                        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the additionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Instantiates a new refreshPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a refresh_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return RefreshPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "scopeId" => lambda {|n| @scope_id = n.get_string_value() },
                                "scopeType" => lambda {|n| @scope_type = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the scopeId property value. The scopeId property
                        ## @return a string
                        ## 
                        def scope_id
                            return @scope_id
                        end
                        ## 
                        ## Sets the scopeId property value. The scopeId property
                        ## @param value Value to set for the scopeId property.
                        ## @return a void
                        ## 
                        def scope_id=(value)
                            @scope_id = value
                        end
                        ## 
                        ## Gets the scopeType property value. The scopeType property
                        ## @return a string
                        ## 
                        def scope_type
                            return @scope_type
                        end
                        ## 
                        ## Sets the scopeType property value. The scopeType property
                        ## @param value Value to set for the scopeType property.
                        ## @return a void
                        ## 
                        def scope_type=(value)
                            @scope_type = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("scopeId", @scope_id)
                            writer.write_string_value("scopeType", @scope_type)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
