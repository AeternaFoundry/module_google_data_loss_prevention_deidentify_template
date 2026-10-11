variable "data_loss_prevention_deidentify_templates" {
  description = <<EOT
Map of data_loss_prevention_deidentify_templates, attributes below
Required:
    - parent
    - deidentify_config (block):
        - image_transformations (optional, block):
            - transforms (required, block):
                - all_info_types (optional, block):
                - all_text (optional, block):
                - redaction_color (optional, block):
                    - blue (optional)
                    - green (optional)
                    - red (optional)
                - selected_info_types (optional, block):
                    - info_types (required, block):
                        - name (required)
                        - sensitivity_score (optional, block):
                            - score (required)
                        - version (optional)
        - info_type_transformations (optional, block):
            - transformations (required, block):
                - info_types (optional, block):
                    - name (required)
                    - sensitivity_score (optional, block):
                        - score (required)
                    - version (optional)
                - primitive_transformation (required, block):
                    - bucketing_config (optional, block):
                        - buckets (optional, block):
                            - max (optional, block):
                                - date_value (optional, block):
                                    - day (optional)
                                    - month (optional)
                                    - year (optional)
                                - day_of_week_value (optional)
                                - float_value (optional)
                                - integer_value (optional)
                                - string_value (optional)
                                - time_value (optional, block):
                                    - hours (optional)
                                    - minutes (optional)
                                    - nanos (optional)
                                    - seconds (optional)
                                - timestamp_value (optional)
                            - min (optional, block):
                                - date_value (optional, block):
                                    - day (optional)
                                    - month (optional)
                                    - year (optional)
                                - day_of_week_value (optional)
                                - float_value (optional)
                                - integer_value (optional)
                                - string_value (optional)
                                - time_value (optional, block):
                                    - hours (optional)
                                    - minutes (optional)
                                    - nanos (optional)
                                    - seconds (optional)
                                - timestamp_value (optional)
                            - replacement_value (required, block):
                                - date_value (optional, block):
                                    - day (optional)
                                    - month (optional)
                                    - year (optional)
                                - day_of_week_value (optional)
                                - float_value (optional)
                                - integer_value (optional)
                                - string_value (optional)
                                - time_value (optional, block):
                                    - hours (optional)
                                    - minutes (optional)
                                    - nanos (optional)
                                    - seconds (optional)
                                - timestamp_value (optional)
                    - character_mask_config (optional, block):
                        - characters_to_ignore (optional, block):
                            - characters_to_skip (optional)
                            - common_characters_to_ignore (optional)
                        - masking_character (optional)
                        - number_to_mask (optional)
                        - reverse_order (optional)
                    - crypto_deterministic_config (optional, block):
                        - context (optional, block):
                            - name (optional)
                        - crypto_key (optional, block):
                            - kms_wrapped (optional, block):
                                - crypto_key_name (required)
                                - wrapped_key (required)
                            - transient (optional, block):
                                - name (required)
                            - unwrapped (optional, block):
                                - key (required)
                        - surrogate_info_type (optional, block):
                            - name (optional)
                            - sensitivity_score (optional, block):
                                - score (required)
                            - version (optional)
                    - crypto_hash_config (optional, block):
                        - crypto_key (optional, block):
                            - kms_wrapped (optional, block):
                                - crypto_key_name (required)
                                - wrapped_key (required)
                            - transient (optional, block):
                                - name (required)
                            - unwrapped (optional, block):
                                - key (required)
                    - crypto_replace_ffx_fpe_config (optional, block):
                        - common_alphabet (optional)
                        - context (optional, block):
                            - name (optional)
                        - crypto_key (optional, block):
                            - kms_wrapped (optional, block):
                                - crypto_key_name (required)
                                - wrapped_key (required)
                            - transient (optional, block):
                                - name (required)
                            - unwrapped (optional, block):
                                - key (required)
                        - custom_alphabet (optional)
                        - radix (optional)
                        - surrogate_info_type (optional, block):
                            - name (optional)
                            - sensitivity_score (optional, block):
                                - score (required)
                            - version (optional)
                    - date_shift_config (optional, block):
                        - context (optional, block):
                            - name (required)
                        - crypto_key (optional, block):
                            - kms_wrapped (optional, block):
                                - crypto_key_name (required)
                                - wrapped_key (required)
                            - transient (optional, block):
                                - name (required)
                            - unwrapped (optional, block):
                                - key (required)
                        - lower_bound_days (required)
                        - upper_bound_days (required)
                    - fixed_size_bucketing_config (optional, block):
                        - bucket_size (required)
                        - lower_bound (required, block):
                            - float_value (optional)
                            - integer_value (optional)
                        - upper_bound (required, block):
                            - float_value (optional)
                            - integer_value (optional)
                    - redact_config (optional, block):
                    - replace_config (optional, block):
                        - new_value (required, block):
                            - boolean_value (optional)
                            - date_value (optional, block):
                                - day (optional)
                                - month (optional)
                                - year (optional)
                            - day_of_week_value (optional)
                            - float_value (optional)
                            - integer_value (optional)
                            - string_value (optional)
                            - time_value (optional, block):
                                - hours (optional)
                                - minutes (optional)
                                - nanos (optional)
                                - seconds (optional)
                            - timestamp_value (optional)
                    - replace_dictionary_config (optional, block):
                        - word_list (required, block):
                            - words (required)
                    - replace_with_info_type_config (optional)
                    - time_part_config (optional, block):
                        - part_to_extract (optional)
        - record_transformations (optional, block):
            - field_transformations (optional, block):
                - condition (optional, block):
                    - expressions (optional, block):
                        - conditions (optional, block):
                            - conditions (optional, block):
                                - field (required, block):
                                    - name (optional)
                                - operator (required)
                                - value (optional, block):
                                    - boolean_value (optional)
                                    - date_value (optional, block):
                                        - day (optional)
                                        - month (optional)
                                        - year (optional)
                                    - day_of_week_value (optional)
                                    - float_value (optional)
                                    - integer_value (optional)
                                    - string_value (optional)
                                    - time_value (optional, block):
                                        - hours (optional)
                                        - minutes (optional)
                                        - nanos (optional)
                                        - seconds (optional)
                                    - timestamp_value (optional)
                        - logical_operator (optional)
                - fields (required, block):
                    - name (optional)
                - info_type_transformations (optional, block):
                    - transformations (required, block):
                        - info_types (optional, block):
                            - name (required)
                            - sensitivity_score (optional, block):
                                - score (required)
                            - version (optional)
                        - primitive_transformation (required, block):
                            - bucketing_config (optional, block):
                                - buckets (required, block):
                                    - max (optional, block):
                                        - date_value (optional, block):
                                            - day (optional)
                                            - month (optional)
                                            - year (optional)
                                        - day_of_week_value (optional)
                                        - float_value (optional)
                                        - integer_value (optional)
                                        - string_value (optional)
                                        - time_value (optional, block):
                                            - hours (optional)
                                            - minutes (optional)
                                            - nanos (optional)
                                            - seconds (optional)
                                        - timestamp_value (optional)
                                    - min (optional, block):
                                        - date_value (optional, block):
                                            - day (optional)
                                            - month (optional)
                                            - year (optional)
                                        - day_of_week_value (optional)
                                        - float_value (optional)
                                        - integer_value (optional)
                                        - string_value (optional)
                                        - time_value (optional, block):
                                            - hours (optional)
                                            - minutes (optional)
                                            - nanos (optional)
                                            - seconds (optional)
                                        - timestamp_value (optional)
                                    - replacement_value (required, block):
                                        - date_value (optional, block):
                                            - day (optional)
                                            - month (optional)
                                            - year (optional)
                                        - day_of_week_value (optional)
                                        - float_value (optional)
                                        - integer_value (optional)
                                        - string_value (optional)
                                        - time_value (optional, block):
                                            - hours (optional)
                                            - minutes (optional)
                                            - nanos (optional)
                                            - seconds (optional)
                                        - timestamp_value (optional)
                            - character_mask_config (optional, block):
                                - characters_to_ignore (optional, block):
                                    - characters_to_skip (optional)
                                    - common_characters_to_ignore (optional)
                                - masking_character (optional)
                                - number_to_mask (optional)
                                - reverse_order (optional)
                            - crypto_deterministic_config (optional, block):
                                - context (optional, block):
                                    - name (required)
                                - crypto_key (required, block):
                                    - kms_wrapped (optional, block):
                                        - crypto_key_name (required)
                                        - wrapped_key (required)
                                    - transient (optional, block):
                                        - name (required)
                                    - unwrapped (optional, block):
                                        - key (required)
                                - surrogate_info_type (required, block):
                                    - name (required)
                                    - sensitivity_score (optional, block):
                                        - score (required)
                                    - version (optional)
                            - crypto_hash_config (optional, block):
                                - crypto_key (required, block):
                                    - kms_wrapped (optional, block):
                                        - crypto_key_name (required)
                                        - wrapped_key (required)
                                    - transient (optional, block):
                                        - name (required)
                                    - unwrapped (optional, block):
                                        - key (required)
                            - crypto_replace_ffx_fpe_config (optional, block):
                                - common_alphabet (optional)
                                - context (optional, block):
                                    - name (required)
                                - crypto_key (required, block):
                                    - kms_wrapped (optional, block):
                                        - crypto_key_name (required)
                                        - wrapped_key (required)
                                    - transient (optional, block):
                                        - name (required)
                                    - unwrapped (optional, block):
                                        - key (required)
                                - custom_alphabet (optional)
                                - radix (optional)
                                - surrogate_info_type (optional, block):
                                    - name (required)
                                    - sensitivity_score (optional, block):
                                        - score (required)
                                    - version (optional)
                            - date_shift_config (optional, block):
                                - context (optional, block):
                                    - name (required)
                                - crypto_key (optional, block):
                                    - kms_wrapped (optional, block):
                                        - crypto_key_name (required)
                                        - wrapped_key (required)
                                    - transient (optional, block):
                                        - name (required)
                                    - unwrapped (optional, block):
                                        - key (required)
                                - lower_bound_days (required)
                                - upper_bound_days (required)
                            - fixed_size_bucketing_config (optional, block):
                                - bucket_size (required)
                                - lower_bound (required, block):
                                    - float_value (optional)
                                    - integer_value (optional)
                                - upper_bound (required, block):
                                    - float_value (optional)
                                    - integer_value (optional)
                            - redact_config (optional, block):
                            - replace_config (optional, block):
                                - new_value (required, block):
                                    - boolean_value (optional)
                                    - date_value (optional, block):
                                        - day (optional)
                                        - month (optional)
                                        - year (optional)
                                    - day_of_week_value (optional)
                                    - float_value (optional)
                                    - integer_value (optional)
                                    - string_value (optional)
                                    - time_value (optional, block):
                                        - hours (optional)
                                        - minutes (optional)
                                        - nanos (optional)
                                        - seconds (optional)
                                    - timestamp_value (optional)
                            - replace_dictionary_config (optional, block):
                                - word_list (required, block):
                                    - words (required)
                            - replace_with_info_type_config (optional, block):
                            - time_part_config (optional, block):
                                - part_to_extract (required)
                - primitive_transformation (optional, block):
                    - bucketing_config (optional, block):
                        - buckets (optional, block):
                            - max (optional, block):
                                - boolean_value (optional)
                                - date_value (optional, block):
                                    - day (optional)
                                    - month (optional)
                                    - year (optional)
                                - day_of_week_value (optional)
                                - float_value (optional)
                                - integer_value (optional)
                                - string_value (optional)
                                - time_value (optional, block):
                                    - hours (optional)
                                    - minutes (optional)
                                    - nanos (optional)
                                    - seconds (optional)
                                - timestamp_value (optional)
                            - min (optional, block):
                                - boolean_value (optional)
                                - date_value (optional, block):
                                    - day (optional)
                                    - month (optional)
                                    - year (optional)
                                - day_of_week_value (optional)
                                - float_value (optional)
                                - integer_value (optional)
                                - string_value (optional)
                                - time_value (optional, block):
                                    - hours (optional)
                                    - minutes (optional)
                                    - nanos (optional)
                                    - seconds (optional)
                                - timestamp_value (optional)
                            - replacement_value (required, block):
                                - boolean_value (optional)
                                - date_value (optional, block):
                                    - day (optional)
                                    - month (optional)
                                    - year (optional)
                                - day_of_week_value (optional)
                                - float_value (optional)
                                - integer_value (optional)
                                - string_value (optional)
                                - time_value (optional, block):
                                    - hours (optional)
                                    - minutes (optional)
                                    - nanos (optional)
                                    - seconds (optional)
                                - timestamp_value (optional)
                    - character_mask_config (optional, block):
                        - characters_to_ignore (optional, block):
                            - characters_to_skip (optional)
                            - common_characters_to_ignore (optional)
                        - masking_character (optional)
                        - number_to_mask (optional)
                        - reverse_order (optional)
                    - crypto_deterministic_config (optional, block):
                        - context (optional, block):
                            - name (optional)
                        - crypto_key (optional, block):
                            - kms_wrapped (optional, block):
                                - crypto_key_name (required)
                                - wrapped_key (required)
                            - transient (optional, block):
                                - name (required)
                            - unwrapped (optional, block):
                                - key (required)
                        - surrogate_info_type (optional, block):
                            - name (optional)
                            - sensitivity_score (optional, block):
                                - score (required)
                            - version (optional)
                    - crypto_hash_config (optional, block):
                        - crypto_key (optional, block):
                            - kms_wrapped (optional, block):
                                - crypto_key_name (required)
                                - wrapped_key (required)
                            - transient (optional, block):
                                - name (required)
                            - unwrapped (optional, block):
                                - key (required)
                    - crypto_replace_ffx_fpe_config (optional, block):
                        - common_alphabet (optional)
                        - context (optional, block):
                            - name (optional)
                        - crypto_key (optional, block):
                            - kms_wrapped (optional, block):
                                - crypto_key_name (required)
                                - wrapped_key (required)
                            - transient (optional, block):
                                - name (required)
                            - unwrapped (optional, block):
                                - key (required)
                        - custom_alphabet (optional)
                        - radix (optional)
                        - surrogate_info_type (optional, block):
                            - name (optional)
                            - sensitivity_score (optional, block):
                                - score (required)
                            - version (optional)
                    - date_shift_config (optional, block):
                        - context (optional, block):
                            - name (optional)
                        - crypto_key (optional, block):
                            - kms_wrapped (optional, block):
                                - crypto_key_name (required)
                                - wrapped_key (required)
                            - transient (optional, block):
                                - name (required)
                            - unwrapped (optional, block):
                                - key (required)
                        - lower_bound_days (required)
                        - upper_bound_days (required)
                    - fixed_size_bucketing_config (optional, block):
                        - bucket_size (required)
                        - lower_bound (required, block):
                            - boolean_value (optional)
                            - date_value (optional, block):
                                - day (optional)
                                - month (optional)
                                - year (optional)
                            - day_of_week_value (optional)
                            - float_value (optional)
                            - integer_value (optional)
                            - string_value (optional)
                            - time_value (optional, block):
                                - hours (optional)
                                - minutes (optional)
                                - nanos (optional)
                                - seconds (optional)
                            - timestamp_value (optional)
                        - upper_bound (required, block):
                            - boolean_value (optional)
                            - date_value (optional, block):
                                - day (optional)
                                - month (optional)
                                - year (optional)
                            - day_of_week_value (optional)
                            - float_value (optional)
                            - integer_value (optional)
                            - string_value (optional)
                            - time_value (optional, block):
                                - hours (optional)
                                - minutes (optional)
                                - nanos (optional)
                                - seconds (optional)
                            - timestamp_value (optional)
                    - redact_config (optional, block):
                    - replace_config (optional, block):
                        - new_value (required, block):
                            - boolean_value (optional)
                            - date_value (optional, block):
                                - day (optional)
                                - month (optional)
                                - year (optional)
                            - day_of_week_value (optional)
                            - float_value (optional)
                            - integer_value (optional)
                            - string_value (optional)
                            - time_value (optional, block):
                                - hours (optional)
                                - minutes (optional)
                                - nanos (optional)
                                - seconds (optional)
                            - timestamp_value (optional)
                    - replace_dictionary_config (optional, block):
                        - word_list (optional, block):
                            - words (required)
                    - time_part_config (optional, block):
                        - part_to_extract (optional)
            - record_suppressions (optional, block):
                - condition (optional, block):
                    - expressions (optional, block):
                        - conditions (optional, block):
                            - conditions (optional, block):
                                - field (required, block):
                                    - name (optional)
                                - operator (required)
                                - value (optional, block):
                                    - boolean_value (optional)
                                    - date_value (optional, block):
                                        - day (optional)
                                        - month (optional)
                                        - year (optional)
                                    - day_of_week_value (optional)
                                    - float_value (optional)
                                    - integer_value (optional)
                                    - string_value (optional)
                                    - time_value (optional, block):
                                        - hours (optional)
                                        - minutes (optional)
                                        - nanos (optional)
                                        - seconds (optional)
                                    - timestamp_value (optional)
                        - logical_operator (optional)
Optional:
    - deletion_policy
    - description
    - display_name
    - template_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    parent          = string
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    template_id     = optional(string)
    deidentify_config = object({
      image_transformations = optional(object({
        transforms = list(object({
          all_info_types = optional(object({
          }))
          all_text = optional(object({
          }))
          redaction_color = optional(object({
            blue  = optional(number)
            green = optional(number)
            red   = optional(number)
          }))
          selected_info_types = optional(object({
            info_types = list(object({
              name = string
              sensitivity_score = optional(object({
                score = string
              }))
              version = optional(string)
            }))
          }))
        }))
      }))
      info_type_transformations = optional(object({
        transformations = list(object({
          info_types = optional(list(object({
            name = string
            sensitivity_score = optional(object({
              score = string
            }))
            version = optional(string)
          })))
          primitive_transformation = object({
            bucketing_config = optional(object({
              buckets = optional(list(object({
                max = optional(object({
                  date_value = optional(object({
                    day   = optional(number)
                    month = optional(number)
                    year  = optional(number)
                  }))
                  day_of_week_value = optional(string)
                  float_value       = optional(number)
                  integer_value     = optional(string)
                  string_value      = optional(string)
                  time_value = optional(object({
                    hours   = optional(number)
                    minutes = optional(number)
                    nanos   = optional(number)
                    seconds = optional(number)
                  }))
                  timestamp_value = optional(string)
                }))
                min = optional(object({
                  date_value = optional(object({
                    day   = optional(number)
                    month = optional(number)
                    year  = optional(number)
                  }))
                  day_of_week_value = optional(string)
                  float_value       = optional(number)
                  integer_value     = optional(string)
                  string_value      = optional(string)
                  time_value = optional(object({
                    hours   = optional(number)
                    minutes = optional(number)
                    nanos   = optional(number)
                    seconds = optional(number)
                  }))
                  timestamp_value = optional(string)
                }))
                replacement_value = object({
                  date_value = optional(object({
                    day   = optional(number)
                    month = optional(number)
                    year  = optional(number)
                  }))
                  day_of_week_value = optional(string)
                  float_value       = optional(number)
                  integer_value     = optional(string)
                  string_value      = optional(string)
                  time_value = optional(object({
                    hours   = optional(number)
                    minutes = optional(number)
                    nanos   = optional(number)
                    seconds = optional(number)
                  }))
                  timestamp_value = optional(string)
                })
              })))
            }))
            character_mask_config = optional(object({
              characters_to_ignore = optional(list(object({
                characters_to_skip          = optional(string)
                common_characters_to_ignore = optional(string)
              })))
              masking_character = optional(string)
              number_to_mask    = optional(number)
              reverse_order     = optional(bool)
            }))
            crypto_deterministic_config = optional(object({
              context = optional(object({
                name = optional(string)
              }))
              crypto_key = optional(object({
                kms_wrapped = optional(object({
                  crypto_key_name = string
                  wrapped_key     = string
                }))
                transient = optional(object({
                  name = string
                }))
                unwrapped = optional(object({
                  key = string
                }))
              }))
              surrogate_info_type = optional(object({
                name = optional(string)
                sensitivity_score = optional(object({
                  score = string
                }))
                version = optional(string)
              }))
            }))
            crypto_hash_config = optional(object({
              crypto_key = optional(object({
                kms_wrapped = optional(object({
                  crypto_key_name = string
                  wrapped_key     = string
                }))
                transient = optional(object({
                  name = string
                }))
                unwrapped = optional(object({
                  key = string
                }))
              }))
            }))
            crypto_replace_ffx_fpe_config = optional(object({
              common_alphabet = optional(string)
              context = optional(object({
                name = optional(string)
              }))
              crypto_key = optional(object({
                kms_wrapped = optional(object({
                  crypto_key_name = string
                  wrapped_key     = string
                }))
                transient = optional(object({
                  name = string
                }))
                unwrapped = optional(object({
                  key = string
                }))
              }))
              custom_alphabet = optional(string)
              radix           = optional(number)
              surrogate_info_type = optional(object({
                name = optional(string)
                sensitivity_score = optional(object({
                  score = string
                }))
                version = optional(string)
              }))
            }))
            date_shift_config = optional(object({
              context = optional(object({
                name = string
              }))
              crypto_key = optional(object({
                kms_wrapped = optional(object({
                  crypto_key_name = string
                  wrapped_key     = string
                }))
                transient = optional(object({
                  name = string
                }))
                unwrapped = optional(object({
                  key = string
                }))
              }))
              lower_bound_days = number
              upper_bound_days = number
            }))
            fixed_size_bucketing_config = optional(object({
              bucket_size = number
              lower_bound = object({
                float_value   = optional(number)
                integer_value = optional(string)
              })
              upper_bound = object({
                float_value   = optional(number)
                integer_value = optional(string)
              })
            }))
            redact_config = optional(object({
            }))
            replace_config = optional(object({
              new_value = object({
                boolean_value = optional(bool)
                date_value = optional(object({
                  day   = optional(number)
                  month = optional(number)
                  year  = optional(number)
                }))
                day_of_week_value = optional(string)
                float_value       = optional(number)
                integer_value     = optional(number)
                string_value      = optional(string)
                time_value = optional(object({
                  hours   = optional(number)
                  minutes = optional(number)
                  nanos   = optional(number)
                  seconds = optional(number)
                }))
                timestamp_value = optional(string)
              })
            }))
            replace_dictionary_config = optional(object({
              word_list = object({
                words = list(string)
              })
            }))
            replace_with_info_type_config = optional(bool)
            time_part_config = optional(object({
              part_to_extract = optional(string)
            }))
          })
        }))
      }))
      record_transformations = optional(object({
        field_transformations = optional(list(object({
          condition = optional(object({
            expressions = optional(object({
              conditions = optional(object({
                conditions = optional(list(object({
                  field = object({
                    name = optional(string)
                  })
                  operator = string
                  value = optional(object({
                    boolean_value = optional(bool)
                    date_value = optional(object({
                      day   = optional(number)
                      month = optional(number)
                      year  = optional(number)
                    }))
                    day_of_week_value = optional(string)
                    float_value       = optional(number)
                    integer_value     = optional(string)
                    string_value      = optional(string)
                    time_value = optional(object({
                      hours   = optional(number)
                      minutes = optional(number)
                      nanos   = optional(number)
                      seconds = optional(number)
                    }))
                    timestamp_value = optional(string)
                  }))
                })))
              }))
              logical_operator = optional(string)
            }))
          }))
          fields = list(object({
            name = optional(string)
          }))
          info_type_transformations = optional(object({
            transformations = list(object({
              info_types = optional(list(object({
                name = string
                sensitivity_score = optional(object({
                  score = string
                }))
                version = optional(string)
              })))
              primitive_transformation = object({
                bucketing_config = optional(object({
                  buckets = list(object({
                    max = optional(object({
                      date_value = optional(object({
                        day   = optional(number)
                        month = optional(number)
                        year  = optional(number)
                      }))
                      day_of_week_value = optional(string)
                      float_value       = optional(number)
                      integer_value     = optional(string)
                      string_value      = optional(string)
                      time_value = optional(object({
                        hours   = optional(number)
                        minutes = optional(number)
                        nanos   = optional(number)
                        seconds = optional(number)
                      }))
                      timestamp_value = optional(string)
                    }))
                    min = optional(object({
                      date_value = optional(object({
                        day   = optional(number)
                        month = optional(number)
                        year  = optional(number)
                      }))
                      day_of_week_value = optional(string)
                      float_value       = optional(number)
                      integer_value     = optional(string)
                      string_value      = optional(string)
                      time_value = optional(object({
                        hours   = optional(number)
                        minutes = optional(number)
                        nanos   = optional(number)
                        seconds = optional(number)
                      }))
                      timestamp_value = optional(string)
                    }))
                    replacement_value = object({
                      date_value = optional(object({
                        day   = optional(number)
                        month = optional(number)
                        year  = optional(number)
                      }))
                      day_of_week_value = optional(string)
                      float_value       = optional(number)
                      integer_value     = optional(string)
                      string_value      = optional(string)
                      time_value = optional(object({
                        hours   = optional(number)
                        minutes = optional(number)
                        nanos   = optional(number)
                        seconds = optional(number)
                      }))
                      timestamp_value = optional(string)
                    })
                  }))
                }))
                character_mask_config = optional(object({
                  characters_to_ignore = optional(list(object({
                    characters_to_skip          = optional(string)
                    common_characters_to_ignore = optional(string)
                  })))
                  masking_character = optional(string)
                  number_to_mask    = optional(number)
                  reverse_order     = optional(bool)
                }))
                crypto_deterministic_config = optional(object({
                  context = optional(object({
                    name = string
                  }))
                  crypto_key = object({
                    kms_wrapped = optional(object({
                      crypto_key_name = string
                      wrapped_key     = string
                    }))
                    transient = optional(object({
                      name = string
                    }))
                    unwrapped = optional(object({
                      key = string
                    }))
                  })
                  surrogate_info_type = object({
                    name = string
                    sensitivity_score = optional(object({
                      score = string
                    }))
                    version = optional(string)
                  })
                }))
                crypto_hash_config = optional(object({
                  crypto_key = object({
                    kms_wrapped = optional(object({
                      crypto_key_name = string
                      wrapped_key     = string
                    }))
                    transient = optional(object({
                      name = string
                    }))
                    unwrapped = optional(object({
                      key = string
                    }))
                  })
                }))
                crypto_replace_ffx_fpe_config = optional(object({
                  common_alphabet = optional(string)
                  context = optional(object({
                    name = string
                  }))
                  crypto_key = object({
                    kms_wrapped = optional(object({
                      crypto_key_name = string
                      wrapped_key     = string
                    }))
                    transient = optional(object({
                      name = string
                    }))
                    unwrapped = optional(object({
                      key = string
                    }))
                  })
                  custom_alphabet = optional(string)
                  radix           = optional(number)
                  surrogate_info_type = optional(object({
                    name = string
                    sensitivity_score = optional(object({
                      score = string
                    }))
                    version = optional(string)
                  }))
                }))
                date_shift_config = optional(object({
                  context = optional(object({
                    name = string
                  }))
                  crypto_key = optional(object({
                    kms_wrapped = optional(object({
                      crypto_key_name = string
                      wrapped_key     = string
                    }))
                    transient = optional(object({
                      name = string
                    }))
                    unwrapped = optional(object({
                      key = string
                    }))
                  }))
                  lower_bound_days = number
                  upper_bound_days = number
                }))
                fixed_size_bucketing_config = optional(object({
                  bucket_size = number
                  lower_bound = object({
                    float_value   = optional(number)
                    integer_value = optional(string)
                  })
                  upper_bound = object({
                    float_value   = optional(number)
                    integer_value = optional(string)
                  })
                }))
                redact_config = optional(object({
                }))
                replace_config = optional(object({
                  new_value = object({
                    boolean_value = optional(bool)
                    date_value = optional(object({
                      day   = optional(number)
                      month = optional(number)
                      year  = optional(number)
                    }))
                    day_of_week_value = optional(string)
                    float_value       = optional(number)
                    integer_value     = optional(string)
                    string_value      = optional(string)
                    time_value = optional(object({
                      hours   = optional(number)
                      minutes = optional(number)
                      nanos   = optional(number)
                      seconds = optional(number)
                    }))
                    timestamp_value = optional(string)
                  })
                }))
                replace_dictionary_config = optional(object({
                  word_list = object({
                    words = list(string)
                  })
                }))
                replace_with_info_type_config = optional(object({
                }))
                time_part_config = optional(object({
                  part_to_extract = string
                }))
              })
            }))
          }))
          primitive_transformation = optional(object({
            bucketing_config = optional(object({
              buckets = optional(list(object({
                max = optional(object({
                  boolean_value = optional(bool)
                  date_value = optional(object({
                    day   = optional(number)
                    month = optional(number)
                    year  = optional(number)
                  }))
                  day_of_week_value = optional(string)
                  float_value       = optional(number)
                  integer_value     = optional(string)
                  string_value      = optional(string)
                  time_value = optional(object({
                    hours   = optional(number)
                    minutes = optional(number)
                    nanos   = optional(number)
                    seconds = optional(number)
                  }))
                  timestamp_value = optional(string)
                }))
                min = optional(object({
                  boolean_value = optional(bool)
                  date_value = optional(object({
                    day   = optional(number)
                    month = optional(number)
                    year  = optional(number)
                  }))
                  day_of_week_value = optional(string)
                  float_value       = optional(number)
                  integer_value     = optional(string)
                  string_value      = optional(string)
                  time_value = optional(object({
                    hours   = optional(number)
                    minutes = optional(number)
                    nanos   = optional(number)
                    seconds = optional(number)
                  }))
                  timestamp_value = optional(string)
                }))
                replacement_value = object({
                  boolean_value = optional(bool)
                  date_value = optional(object({
                    day   = optional(number)
                    month = optional(number)
                    year  = optional(number)
                  }))
                  day_of_week_value = optional(string)
                  float_value       = optional(number)
                  integer_value     = optional(string)
                  string_value      = optional(string)
                  time_value = optional(object({
                    hours   = optional(number)
                    minutes = optional(number)
                    nanos   = optional(number)
                    seconds = optional(number)
                  }))
                  timestamp_value = optional(string)
                })
              })))
            }))
            character_mask_config = optional(object({
              characters_to_ignore = optional(list(object({
                characters_to_skip          = optional(string)
                common_characters_to_ignore = optional(string)
              })))
              masking_character = optional(string)
              number_to_mask    = optional(number)
              reverse_order     = optional(bool)
            }))
            crypto_deterministic_config = optional(object({
              context = optional(object({
                name = optional(string)
              }))
              crypto_key = optional(object({
                kms_wrapped = optional(object({
                  crypto_key_name = string
                  wrapped_key     = string
                }))
                transient = optional(object({
                  name = string
                }))
                unwrapped = optional(object({
                  key = string
                }))
              }))
              surrogate_info_type = optional(object({
                name = optional(string)
                sensitivity_score = optional(object({
                  score = string
                }))
                version = optional(string)
              }))
            }))
            crypto_hash_config = optional(object({
              crypto_key = optional(object({
                kms_wrapped = optional(object({
                  crypto_key_name = string
                  wrapped_key     = string
                }))
                transient = optional(object({
                  name = string
                }))
                unwrapped = optional(object({
                  key = string
                }))
              }))
            }))
            crypto_replace_ffx_fpe_config = optional(object({
              common_alphabet = optional(string)
              context = optional(object({
                name = optional(string)
              }))
              crypto_key = optional(object({
                kms_wrapped = optional(object({
                  crypto_key_name = string
                  wrapped_key     = string
                }))
                transient = optional(object({
                  name = string
                }))
                unwrapped = optional(object({
                  key = string
                }))
              }))
              custom_alphabet = optional(string)
              radix           = optional(number)
              surrogate_info_type = optional(object({
                name = optional(string)
                sensitivity_score = optional(object({
                  score = string
                }))
                version = optional(string)
              }))
            }))
            date_shift_config = optional(object({
              context = optional(object({
                name = optional(string)
              }))
              crypto_key = optional(object({
                kms_wrapped = optional(object({
                  crypto_key_name = string
                  wrapped_key     = string
                }))
                transient = optional(object({
                  name = string
                }))
                unwrapped = optional(object({
                  key = string
                }))
              }))
              lower_bound_days = number
              upper_bound_days = number
            }))
            fixed_size_bucketing_config = optional(object({
              bucket_size = number
              lower_bound = object({
                boolean_value = optional(bool)
                date_value = optional(object({
                  day   = optional(number)
                  month = optional(number)
                  year  = optional(number)
                }))
                day_of_week_value = optional(string)
                float_value       = optional(number)
                integer_value     = optional(string)
                string_value      = optional(string)
                time_value = optional(object({
                  hours   = optional(number)
                  minutes = optional(number)
                  nanos   = optional(number)
                  seconds = optional(number)
                }))
                timestamp_value = optional(string)
              })
              upper_bound = object({
                boolean_value = optional(bool)
                date_value = optional(object({
                  day   = optional(number)
                  month = optional(number)
                  year  = optional(number)
                }))
                day_of_week_value = optional(string)
                float_value       = optional(number)
                integer_value     = optional(string)
                string_value      = optional(string)
                time_value = optional(object({
                  hours   = optional(number)
                  minutes = optional(number)
                  nanos   = optional(number)
                  seconds = optional(number)
                }))
                timestamp_value = optional(string)
              })
            }))
            redact_config = optional(object({
            }))
            replace_config = optional(object({
              new_value = object({
                boolean_value = optional(bool)
                date_value = optional(object({
                  day   = optional(number)
                  month = optional(number)
                  year  = optional(number)
                }))
                day_of_week_value = optional(string)
                float_value       = optional(number)
                integer_value     = optional(string)
                string_value      = optional(string)
                time_value = optional(object({
                  hours   = optional(number)
                  minutes = optional(number)
                  nanos   = optional(number)
                  seconds = optional(number)
                }))
                timestamp_value = optional(string)
              })
            }))
            replace_dictionary_config = optional(object({
              word_list = optional(object({
                words = list(string)
              }))
            }))
            time_part_config = optional(object({
              part_to_extract = optional(string)
            }))
          }))
        })))
        record_suppressions = optional(list(object({
          condition = optional(object({
            expressions = optional(object({
              conditions = optional(object({
                conditions = optional(list(object({
                  field = object({
                    name = optional(string)
                  })
                  operator = string
                  value = optional(object({
                    boolean_value = optional(bool)
                    date_value = optional(object({
                      day   = optional(number)
                      month = optional(number)
                      year  = optional(number)
                    }))
                    day_of_week_value = optional(string)
                    float_value       = optional(number)
                    integer_value     = optional(string)
                    string_value      = optional(string)
                    time_value = optional(object({
                      hours   = optional(number)
                      minutes = optional(number)
                      nanos   = optional(number)
                      seconds = optional(number)
                    }))
                    timestamp_value = optional(string)
                  }))
                })))
              }))
              logical_operator = optional(string)
            }))
          }))
        })))
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.image_transformations == null || (length(v.deidentify_config.image_transformations.transforms) >= 1)
      )
    ])
    error_message = "Each transforms list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.image_transformations == null || (alltrue([for item in v.deidentify_config.image_transformations.transforms : (item.selected_info_types == null || (length(item.selected_info_types.info_types) >= 1))]))
      )
    ])
    error_message = "Each info_types list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.info_type_transformations == null || (length(v.deidentify_config.info_type_transformations.transformations) >= 1)
      )
    ])
    error_message = "Each transformations list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (length(item.fields) >= 1)]))
      )
    ])
    error_message = "Each fields list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.info_type_transformations == null || (length(item.info_type_transformations.transformations) >= 1))]))
      )
    ])
    error_message = "Each transformations list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.info_type_transformations == null || (alltrue([for item in item.info_type_transformations.transformations : (item.primitive_transformation.bucketing_config == null || (length(item.primitive_transformation.bucketing_config.buckets) >= 1))])))]))
      )
    ])
    error_message = "Each buckets list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.condition == null || (item.condition.expressions == null || (item.condition.expressions.conditions == null || (item.condition.expressions.conditions.conditions == null || alltrue([for item in item.condition.expressions.conditions.conditions : (item.value == null || (item.value.date_value == null || (item.value.date_value.day == null || (item.value.date_value.day >= 0 && item.value.date_value.day <= 31))))])))))]))
      )
    ])
    error_message = "must be between 0 and 31"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.condition == null || (item.condition.expressions == null || (item.condition.expressions.conditions == null || (item.condition.expressions.conditions.conditions == null || alltrue([for item in item.condition.expressions.conditions.conditions : (item.value == null || (item.value.date_value == null || (item.value.date_value.month == null || (item.value.date_value.month >= 0 && item.value.date_value.month <= 12))))])))))]))
      )
    ])
    error_message = "must be between 0 and 12"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.condition == null || (item.condition.expressions == null || (item.condition.expressions.conditions == null || (item.condition.expressions.conditions.conditions == null || alltrue([for item in item.condition.expressions.conditions.conditions : (item.value == null || (item.value.date_value == null || (item.value.date_value.year == null || (item.value.date_value.year >= 1 && item.value.date_value.year <= 9999))))])))))]))
      )
    ])
    error_message = "must be between 1 and 9999"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.condition == null || (item.condition.expressions == null || (item.condition.expressions.conditions == null || (item.condition.expressions.conditions.conditions == null || alltrue([for item in item.condition.expressions.conditions.conditions : (item.value == null || (item.value.time_value == null || (item.value.time_value.hours == null || (item.value.time_value.hours >= 0 && item.value.time_value.hours <= 24))))])))))]))
      )
    ])
    error_message = "must be between 0 and 24"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.condition == null || (item.condition.expressions == null || (item.condition.expressions.conditions == null || (item.condition.expressions.conditions.conditions == null || alltrue([for item in item.condition.expressions.conditions.conditions : (item.value == null || (item.value.time_value == null || (item.value.time_value.minutes == null || (item.value.time_value.minutes >= 0 && item.value.time_value.minutes <= 59))))])))))]))
      )
    ])
    error_message = "must be between 0 and 59"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.condition == null || (item.condition.expressions == null || (item.condition.expressions.conditions == null || (item.condition.expressions.conditions.conditions == null || alltrue([for item in item.condition.expressions.conditions.conditions : (item.value == null || (item.value.time_value == null || (item.value.time_value.nanos == null || (item.value.time_value.nanos >= 0 && item.value.time_value.nanos <= 999999999))))])))))]))
      )
    ])
    error_message = "must be between 0 and 999999999"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.condition == null || (item.condition.expressions == null || (item.condition.expressions.conditions == null || (item.condition.expressions.conditions.conditions == null || alltrue([for item in item.condition.expressions.conditions.conditions : (item.value == null || (item.value.time_value == null || (item.value.time_value.seconds == null || (item.value.time_value.seconds >= 0 && item.value.time_value.seconds <= 60))))])))))]))
      )
    ])
    error_message = "must be between 0 and 60"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.info_type_transformations == null || (alltrue([for item in item.info_type_transformations.transformations : (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.date_value == null || (item.primitive_transformation.replace_config.new_value.date_value.day == null || (item.primitive_transformation.replace_config.new_value.date_value.day >= 0 && item.primitive_transformation.replace_config.new_value.date_value.day <= 31))))])))]))
      )
    ])
    error_message = "must be between 0 and 31"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.info_type_transformations == null || (alltrue([for item in item.info_type_transformations.transformations : (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.date_value == null || (item.primitive_transformation.replace_config.new_value.date_value.month == null || (item.primitive_transformation.replace_config.new_value.date_value.month >= 0 && item.primitive_transformation.replace_config.new_value.date_value.month <= 12))))])))]))
      )
    ])
    error_message = "must be between 0 and 12"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.info_type_transformations == null || (alltrue([for item in item.info_type_transformations.transformations : (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.date_value == null || (item.primitive_transformation.replace_config.new_value.date_value.year == null || (item.primitive_transformation.replace_config.new_value.date_value.year >= 1 && item.primitive_transformation.replace_config.new_value.date_value.year <= 9999))))])))]))
      )
    ])
    error_message = "must be between 1 and 9999"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.info_type_transformations == null || (alltrue([for item in item.info_type_transformations.transformations : (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.time_value == null || (item.primitive_transformation.replace_config.new_value.time_value.hours == null || (item.primitive_transformation.replace_config.new_value.time_value.hours >= 0 && item.primitive_transformation.replace_config.new_value.time_value.hours <= 24))))])))]))
      )
    ])
    error_message = "must be between 0 and 24"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.info_type_transformations == null || (alltrue([for item in item.info_type_transformations.transformations : (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.time_value == null || (item.primitive_transformation.replace_config.new_value.time_value.minutes == null || (item.primitive_transformation.replace_config.new_value.time_value.minutes >= 0 && item.primitive_transformation.replace_config.new_value.time_value.minutes <= 59))))])))]))
      )
    ])
    error_message = "must be between 0 and 59"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.info_type_transformations == null || (alltrue([for item in item.info_type_transformations.transformations : (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.time_value == null || (item.primitive_transformation.replace_config.new_value.time_value.nanos == null || (item.primitive_transformation.replace_config.new_value.time_value.nanos >= 0 && item.primitive_transformation.replace_config.new_value.time_value.nanos <= 999999999))))])))]))
      )
    ])
    error_message = "must be between 0 and 999999999"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.info_type_transformations == null || (alltrue([for item in item.info_type_transformations.transformations : (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.time_value == null || (item.primitive_transformation.replace_config.new_value.time_value.seconds == null || (item.primitive_transformation.replace_config.new_value.time_value.seconds >= 0 && item.primitive_transformation.replace_config.new_value.time_value.seconds <= 60))))])))]))
      )
    ])
    error_message = "must be between 0 and 60"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.primitive_transformation == null || (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.date_value == null || (item.primitive_transformation.replace_config.new_value.date_value.day == null || (item.primitive_transformation.replace_config.new_value.date_value.day >= 0 && item.primitive_transformation.replace_config.new_value.date_value.day <= 31)))))]))
      )
    ])
    error_message = "must be between 0 and 31"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.primitive_transformation == null || (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.date_value == null || (item.primitive_transformation.replace_config.new_value.date_value.month == null || (item.primitive_transformation.replace_config.new_value.date_value.month >= 0 && item.primitive_transformation.replace_config.new_value.date_value.month <= 12)))))]))
      )
    ])
    error_message = "must be between 0 and 12"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.primitive_transformation == null || (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.date_value == null || (item.primitive_transformation.replace_config.new_value.date_value.year == null || (item.primitive_transformation.replace_config.new_value.date_value.year >= 1 && item.primitive_transformation.replace_config.new_value.date_value.year <= 9999)))))]))
      )
    ])
    error_message = "must be between 1 and 9999"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.primitive_transformation == null || (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.time_value == null || (item.primitive_transformation.replace_config.new_value.time_value.hours == null || (item.primitive_transformation.replace_config.new_value.time_value.hours >= 0 && item.primitive_transformation.replace_config.new_value.time_value.hours <= 24)))))]))
      )
    ])
    error_message = "must be between 0 and 24"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.primitive_transformation == null || (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.time_value == null || (item.primitive_transformation.replace_config.new_value.time_value.minutes == null || (item.primitive_transformation.replace_config.new_value.time_value.minutes >= 0 && item.primitive_transformation.replace_config.new_value.time_value.minutes <= 59)))))]))
      )
    ])
    error_message = "must be between 0 and 59"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.primitive_transformation == null || (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.time_value == null || (item.primitive_transformation.replace_config.new_value.time_value.nanos == null || (item.primitive_transformation.replace_config.new_value.time_value.nanos >= 0 && item.primitive_transformation.replace_config.new_value.time_value.nanos <= 999999999)))))]))
      )
    ])
    error_message = "must be between 0 and 999999999"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_loss_prevention_deidentify_templates : (
        v.deidentify_config.record_transformations == null || (v.deidentify_config.record_transformations.field_transformations == null || alltrue([for item in v.deidentify_config.record_transformations.field_transformations : (item.primitive_transformation == null || (item.primitive_transformation.replace_config == null || (item.primitive_transformation.replace_config.new_value.time_value == null || (item.primitive_transformation.replace_config.new_value.time_value.seconds == null || (item.primitive_transformation.replace_config.new_value.time_value.seconds >= 0 && item.primitive_transformation.replace_config.new_value.time_value.seconds <= 60)))))]))
      )
    ])
    error_message = "must be between 0 and 60"
  }
  # Note: 41 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

