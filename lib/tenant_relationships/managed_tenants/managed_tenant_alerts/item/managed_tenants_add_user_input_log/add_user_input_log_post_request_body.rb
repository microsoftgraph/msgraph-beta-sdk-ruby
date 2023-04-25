require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../tenant_relationships'
require_relative '../../../managed_tenants'
require_relative '../../managed_tenant_alerts'
require_relative '../item'
require_relative './managed_tenants_add_user_input_log'

module MicrosoftGraphBeta
    module TenantRelationships
        module ManagedTenants
            module ManagedTenantAlerts
                module Item
                    module ManagedTenantsAddUserInputLog
                        class AddUserInputLogPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The logInformation property
                            @log_information
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
                            ## Instantiates a new addUserInputLogPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a add_user_input_log_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return AddUserInputLogPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "logInformation" => lambda {|n| @log_information = n.get_string_value() },
                                }
                            end
                            ## 
                            ## Gets the logInformation property value. The logInformation property
                            ## @return a string
                            ## 
                            def log_information
                                return @log_information
                            end
                            ## 
                            ## Sets the logInformation property value. The logInformation property
                            ## @param value Value to set for the log_information property.
                            ## @return a void
                            ## 
                            def log_information=(value)
                                @log_information = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("logInformation", @log_information)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
