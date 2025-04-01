require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../reports'
require_relative './retrieve_cloud_pki_leaf_certificate_summary_report'

module MicrosoftGraphBeta
    module DeviceManagement
        module Reports
            module RetrieveCloudPkiLeafCertificateSummaryReport
                class RetrieveCloudPkiLeafCertificateSummaryReportPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The certificationAuthorityId property
                    @certification_authority_id
                    ## 
                    # The select property
                    @select
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
                    ## Gets the certificationAuthorityId property value. The certificationAuthorityId property
                    ## @return a string
                    ## 
                    def certification_authority_id
                        return @certification_authority_id
                    end
                    ## 
                    ## Sets the certificationAuthorityId property value. The certificationAuthorityId property
                    ## @param value Value to set for the certificationAuthorityId property.
                    ## @return a void
                    ## 
                    def certification_authority_id=(value)
                        @certification_authority_id = value
                    end
                    ## 
                    ## Instantiates a new RetrieveCloudPkiLeafCertificateSummaryReportPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a retrieve_cloud_pki_leaf_certificate_summary_report_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return RetrieveCloudPkiLeafCertificateSummaryReportPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "certificationAuthorityId" => lambda {|n| @certification_authority_id = n.get_string_value() },
                            "select" => lambda {|n| @select = n.get_collection_of_primitive_values(String) },
                        }
                    end
                    ## 
                    ## Gets the select property value. The select property
                    ## @return a string
                    ## 
                    def select
                        return @select
                    end
                    ## 
                    ## Sets the select property value. The select property
                    ## @param value Value to set for the select property.
                    ## @return a void
                    ## 
                    def select=(value)
                        @select = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("certificationAuthorityId", @certification_authority_id)
                        writer.write_collection_of_primitive_values("select", @select)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
