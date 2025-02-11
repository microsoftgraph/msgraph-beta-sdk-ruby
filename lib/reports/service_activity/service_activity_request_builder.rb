require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../../models/service_activity'
require_relative '../reports'
require_relative './i127ff88cee2e03b83457df0db6ef542f8c3fa274a51104848e3aeccbb102b923/4f13c0b58d0e85439e224f1dc904eb14b29089239fb1376bc69c0101f5aa9669'
require_relative './i1fea4fdea11003ce62444b5affa404f38da83654edb14aae339a3085159e52fa/2b159813dcccb7d1e27380453ab177d010fd22b0821077f5fb2100a19f571264'
require_relative './i215ae664ec5eb04d1c1afb8fa2a2cf8839b913a9f8dcd3593950acd318f9d168/f21050a91bf9f2e3a4776623d978897dffea7766cbd2dc36486e841f207a27d9'
require_relative './i2ed1bee376b8156a0a22f5282856711ef0be85b30558bdc31cf2c8369b11787a/436e3669f1deba217f224ad11562bd6fc518859eb3f2c705d205f5c7a729a9a3'
require_relative './i5945eaacb070a30521b69eee17eb78ae40e170c30d9720c005bddf9ca863dda1/3cd278dc116d85d122e5d39e81eb404f5617007c1b772408cb87edd5de8f7f92'
require_relative './i5ead6959611e29b9ed3cf12a0997eb3923fccfefce271662d62e86e7939e80fb/e23a23c31a68f8655aea1f1a7a2a60e996f78feb9ae42c4f13316864d58b4511'
require_relative './i62c98614daba6718ca5ec046f21f926cd27810a38ccd3692da298e489ed944ae/12974c9a0f89e94d1d2e2ec860020c21c74d6a4112b40bebe0de048887045234'
require_relative './i66d025d49aaf3c981f3b751a232f02e5c08bb5109a65f7e1b86022c92b5d4d26/ff1acc9758d51dd573fccf973fa07ad2766182ccb242efced55497a5d930304c'
require_relative './i6b571bd0a31383649596a36accb22d1f0fe1f523b3e9c16fc653b2c19431b651/aeddb2f965c8205f3e4276f726514281f2f0efaacf50288c66f52292d131a99c'
require_relative './i794c6e2c92c706aea052d5c6206e893cb1492240a58b9d5fea5e1c9cb94ecc01/7e26c6d51354187818bf3a7f7eac0758810f242defb145b06b5c0fb11b2b5723'
require_relative './i89ba2a583af7d339d827e6d94f2772b75855c8500c0f12f16c5455a1315fc244/297ab721eb3df4db503c54594f2c14c68c6f2a3f8e86c6655206e891d9b4d4a6'
require_relative './i8de3be154f538ef5559e9822c656cd173645778a7d05807eb42f15a2b0b284b8/1b940da89d6a4fa15a160814bb49288772886826dc270006e8d15cf7f8d7e321'
require_relative './i9ac34f0509edcb5d6bbfbbc269d67a27c97c49dfb31ee38c1bf4c30f04dc5115/099fe69c3ef7dae9fdb834bd5c5d9aa8a435fe78975dd909e71c729c793012cb'
require_relative './ia0a21818ac0a3277d5419b82f76920eef977dd29dc20e908675d20cabbcf6905/68c074ec3eb3f2717500631b3a99c570e30359b09ce329087bf9dd95df19ccde'
require_relative './ibc926148d7fa6b6448f04694c24c2528cc1bedcf32e5ddfec6aad1812ad8457e/86765a1d5ef89f0a8ddd434b53d6a44ddae5d6982515d91eff199dea30f7ee03'
require_relative './ibd23993d75324c4c49c081331c63a800388b0eef73300a6162c701ffdb8ead77/00af6ad3202a2bdbcd71c6d386e27dfe3ed3d93420a7ad45002f31898ee05d7b'
require_relative './ibdccfb21c0aeed13bbb5da71d6eeb46063705d172feeb21f35501bb5ceadae19/9a2ffeb0e5cc51a86c632f33991fadbcd88620d711c164fec440cd56d1db62e4'
require_relative './ibe61b996d150efb59b2001f2607c7c27457db7c78b97cbae9a7182ace9ed1d16/eaffc3008b829dcf873d8508e3c967e34003a453d10049f9759e4d97834f772d'
require_relative './ic2f09e85b5c85875cbfe7d2abc99663967375ded176da816e2d5bce868722e20/2fdff003a8c0705c9980479e95a2381e13eacd9c921c13e8a048c983aec5f3c9'
require_relative './id04e48afedd719dd9a069ddceadcf75f708c5327d7b6b83f078e5cd4e28a7836/c3cc81d2cbc7f564afabec54ba438d64e43c85a97921e2f41085f8d64579498c'
require_relative './id0ab0d417a5b4e224af5fdd2d0930c4d401716a73ed0080d52eefdc33c3a51a5/8a2a1f9cbf85e5c41b5c27a32d8eb23903c8f6358aeb39d9c54cf1d27719ca48'
require_relative './idb52a6d75250f5dac1ad06fde5deaa2e1a338b3a602ebf0fe493463cab130958/919c6e6aac36b7b46cbffe63f8e09a7cefbb7397c677259e6bd1a0c4455fbe2d'
require_relative './ief4a532b3756817caea747ed6bf9cb1df9b8869b5cad868a8dcb2b234abe77dd/e5ce484a77006d94590ce2ee52d204a984947418a8489f7e52d850f325e48c4c'
require_relative './if1693cb941f225eff1f607e1ae8fe182b29e899f2aedc55d2d372c4ba23d181d/e8c2564edb489e7260670b40f02f4624fb9a0c7011e7a035aee181d2f874c1b4'
require_relative './service_activity'

module MicrosoftGraphBeta
    module Reports
        module ServiceActivity
            ## 
            # Provides operations to manage the serviceActivity property of the microsoft.graph.reportRoot entity.
            class ServiceActivityRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new ServiceActivityRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/reports/serviceActivity{?%24expand,%24select}")
                end
                ## 
                ## Delete navigation property serviceActivity for reports
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of void
                ## 
                def delete(request_configuration=nil)
                    request_info = self.to_delete_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, nil, error_mapping)
                end
                ## 
                ## Reports that relate to tenant-level authentication activities in Microsoft Entra.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of service_activity
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ServiceActivity.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForDesktopMailByReadEmail method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_desktop_mail_by_read_email_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_desktop_mail_by_read_email_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForDesktopMailByReadEmailWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForEmailByModernAuthentication method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_email_by_modern_authentication_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_email_by_modern_authentication_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForEmailByModernAuthenticationWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForExcelWeb method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_excel_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_excel_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForExcelWebWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForiOSOrAndroidMailByReadEmail method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_fori_o_s_or_android_mail_by_read_email_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_fori_o_s_or_android_mail_by_read_email_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForiOSOrAndroidMailByReadEmailWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForOneNoteWeb method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_one_note_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_one_note_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForOneNoteWebWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForOutlookMacByReadEmail method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_outlook_mac_by_read_email_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_outlook_mac_by_read_email_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForOutlookMacByReadEmailWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForOutlookMobileByReadEmail method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_outlook_mobile_by_read_email_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_outlook_mobile_by_read_email_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForOutlookMobileByReadEmailWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForOutlookWebByAppOpening method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_outlook_web_by_app_opening_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_outlook_web_by_app_opening_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForOutlookWebByAppOpeningWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForOutlookWebByReadEmail method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_outlook_web_by_read_email_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_outlook_web_by_read_email_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForOutlookWebByReadEmailWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForPowerPointWeb method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_power_point_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_power_point_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForPowerPointWebWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForVisioWeb method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_visio_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_visio_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForVisioWebWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getActiveUserMetricsForWordWeb method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_active_user_metrics_for_word_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_active_user_metrics_for_word_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetActiveUserMetricsForWordWebWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getAudioStreamQoEMetricsForTeams method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_audio_stream_qo_e_metrics_for_teams_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_audio_stream_qo_e_metrics_for_teams_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetAudioStreamQoEMetricsForTeamsWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getAudioStreamsOverUdpMetricsForTeams method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_audio_streams_over_udp_metrics_for_teams_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_audio_streams_over_udp_metrics_for_teams_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetAudioStreamsOverUdpMetricsForTeamsWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getConnectivityMetricsForExchange method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_connectivity_metrics_for_exchange_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_connectivity_metrics_for_exchange_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetConnectivityMetricsForExchangeWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMessageVolumeMetricsForEmailDelivery method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_message_volume_metrics_for_email_delivery_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_message_volume_metrics_for_email_delivery_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMessageVolumeMetricsForEmailDeliveryWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMessageVolumeMetricsForTeamsChat method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_message_volume_metrics_for_teams_chat_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_message_volume_metrics_for_teams_chat_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMessageVolumeMetricsForTeamsChatWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMetricsForConditionalAccessCompliantDevicesSignInSuccess method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_metrics_for_conditional_access_compliant_devices_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_metrics_for_conditional_access_compliant_devices_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMetricsForConditionalAccessCompliantDevicesSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMetricsForConditionalAccessManagedDevicesSignInSuccess method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_metrics_for_conditional_access_managed_devices_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_metrics_for_conditional_access_managed_devices_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMetricsForConditionalAccessManagedDevicesSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMetricsForMfaSignInFailure method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_metrics_for_mfa_sign_in_failure_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_metrics_for_mfa_sign_in_failure_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMetricsForMfaSignInFailureWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMetricsForMfaSignInSuccess method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_metrics_for_mfa_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_metrics_for_mfa_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMetricsForMfaSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMetricsForSamlSignInSuccess method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_metrics_for_saml_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_metrics_for_saml_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMetricsForSamlSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getUsageMetricsForTeamsByLaunch method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_usage_metrics_for_teams_by_launch_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_usage_metrics_for_teams_by_launch_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetUsageMetricsForTeamsByLaunchWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getUsageMetricsForTeamsByMeetingsJoined method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_usage_metrics_for_teams_by_meetings_joined_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_usage_metrics_for_teams_by_meetings_joined_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetUsageMetricsForTeamsByMeetingsJoinedWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Update the navigation property serviceActivity in reports
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of service_activity
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ServiceActivity.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property serviceActivity for reports
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Reports that relate to tenant-level authentication activities in Microsoft Entra.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_get_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :GET
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Update the navigation property serviceActivity in reports
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_patch_request_information(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :PATCH
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a service_activity_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return ServiceActivityRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Reports that relate to tenant-level authentication activities in Microsoft Entra.
                class ServiceActivityRequestBuilderGetQueryParameters
                    
                    ## 
                    # Expand related entities
                    attr_accessor :expand
                    ## 
                    # Select properties to be returned
                    attr_accessor :select
                    ## 
                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                    ## @param original_name The original query parameter name in the class.
                    ## @return a string
                    ## 
                    def get_query_parameter(original_name)
                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                        case original_name
                            when "expand"
                                return "%24expand"
                            when "select"
                                return "%24select"
                            else
                                return original_name
                        end
                    end
                end
            end
        end
    end
end
