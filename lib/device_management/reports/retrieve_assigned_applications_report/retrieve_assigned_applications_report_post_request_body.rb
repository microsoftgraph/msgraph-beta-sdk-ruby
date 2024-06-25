require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../reports'
require_relative './retrieve_assigned_applications_report'

module MicrosoftGraphBeta
    module DeviceManagement
        module Reports
            module RetrieveAssignedApplicationsReport
                class RetrieveAssignedApplicationsReportPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The filter property
                    @filter
                    ## 
                    # The groupby property
                    @groupby
                    ## 
                    # The orderby property
                    @orderby
                    ## 
                    # The search property
                    @search
                    ## 
                    # The select property
                    @select
                    ## 
                    # The skip property
                    @skip
                    ## 
                    # The top property
                    @top
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
                    ## Instantiates a new RetrieveAssignedApplicationsReportPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a retrieve_assigned_applications_report_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return RetrieveAssignedApplicationsReportPostRequestBody.new
                    end
                    ## 
                    ## Gets the filter property value. The filter property
                    ## @return a string
                    ## 
                    def filter
                        return @filter
                    end
                    ## 
                    ## Sets the filter property value. The filter property
                    ## @param value Value to set for the filter property.
                    ## @return a void
                    ## 
                    def filter=(value)
                        @filter = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "filter" => lambda {|n| @filter = n.get_string_value() },
                            "groupby" => lambda {|n| @groupby = n.get_string_value() },
                            "orderby" => lambda {|n| @orderby = n.get_string_value() },
                            "search" => lambda {|n| @search = n.get_string_value() },
                            "select" => lambda {|n| @select = n.get_string_value() },
                            "skip" => lambda {|n| @skip = n.get_number_value() },
                            "top" => lambda {|n| @top = n.get_number_value() },
                        }
                    end
                    ## 
                    ## Gets the groupby property value. The groupby property
                    ## @return a string
                    ## 
                    def groupby
                        return @groupby
                    end
                    ## 
                    ## Sets the groupby property value. The groupby property
                    ## @param value Value to set for the groupby property.
                    ## @return a void
                    ## 
                    def groupby=(value)
                        @groupby = value
                    end
                    ## 
                    ## Gets the orderby property value. The orderby property
                    ## @return a string
                    ## 
                    def orderby
                        return @orderby
                    end
                    ## 
                    ## Sets the orderby property value. The orderby property
                    ## @param value Value to set for the orderby property.
                    ## @return a void
                    ## 
                    def orderby=(value)
                        @orderby = value
                    end
                    ## 
                    ## Gets the search property value. The search property
                    ## @return a string
                    ## 
                    def search
                        return @search
                    end
                    ## 
                    ## Sets the search property value. The search property
                    ## @param value Value to set for the search property.
                    ## @return a void
                    ## 
                    def search=(value)
                        @search = value
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
                        writer.write_string_value("filter", @filter)
                        writer.write_string_value("groupby", @groupby)
                        writer.write_string_value("orderby", @orderby)
                        writer.write_string_value("search", @search)
                        writer.write_string_value("select", @select)
                        writer.write_number_value("skip", @skip)
                        writer.write_number_value("top", @top)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the skip property value. The skip property
                    ## @return a integer
                    ## 
                    def skip
                        return @skip
                    end
                    ## 
                    ## Sets the skip property value. The skip property
                    ## @param value Value to set for the skip property.
                    ## @return a void
                    ## 
                    def skip=(value)
                        @skip = value
                    end
                    ## 
                    ## Gets the top property value. The top property
                    ## @return a integer
                    ## 
                    def top
                        return @top
                    end
                    ## 
                    ## Sets the top property value. The top property
                    ## @param value Value to set for the top property.
                    ## @return a void
                    ## 
                    def top=(value)
                        @top = value
                    end
                end
            end
        end
    end
end
