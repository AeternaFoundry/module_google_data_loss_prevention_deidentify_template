resource "google_data_loss_prevention_deidentify_template" "data_loss_prevention_deidentify_templates" {
  for_each = var.data_loss_prevention_deidentify_templates

  parent          = each.value.parent
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  template_id     = each.value.template_id

  deidentify_config {
    dynamic "image_transformations" {
      for_each = each.value.deidentify_config.image_transformations != null ? [each.value.deidentify_config.image_transformations] : []
      content {
        dynamic "transforms" {
          for_each = image_transformations.value.transforms
          content {
            dynamic "all_info_types" {
              for_each = transforms.value.all_info_types != null ? [transforms.value.all_info_types] : []
              content {
              }
            }
            dynamic "all_text" {
              for_each = transforms.value.all_text != null ? [transforms.value.all_text] : []
              content {
              }
            }
            dynamic "redaction_color" {
              for_each = transforms.value.redaction_color != null ? [transforms.value.redaction_color] : []
              content {
                blue  = redaction_color.value.blue
                green = redaction_color.value.green
                red   = redaction_color.value.red
              }
            }
            dynamic "selected_info_types" {
              for_each = transforms.value.selected_info_types != null ? [transforms.value.selected_info_types] : []
              content {
                dynamic "info_types" {
                  for_each = selected_info_types.value.info_types
                  content {
                    name = info_types.value.name
                    dynamic "sensitivity_score" {
                      for_each = info_types.value.sensitivity_score != null ? [info_types.value.sensitivity_score] : []
                      content {
                        score = sensitivity_score.value.score
                      }
                    }
                    version = info_types.value.version
                  }
                }
              }
            }
          }
        }
      }
    }
    dynamic "info_type_transformations" {
      for_each = each.value.deidentify_config.info_type_transformations != null ? [each.value.deidentify_config.info_type_transformations] : []
      content {
        dynamic "transformations" {
          for_each = info_type_transformations.value.transformations
          content {
            dynamic "info_types" {
              for_each = transformations.value.info_types != null ? transformations.value.info_types : []
              content {
                name = info_types.value.name
                dynamic "sensitivity_score" {
                  for_each = info_types.value.sensitivity_score != null ? [info_types.value.sensitivity_score] : []
                  content {
                    score = sensitivity_score.value.score
                  }
                }
                version = info_types.value.version
              }
            }
            primitive_transformation {
              dynamic "bucketing_config" {
                for_each = transformations.value.primitive_transformation.bucketing_config != null ? [transformations.value.primitive_transformation.bucketing_config] : []
                content {
                  dynamic "buckets" {
                    for_each = bucketing_config.value.buckets != null ? bucketing_config.value.buckets : []
                    content {
                      dynamic "max" {
                        for_each = buckets.value.max != null ? [buckets.value.max] : []
                        content {
                          dynamic "date_value" {
                            for_each = max.value.date_value != null ? [max.value.date_value] : []
                            content {
                              day   = date_value.value.day
                              month = date_value.value.month
                              year  = date_value.value.year
                            }
                          }
                          day_of_week_value = max.value.day_of_week_value
                          float_value       = max.value.float_value
                          integer_value     = max.value.integer_value
                          string_value      = max.value.string_value
                          dynamic "time_value" {
                            for_each = max.value.time_value != null ? [max.value.time_value] : []
                            content {
                              hours   = time_value.value.hours
                              minutes = time_value.value.minutes
                              nanos   = time_value.value.nanos
                              seconds = time_value.value.seconds
                            }
                          }
                          timestamp_value = max.value.timestamp_value
                        }
                      }
                      dynamic "min" {
                        for_each = buckets.value.min != null ? [buckets.value.min] : []
                        content {
                          dynamic "date_value" {
                            for_each = min.value.date_value != null ? [min.value.date_value] : []
                            content {
                              day   = date_value.value.day
                              month = date_value.value.month
                              year  = date_value.value.year
                            }
                          }
                          day_of_week_value = min.value.day_of_week_value
                          float_value       = min.value.float_value
                          integer_value     = min.value.integer_value
                          string_value      = min.value.string_value
                          dynamic "time_value" {
                            for_each = min.value.time_value != null ? [min.value.time_value] : []
                            content {
                              hours   = time_value.value.hours
                              minutes = time_value.value.minutes
                              nanos   = time_value.value.nanos
                              seconds = time_value.value.seconds
                            }
                          }
                          timestamp_value = min.value.timestamp_value
                        }
                      }
                      replacement_value {
                        dynamic "date_value" {
                          for_each = buckets.value.replacement_value.date_value != null ? [buckets.value.replacement_value.date_value] : []
                          content {
                            day   = date_value.value.day
                            month = date_value.value.month
                            year  = date_value.value.year
                          }
                        }
                        day_of_week_value = buckets.value.replacement_value.day_of_week_value
                        float_value       = buckets.value.replacement_value.float_value
                        integer_value     = buckets.value.replacement_value.integer_value
                        string_value      = buckets.value.replacement_value.string_value
                        dynamic "time_value" {
                          for_each = buckets.value.replacement_value.time_value != null ? [buckets.value.replacement_value.time_value] : []
                          content {
                            hours   = time_value.value.hours
                            minutes = time_value.value.minutes
                            nanos   = time_value.value.nanos
                            seconds = time_value.value.seconds
                          }
                        }
                        timestamp_value = buckets.value.replacement_value.timestamp_value
                      }
                    }
                  }
                }
              }
              dynamic "character_mask_config" {
                for_each = transformations.value.primitive_transformation.character_mask_config != null ? [transformations.value.primitive_transformation.character_mask_config] : []
                content {
                  dynamic "characters_to_ignore" {
                    for_each = character_mask_config.value.characters_to_ignore != null ? character_mask_config.value.characters_to_ignore : []
                    content {
                      characters_to_skip          = characters_to_ignore.value.characters_to_skip
                      common_characters_to_ignore = characters_to_ignore.value.common_characters_to_ignore
                    }
                  }
                  masking_character = character_mask_config.value.masking_character
                  number_to_mask    = character_mask_config.value.number_to_mask
                  reverse_order     = character_mask_config.value.reverse_order
                }
              }
              dynamic "crypto_deterministic_config" {
                for_each = transformations.value.primitive_transformation.crypto_deterministic_config != null ? [transformations.value.primitive_transformation.crypto_deterministic_config] : []
                content {
                  dynamic "context" {
                    for_each = crypto_deterministic_config.value.context != null ? [crypto_deterministic_config.value.context] : []
                    content {
                      name = context.value.name
                    }
                  }
                  dynamic "crypto_key" {
                    for_each = crypto_deterministic_config.value.crypto_key != null ? [crypto_deterministic_config.value.crypto_key] : []
                    content {
                      dynamic "kms_wrapped" {
                        for_each = crypto_key.value.kms_wrapped != null ? [crypto_key.value.kms_wrapped] : []
                        content {
                          crypto_key_name = kms_wrapped.value.crypto_key_name
                          wrapped_key     = kms_wrapped.value.wrapped_key
                        }
                      }
                      dynamic "transient" {
                        for_each = crypto_key.value.transient != null ? [crypto_key.value.transient] : []
                        content {
                          name = transient.value.name
                        }
                      }
                      dynamic "unwrapped" {
                        for_each = crypto_key.value.unwrapped != null ? [crypto_key.value.unwrapped] : []
                        content {
                          key = unwrapped.value.key
                        }
                      }
                    }
                  }
                  dynamic "surrogate_info_type" {
                    for_each = crypto_deterministic_config.value.surrogate_info_type != null ? [crypto_deterministic_config.value.surrogate_info_type] : []
                    content {
                      name = surrogate_info_type.value.name
                      dynamic "sensitivity_score" {
                        for_each = surrogate_info_type.value.sensitivity_score != null ? [surrogate_info_type.value.sensitivity_score] : []
                        content {
                          score = sensitivity_score.value.score
                        }
                      }
                      version = surrogate_info_type.value.version
                    }
                  }
                }
              }
              dynamic "crypto_hash_config" {
                for_each = transformations.value.primitive_transformation.crypto_hash_config != null ? [transformations.value.primitive_transformation.crypto_hash_config] : []
                content {
                  dynamic "crypto_key" {
                    for_each = crypto_hash_config.value.crypto_key != null ? [crypto_hash_config.value.crypto_key] : []
                    content {
                      dynamic "kms_wrapped" {
                        for_each = crypto_key.value.kms_wrapped != null ? [crypto_key.value.kms_wrapped] : []
                        content {
                          crypto_key_name = kms_wrapped.value.crypto_key_name
                          wrapped_key     = kms_wrapped.value.wrapped_key
                        }
                      }
                      dynamic "transient" {
                        for_each = crypto_key.value.transient != null ? [crypto_key.value.transient] : []
                        content {
                          name = transient.value.name
                        }
                      }
                      dynamic "unwrapped" {
                        for_each = crypto_key.value.unwrapped != null ? [crypto_key.value.unwrapped] : []
                        content {
                          key = unwrapped.value.key
                        }
                      }
                    }
                  }
                }
              }
              dynamic "crypto_replace_ffx_fpe_config" {
                for_each = transformations.value.primitive_transformation.crypto_replace_ffx_fpe_config != null ? [transformations.value.primitive_transformation.crypto_replace_ffx_fpe_config] : []
                content {
                  common_alphabet = crypto_replace_ffx_fpe_config.value.common_alphabet
                  dynamic "context" {
                    for_each = crypto_replace_ffx_fpe_config.value.context != null ? [crypto_replace_ffx_fpe_config.value.context] : []
                    content {
                      name = context.value.name
                    }
                  }
                  dynamic "crypto_key" {
                    for_each = crypto_replace_ffx_fpe_config.value.crypto_key != null ? [crypto_replace_ffx_fpe_config.value.crypto_key] : []
                    content {
                      dynamic "kms_wrapped" {
                        for_each = crypto_key.value.kms_wrapped != null ? [crypto_key.value.kms_wrapped] : []
                        content {
                          crypto_key_name = kms_wrapped.value.crypto_key_name
                          wrapped_key     = kms_wrapped.value.wrapped_key
                        }
                      }
                      dynamic "transient" {
                        for_each = crypto_key.value.transient != null ? [crypto_key.value.transient] : []
                        content {
                          name = transient.value.name
                        }
                      }
                      dynamic "unwrapped" {
                        for_each = crypto_key.value.unwrapped != null ? [crypto_key.value.unwrapped] : []
                        content {
                          key = unwrapped.value.key
                        }
                      }
                    }
                  }
                  custom_alphabet = crypto_replace_ffx_fpe_config.value.custom_alphabet
                  radix           = crypto_replace_ffx_fpe_config.value.radix
                  dynamic "surrogate_info_type" {
                    for_each = crypto_replace_ffx_fpe_config.value.surrogate_info_type != null ? [crypto_replace_ffx_fpe_config.value.surrogate_info_type] : []
                    content {
                      name = surrogate_info_type.value.name
                      dynamic "sensitivity_score" {
                        for_each = surrogate_info_type.value.sensitivity_score != null ? [surrogate_info_type.value.sensitivity_score] : []
                        content {
                          score = sensitivity_score.value.score
                        }
                      }
                      version = surrogate_info_type.value.version
                    }
                  }
                }
              }
              dynamic "date_shift_config" {
                for_each = transformations.value.primitive_transformation.date_shift_config != null ? [transformations.value.primitive_transformation.date_shift_config] : []
                content {
                  dynamic "context" {
                    for_each = date_shift_config.value.context != null ? [date_shift_config.value.context] : []
                    content {
                      name = context.value.name
                    }
                  }
                  dynamic "crypto_key" {
                    for_each = date_shift_config.value.crypto_key != null ? [date_shift_config.value.crypto_key] : []
                    content {
                      dynamic "kms_wrapped" {
                        for_each = crypto_key.value.kms_wrapped != null ? [crypto_key.value.kms_wrapped] : []
                        content {
                          crypto_key_name = kms_wrapped.value.crypto_key_name
                          wrapped_key     = kms_wrapped.value.wrapped_key
                        }
                      }
                      dynamic "transient" {
                        for_each = crypto_key.value.transient != null ? [crypto_key.value.transient] : []
                        content {
                          name = transient.value.name
                        }
                      }
                      dynamic "unwrapped" {
                        for_each = crypto_key.value.unwrapped != null ? [crypto_key.value.unwrapped] : []
                        content {
                          key = unwrapped.value.key
                        }
                      }
                    }
                  }
                  lower_bound_days = date_shift_config.value.lower_bound_days
                  upper_bound_days = date_shift_config.value.upper_bound_days
                }
              }
              dynamic "fixed_size_bucketing_config" {
                for_each = transformations.value.primitive_transformation.fixed_size_bucketing_config != null ? [transformations.value.primitive_transformation.fixed_size_bucketing_config] : []
                content {
                  bucket_size = fixed_size_bucketing_config.value.bucket_size
                  lower_bound {
                    float_value   = fixed_size_bucketing_config.value.lower_bound.float_value
                    integer_value = fixed_size_bucketing_config.value.lower_bound.integer_value
                  }
                  upper_bound {
                    float_value   = fixed_size_bucketing_config.value.upper_bound.float_value
                    integer_value = fixed_size_bucketing_config.value.upper_bound.integer_value
                  }
                }
              }
              dynamic "redact_config" {
                for_each = transformations.value.primitive_transformation.redact_config != null ? [transformations.value.primitive_transformation.redact_config] : []
                content {
                }
              }
              dynamic "replace_config" {
                for_each = transformations.value.primitive_transformation.replace_config != null ? [transformations.value.primitive_transformation.replace_config] : []
                content {
                  new_value {
                    boolean_value = replace_config.value.new_value.boolean_value
                    dynamic "date_value" {
                      for_each = replace_config.value.new_value.date_value != null ? [replace_config.value.new_value.date_value] : []
                      content {
                        day   = date_value.value.day
                        month = date_value.value.month
                        year  = date_value.value.year
                      }
                    }
                    day_of_week_value = replace_config.value.new_value.day_of_week_value
                    float_value       = replace_config.value.new_value.float_value
                    integer_value     = replace_config.value.new_value.integer_value
                    string_value      = replace_config.value.new_value.string_value
                    dynamic "time_value" {
                      for_each = replace_config.value.new_value.time_value != null ? [replace_config.value.new_value.time_value] : []
                      content {
                        hours   = time_value.value.hours
                        minutes = time_value.value.minutes
                        nanos   = time_value.value.nanos
                        seconds = time_value.value.seconds
                      }
                    }
                    timestamp_value = replace_config.value.new_value.timestamp_value
                  }
                }
              }
              dynamic "replace_dictionary_config" {
                for_each = transformations.value.primitive_transformation.replace_dictionary_config != null ? [transformations.value.primitive_transformation.replace_dictionary_config] : []
                content {
                  word_list {
                    words = replace_dictionary_config.value.word_list.words
                  }
                }
              }
              replace_with_info_type_config = transformations.value.primitive_transformation.replace_with_info_type_config
              dynamic "time_part_config" {
                for_each = transformations.value.primitive_transformation.time_part_config != null ? [transformations.value.primitive_transformation.time_part_config] : []
                content {
                  part_to_extract = time_part_config.value.part_to_extract
                }
              }
            }
          }
        }
      }
    }
    dynamic "record_transformations" {
      for_each = each.value.deidentify_config.record_transformations != null ? [each.value.deidentify_config.record_transformations] : []
      content {
        dynamic "field_transformations" {
          for_each = record_transformations.value.field_transformations != null ? record_transformations.value.field_transformations : []
          content {
            dynamic "condition" {
              for_each = field_transformations.value.condition != null ? [field_transformations.value.condition] : []
              content {
                dynamic "expressions" {
                  for_each = condition.value.expressions != null ? [condition.value.expressions] : []
                  content {
                    dynamic "conditions" {
                      for_each = expressions.value.conditions != null ? [expressions.value.conditions] : []
                      content {
                        dynamic "conditions" {
                          for_each = conditions.value.conditions != null ? conditions.value.conditions : []
                          content {
                            field {
                              name = conditions.value.field.name
                            }
                            operator = conditions.value.operator
                            dynamic "value" {
                              for_each = conditions.value.value != null ? [conditions.value.value] : []
                              content {
                                boolean_value = value.value.boolean_value
                                dynamic "date_value" {
                                  for_each = value.value.date_value != null ? [value.value.date_value] : []
                                  content {
                                    day   = date_value.value.day
                                    month = date_value.value.month
                                    year  = date_value.value.year
                                  }
                                }
                                day_of_week_value = value.value.day_of_week_value
                                float_value       = value.value.float_value
                                integer_value     = value.value.integer_value
                                string_value      = value.value.string_value
                                dynamic "time_value" {
                                  for_each = value.value.time_value != null ? [value.value.time_value] : []
                                  content {
                                    hours   = time_value.value.hours
                                    minutes = time_value.value.minutes
                                    nanos   = time_value.value.nanos
                                    seconds = time_value.value.seconds
                                  }
                                }
                                timestamp_value = value.value.timestamp_value
                              }
                            }
                          }
                        }
                      }
                    }
                    logical_operator = expressions.value.logical_operator
                  }
                }
              }
            }
            dynamic "fields" {
              for_each = field_transformations.value.fields
              content {
                name = fields.value.name
              }
            }
            dynamic "info_type_transformations" {
              for_each = field_transformations.value.info_type_transformations != null ? [field_transformations.value.info_type_transformations] : []
              content {
                dynamic "transformations" {
                  for_each = info_type_transformations.value.transformations
                  content {
                    dynamic "info_types" {
                      for_each = transformations.value.info_types != null ? transformations.value.info_types : []
                      content {
                        name = info_types.value.name
                        dynamic "sensitivity_score" {
                          for_each = info_types.value.sensitivity_score != null ? [info_types.value.sensitivity_score] : []
                          content {
                            score = sensitivity_score.value.score
                          }
                        }
                        version = info_types.value.version
                      }
                    }
                    primitive_transformation {
                      dynamic "bucketing_config" {
                        for_each = transformations.value.primitive_transformation.bucketing_config != null ? [transformations.value.primitive_transformation.bucketing_config] : []
                        content {
                          dynamic "buckets" {
                            for_each = bucketing_config.value.buckets
                            content {
                              dynamic "max" {
                                for_each = buckets.value.max != null ? [buckets.value.max] : []
                                content {
                                  dynamic "date_value" {
                                    for_each = max.value.date_value != null ? [max.value.date_value] : []
                                    content {
                                      day   = date_value.value.day
                                      month = date_value.value.month
                                      year  = date_value.value.year
                                    }
                                  }
                                  day_of_week_value = max.value.day_of_week_value
                                  float_value       = max.value.float_value
                                  integer_value     = max.value.integer_value
                                  string_value      = max.value.string_value
                                  dynamic "time_value" {
                                    for_each = max.value.time_value != null ? [max.value.time_value] : []
                                    content {
                                      hours   = time_value.value.hours
                                      minutes = time_value.value.minutes
                                      nanos   = time_value.value.nanos
                                      seconds = time_value.value.seconds
                                    }
                                  }
                                  timestamp_value = max.value.timestamp_value
                                }
                              }
                              dynamic "min" {
                                for_each = buckets.value.min != null ? [buckets.value.min] : []
                                content {
                                  dynamic "date_value" {
                                    for_each = min.value.date_value != null ? [min.value.date_value] : []
                                    content {
                                      day   = date_value.value.day
                                      month = date_value.value.month
                                      year  = date_value.value.year
                                    }
                                  }
                                  day_of_week_value = min.value.day_of_week_value
                                  float_value       = min.value.float_value
                                  integer_value     = min.value.integer_value
                                  string_value      = min.value.string_value
                                  dynamic "time_value" {
                                    for_each = min.value.time_value != null ? [min.value.time_value] : []
                                    content {
                                      hours   = time_value.value.hours
                                      minutes = time_value.value.minutes
                                      nanos   = time_value.value.nanos
                                      seconds = time_value.value.seconds
                                    }
                                  }
                                  timestamp_value = min.value.timestamp_value
                                }
                              }
                              replacement_value {
                                dynamic "date_value" {
                                  for_each = buckets.value.replacement_value.date_value != null ? [buckets.value.replacement_value.date_value] : []
                                  content {
                                    day   = date_value.value.day
                                    month = date_value.value.month
                                    year  = date_value.value.year
                                  }
                                }
                                day_of_week_value = buckets.value.replacement_value.day_of_week_value
                                float_value       = buckets.value.replacement_value.float_value
                                integer_value     = buckets.value.replacement_value.integer_value
                                string_value      = buckets.value.replacement_value.string_value
                                dynamic "time_value" {
                                  for_each = buckets.value.replacement_value.time_value != null ? [buckets.value.replacement_value.time_value] : []
                                  content {
                                    hours   = time_value.value.hours
                                    minutes = time_value.value.minutes
                                    nanos   = time_value.value.nanos
                                    seconds = time_value.value.seconds
                                  }
                                }
                                timestamp_value = buckets.value.replacement_value.timestamp_value
                              }
                            }
                          }
                        }
                      }
                      dynamic "character_mask_config" {
                        for_each = transformations.value.primitive_transformation.character_mask_config != null ? [transformations.value.primitive_transformation.character_mask_config] : []
                        content {
                          dynamic "characters_to_ignore" {
                            for_each = character_mask_config.value.characters_to_ignore != null ? character_mask_config.value.characters_to_ignore : []
                            content {
                              characters_to_skip          = characters_to_ignore.value.characters_to_skip
                              common_characters_to_ignore = characters_to_ignore.value.common_characters_to_ignore
                            }
                          }
                          masking_character = character_mask_config.value.masking_character
                          number_to_mask    = character_mask_config.value.number_to_mask
                          reverse_order     = character_mask_config.value.reverse_order
                        }
                      }
                      dynamic "crypto_deterministic_config" {
                        for_each = transformations.value.primitive_transformation.crypto_deterministic_config != null ? [transformations.value.primitive_transformation.crypto_deterministic_config] : []
                        content {
                          dynamic "context" {
                            for_each = crypto_deterministic_config.value.context != null ? [crypto_deterministic_config.value.context] : []
                            content {
                              name = context.value.name
                            }
                          }
                          crypto_key {
                            dynamic "kms_wrapped" {
                              for_each = crypto_deterministic_config.value.crypto_key.kms_wrapped != null ? [crypto_deterministic_config.value.crypto_key.kms_wrapped] : []
                              content {
                                crypto_key_name = kms_wrapped.value.crypto_key_name
                                wrapped_key     = kms_wrapped.value.wrapped_key
                              }
                            }
                            dynamic "transient" {
                              for_each = crypto_deterministic_config.value.crypto_key.transient != null ? [crypto_deterministic_config.value.crypto_key.transient] : []
                              content {
                                name = transient.value.name
                              }
                            }
                            dynamic "unwrapped" {
                              for_each = crypto_deterministic_config.value.crypto_key.unwrapped != null ? [crypto_deterministic_config.value.crypto_key.unwrapped] : []
                              content {
                                key = unwrapped.value.key
                              }
                            }
                          }
                          surrogate_info_type {
                            name = crypto_deterministic_config.value.surrogate_info_type.name
                            dynamic "sensitivity_score" {
                              for_each = crypto_deterministic_config.value.surrogate_info_type.sensitivity_score != null ? [crypto_deterministic_config.value.surrogate_info_type.sensitivity_score] : []
                              content {
                                score = sensitivity_score.value.score
                              }
                            }
                            version = crypto_deterministic_config.value.surrogate_info_type.version
                          }
                        }
                      }
                      dynamic "crypto_hash_config" {
                        for_each = transformations.value.primitive_transformation.crypto_hash_config != null ? [transformations.value.primitive_transformation.crypto_hash_config] : []
                        content {
                          crypto_key {
                            dynamic "kms_wrapped" {
                              for_each = crypto_hash_config.value.crypto_key.kms_wrapped != null ? [crypto_hash_config.value.crypto_key.kms_wrapped] : []
                              content {
                                crypto_key_name = kms_wrapped.value.crypto_key_name
                                wrapped_key     = kms_wrapped.value.wrapped_key
                              }
                            }
                            dynamic "transient" {
                              for_each = crypto_hash_config.value.crypto_key.transient != null ? [crypto_hash_config.value.crypto_key.transient] : []
                              content {
                                name = transient.value.name
                              }
                            }
                            dynamic "unwrapped" {
                              for_each = crypto_hash_config.value.crypto_key.unwrapped != null ? [crypto_hash_config.value.crypto_key.unwrapped] : []
                              content {
                                key = unwrapped.value.key
                              }
                            }
                          }
                        }
                      }
                      dynamic "crypto_replace_ffx_fpe_config" {
                        for_each = transformations.value.primitive_transformation.crypto_replace_ffx_fpe_config != null ? [transformations.value.primitive_transformation.crypto_replace_ffx_fpe_config] : []
                        content {
                          common_alphabet = crypto_replace_ffx_fpe_config.value.common_alphabet
                          dynamic "context" {
                            for_each = crypto_replace_ffx_fpe_config.value.context != null ? [crypto_replace_ffx_fpe_config.value.context] : []
                            content {
                              name = context.value.name
                            }
                          }
                          crypto_key {
                            dynamic "kms_wrapped" {
                              for_each = crypto_replace_ffx_fpe_config.value.crypto_key.kms_wrapped != null ? [crypto_replace_ffx_fpe_config.value.crypto_key.kms_wrapped] : []
                              content {
                                crypto_key_name = kms_wrapped.value.crypto_key_name
                                wrapped_key     = kms_wrapped.value.wrapped_key
                              }
                            }
                            dynamic "transient" {
                              for_each = crypto_replace_ffx_fpe_config.value.crypto_key.transient != null ? [crypto_replace_ffx_fpe_config.value.crypto_key.transient] : []
                              content {
                                name = transient.value.name
                              }
                            }
                            dynamic "unwrapped" {
                              for_each = crypto_replace_ffx_fpe_config.value.crypto_key.unwrapped != null ? [crypto_replace_ffx_fpe_config.value.crypto_key.unwrapped] : []
                              content {
                                key = unwrapped.value.key
                              }
                            }
                          }
                          custom_alphabet = crypto_replace_ffx_fpe_config.value.custom_alphabet
                          radix           = crypto_replace_ffx_fpe_config.value.radix
                          dynamic "surrogate_info_type" {
                            for_each = crypto_replace_ffx_fpe_config.value.surrogate_info_type != null ? [crypto_replace_ffx_fpe_config.value.surrogate_info_type] : []
                            content {
                              name = surrogate_info_type.value.name
                              dynamic "sensitivity_score" {
                                for_each = surrogate_info_type.value.sensitivity_score != null ? [surrogate_info_type.value.sensitivity_score] : []
                                content {
                                  score = sensitivity_score.value.score
                                }
                              }
                              version = surrogate_info_type.value.version
                            }
                          }
                        }
                      }
                      dynamic "date_shift_config" {
                        for_each = transformations.value.primitive_transformation.date_shift_config != null ? [transformations.value.primitive_transformation.date_shift_config] : []
                        content {
                          dynamic "context" {
                            for_each = date_shift_config.value.context != null ? [date_shift_config.value.context] : []
                            content {
                              name = context.value.name
                            }
                          }
                          dynamic "crypto_key" {
                            for_each = date_shift_config.value.crypto_key != null ? [date_shift_config.value.crypto_key] : []
                            content {
                              dynamic "kms_wrapped" {
                                for_each = crypto_key.value.kms_wrapped != null ? [crypto_key.value.kms_wrapped] : []
                                content {
                                  crypto_key_name = kms_wrapped.value.crypto_key_name
                                  wrapped_key     = kms_wrapped.value.wrapped_key
                                }
                              }
                              dynamic "transient" {
                                for_each = crypto_key.value.transient != null ? [crypto_key.value.transient] : []
                                content {
                                  name = transient.value.name
                                }
                              }
                              dynamic "unwrapped" {
                                for_each = crypto_key.value.unwrapped != null ? [crypto_key.value.unwrapped] : []
                                content {
                                  key = unwrapped.value.key
                                }
                              }
                            }
                          }
                          lower_bound_days = date_shift_config.value.lower_bound_days
                          upper_bound_days = date_shift_config.value.upper_bound_days
                        }
                      }
                      dynamic "fixed_size_bucketing_config" {
                        for_each = transformations.value.primitive_transformation.fixed_size_bucketing_config != null ? [transformations.value.primitive_transformation.fixed_size_bucketing_config] : []
                        content {
                          bucket_size = fixed_size_bucketing_config.value.bucket_size
                          lower_bound {
                            float_value   = fixed_size_bucketing_config.value.lower_bound.float_value
                            integer_value = fixed_size_bucketing_config.value.lower_bound.integer_value
                          }
                          upper_bound {
                            float_value   = fixed_size_bucketing_config.value.upper_bound.float_value
                            integer_value = fixed_size_bucketing_config.value.upper_bound.integer_value
                          }
                        }
                      }
                      dynamic "redact_config" {
                        for_each = transformations.value.primitive_transformation.redact_config != null ? [transformations.value.primitive_transformation.redact_config] : []
                        content {
                        }
                      }
                      dynamic "replace_config" {
                        for_each = transformations.value.primitive_transformation.replace_config != null ? [transformations.value.primitive_transformation.replace_config] : []
                        content {
                          new_value {
                            boolean_value = replace_config.value.new_value.boolean_value
                            dynamic "date_value" {
                              for_each = replace_config.value.new_value.date_value != null ? [replace_config.value.new_value.date_value] : []
                              content {
                                day   = date_value.value.day
                                month = date_value.value.month
                                year  = date_value.value.year
                              }
                            }
                            day_of_week_value = replace_config.value.new_value.day_of_week_value
                            float_value       = replace_config.value.new_value.float_value
                            integer_value     = replace_config.value.new_value.integer_value
                            string_value      = replace_config.value.new_value.string_value
                            dynamic "time_value" {
                              for_each = replace_config.value.new_value.time_value != null ? [replace_config.value.new_value.time_value] : []
                              content {
                                hours   = time_value.value.hours
                                minutes = time_value.value.minutes
                                nanos   = time_value.value.nanos
                                seconds = time_value.value.seconds
                              }
                            }
                            timestamp_value = replace_config.value.new_value.timestamp_value
                          }
                        }
                      }
                      dynamic "replace_dictionary_config" {
                        for_each = transformations.value.primitive_transformation.replace_dictionary_config != null ? [transformations.value.primitive_transformation.replace_dictionary_config] : []
                        content {
                          word_list {
                            words = replace_dictionary_config.value.word_list.words
                          }
                        }
                      }
                      dynamic "replace_with_info_type_config" {
                        for_each = transformations.value.primitive_transformation.replace_with_info_type_config != null ? [transformations.value.primitive_transformation.replace_with_info_type_config] : []
                        content {
                        }
                      }
                      dynamic "time_part_config" {
                        for_each = transformations.value.primitive_transformation.time_part_config != null ? [transformations.value.primitive_transformation.time_part_config] : []
                        content {
                          part_to_extract = time_part_config.value.part_to_extract
                        }
                      }
                    }
                  }
                }
              }
            }
            dynamic "primitive_transformation" {
              for_each = field_transformations.value.primitive_transformation != null ? [field_transformations.value.primitive_transformation] : []
              content {
                dynamic "bucketing_config" {
                  for_each = primitive_transformation.value.bucketing_config != null ? [primitive_transformation.value.bucketing_config] : []
                  content {
                    dynamic "buckets" {
                      for_each = bucketing_config.value.buckets != null ? bucketing_config.value.buckets : []
                      content {
                        dynamic "max" {
                          for_each = buckets.value.max != null ? [buckets.value.max] : []
                          content {
                            boolean_value = max.value.boolean_value
                            dynamic "date_value" {
                              for_each = max.value.date_value != null ? [max.value.date_value] : []
                              content {
                                day   = date_value.value.day
                                month = date_value.value.month
                                year  = date_value.value.year
                              }
                            }
                            day_of_week_value = max.value.day_of_week_value
                            float_value       = max.value.float_value
                            integer_value     = max.value.integer_value
                            string_value      = max.value.string_value
                            dynamic "time_value" {
                              for_each = max.value.time_value != null ? [max.value.time_value] : []
                              content {
                                hours   = time_value.value.hours
                                minutes = time_value.value.minutes
                                nanos   = time_value.value.nanos
                                seconds = time_value.value.seconds
                              }
                            }
                            timestamp_value = max.value.timestamp_value
                          }
                        }
                        dynamic "min" {
                          for_each = buckets.value.min != null ? [buckets.value.min] : []
                          content {
                            boolean_value = min.value.boolean_value
                            dynamic "date_value" {
                              for_each = min.value.date_value != null ? [min.value.date_value] : []
                              content {
                                day   = date_value.value.day
                                month = date_value.value.month
                                year  = date_value.value.year
                              }
                            }
                            day_of_week_value = min.value.day_of_week_value
                            float_value       = min.value.float_value
                            integer_value     = min.value.integer_value
                            string_value      = min.value.string_value
                            dynamic "time_value" {
                              for_each = min.value.time_value != null ? [min.value.time_value] : []
                              content {
                                hours   = time_value.value.hours
                                minutes = time_value.value.minutes
                                nanos   = time_value.value.nanos
                                seconds = time_value.value.seconds
                              }
                            }
                            timestamp_value = min.value.timestamp_value
                          }
                        }
                        replacement_value {
                          boolean_value = buckets.value.replacement_value.boolean_value
                          dynamic "date_value" {
                            for_each = buckets.value.replacement_value.date_value != null ? [buckets.value.replacement_value.date_value] : []
                            content {
                              day   = date_value.value.day
                              month = date_value.value.month
                              year  = date_value.value.year
                            }
                          }
                          day_of_week_value = buckets.value.replacement_value.day_of_week_value
                          float_value       = buckets.value.replacement_value.float_value
                          integer_value     = buckets.value.replacement_value.integer_value
                          string_value      = buckets.value.replacement_value.string_value
                          dynamic "time_value" {
                            for_each = buckets.value.replacement_value.time_value != null ? [buckets.value.replacement_value.time_value] : []
                            content {
                              hours   = time_value.value.hours
                              minutes = time_value.value.minutes
                              nanos   = time_value.value.nanos
                              seconds = time_value.value.seconds
                            }
                          }
                          timestamp_value = buckets.value.replacement_value.timestamp_value
                        }
                      }
                    }
                  }
                }
                dynamic "character_mask_config" {
                  for_each = primitive_transformation.value.character_mask_config != null ? [primitive_transformation.value.character_mask_config] : []
                  content {
                    dynamic "characters_to_ignore" {
                      for_each = character_mask_config.value.characters_to_ignore != null ? character_mask_config.value.characters_to_ignore : []
                      content {
                        characters_to_skip          = characters_to_ignore.value.characters_to_skip
                        common_characters_to_ignore = characters_to_ignore.value.common_characters_to_ignore
                      }
                    }
                    masking_character = character_mask_config.value.masking_character
                    number_to_mask    = character_mask_config.value.number_to_mask
                    reverse_order     = character_mask_config.value.reverse_order
                  }
                }
                dynamic "crypto_deterministic_config" {
                  for_each = primitive_transformation.value.crypto_deterministic_config != null ? [primitive_transformation.value.crypto_deterministic_config] : []
                  content {
                    dynamic "context" {
                      for_each = crypto_deterministic_config.value.context != null ? [crypto_deterministic_config.value.context] : []
                      content {
                        name = context.value.name
                      }
                    }
                    dynamic "crypto_key" {
                      for_each = crypto_deterministic_config.value.crypto_key != null ? [crypto_deterministic_config.value.crypto_key] : []
                      content {
                        dynamic "kms_wrapped" {
                          for_each = crypto_key.value.kms_wrapped != null ? [crypto_key.value.kms_wrapped] : []
                          content {
                            crypto_key_name = kms_wrapped.value.crypto_key_name
                            wrapped_key     = kms_wrapped.value.wrapped_key
                          }
                        }
                        dynamic "transient" {
                          for_each = crypto_key.value.transient != null ? [crypto_key.value.transient] : []
                          content {
                            name = transient.value.name
                          }
                        }
                        dynamic "unwrapped" {
                          for_each = crypto_key.value.unwrapped != null ? [crypto_key.value.unwrapped] : []
                          content {
                            key = unwrapped.value.key
                          }
                        }
                      }
                    }
                    dynamic "surrogate_info_type" {
                      for_each = crypto_deterministic_config.value.surrogate_info_type != null ? [crypto_deterministic_config.value.surrogate_info_type] : []
                      content {
                        name = surrogate_info_type.value.name
                        dynamic "sensitivity_score" {
                          for_each = surrogate_info_type.value.sensitivity_score != null ? [surrogate_info_type.value.sensitivity_score] : []
                          content {
                            score = sensitivity_score.value.score
                          }
                        }
                        version = surrogate_info_type.value.version
                      }
                    }
                  }
                }
                dynamic "crypto_hash_config" {
                  for_each = primitive_transformation.value.crypto_hash_config != null ? [primitive_transformation.value.crypto_hash_config] : []
                  content {
                    dynamic "crypto_key" {
                      for_each = crypto_hash_config.value.crypto_key != null ? [crypto_hash_config.value.crypto_key] : []
                      content {
                        dynamic "kms_wrapped" {
                          for_each = crypto_key.value.kms_wrapped != null ? [crypto_key.value.kms_wrapped] : []
                          content {
                            crypto_key_name = kms_wrapped.value.crypto_key_name
                            wrapped_key     = kms_wrapped.value.wrapped_key
                          }
                        }
                        dynamic "transient" {
                          for_each = crypto_key.value.transient != null ? [crypto_key.value.transient] : []
                          content {
                            name = transient.value.name
                          }
                        }
                        dynamic "unwrapped" {
                          for_each = crypto_key.value.unwrapped != null ? [crypto_key.value.unwrapped] : []
                          content {
                            key = unwrapped.value.key
                          }
                        }
                      }
                    }
                  }
                }
                dynamic "crypto_replace_ffx_fpe_config" {
                  for_each = primitive_transformation.value.crypto_replace_ffx_fpe_config != null ? [primitive_transformation.value.crypto_replace_ffx_fpe_config] : []
                  content {
                    common_alphabet = crypto_replace_ffx_fpe_config.value.common_alphabet
                    dynamic "context" {
                      for_each = crypto_replace_ffx_fpe_config.value.context != null ? [crypto_replace_ffx_fpe_config.value.context] : []
                      content {
                        name = context.value.name
                      }
                    }
                    dynamic "crypto_key" {
                      for_each = crypto_replace_ffx_fpe_config.value.crypto_key != null ? [crypto_replace_ffx_fpe_config.value.crypto_key] : []
                      content {
                        dynamic "kms_wrapped" {
                          for_each = crypto_key.value.kms_wrapped != null ? [crypto_key.value.kms_wrapped] : []
                          content {
                            crypto_key_name = kms_wrapped.value.crypto_key_name
                            wrapped_key     = kms_wrapped.value.wrapped_key
                          }
                        }
                        dynamic "transient" {
                          for_each = crypto_key.value.transient != null ? [crypto_key.value.transient] : []
                          content {
                            name = transient.value.name
                          }
                        }
                        dynamic "unwrapped" {
                          for_each = crypto_key.value.unwrapped != null ? [crypto_key.value.unwrapped] : []
                          content {
                            key = unwrapped.value.key
                          }
                        }
                      }
                    }
                    custom_alphabet = crypto_replace_ffx_fpe_config.value.custom_alphabet
                    radix           = crypto_replace_ffx_fpe_config.value.radix
                    dynamic "surrogate_info_type" {
                      for_each = crypto_replace_ffx_fpe_config.value.surrogate_info_type != null ? [crypto_replace_ffx_fpe_config.value.surrogate_info_type] : []
                      content {
                        name = surrogate_info_type.value.name
                        dynamic "sensitivity_score" {
                          for_each = surrogate_info_type.value.sensitivity_score != null ? [surrogate_info_type.value.sensitivity_score] : []
                          content {
                            score = sensitivity_score.value.score
                          }
                        }
                        version = surrogate_info_type.value.version
                      }
                    }
                  }
                }
                dynamic "date_shift_config" {
                  for_each = primitive_transformation.value.date_shift_config != null ? [primitive_transformation.value.date_shift_config] : []
                  content {
                    dynamic "context" {
                      for_each = date_shift_config.value.context != null ? [date_shift_config.value.context] : []
                      content {
                        name = context.value.name
                      }
                    }
                    dynamic "crypto_key" {
                      for_each = date_shift_config.value.crypto_key != null ? [date_shift_config.value.crypto_key] : []
                      content {
                        dynamic "kms_wrapped" {
                          for_each = crypto_key.value.kms_wrapped != null ? [crypto_key.value.kms_wrapped] : []
                          content {
                            crypto_key_name = kms_wrapped.value.crypto_key_name
                            wrapped_key     = kms_wrapped.value.wrapped_key
                          }
                        }
                        dynamic "transient" {
                          for_each = crypto_key.value.transient != null ? [crypto_key.value.transient] : []
                          content {
                            name = transient.value.name
                          }
                        }
                        dynamic "unwrapped" {
                          for_each = crypto_key.value.unwrapped != null ? [crypto_key.value.unwrapped] : []
                          content {
                            key = unwrapped.value.key
                          }
                        }
                      }
                    }
                    lower_bound_days = date_shift_config.value.lower_bound_days
                    upper_bound_days = date_shift_config.value.upper_bound_days
                  }
                }
                dynamic "fixed_size_bucketing_config" {
                  for_each = primitive_transformation.value.fixed_size_bucketing_config != null ? [primitive_transformation.value.fixed_size_bucketing_config] : []
                  content {
                    bucket_size = fixed_size_bucketing_config.value.bucket_size
                    lower_bound {
                      boolean_value = fixed_size_bucketing_config.value.lower_bound.boolean_value
                      dynamic "date_value" {
                        for_each = fixed_size_bucketing_config.value.lower_bound.date_value != null ? [fixed_size_bucketing_config.value.lower_bound.date_value] : []
                        content {
                          day   = date_value.value.day
                          month = date_value.value.month
                          year  = date_value.value.year
                        }
                      }
                      day_of_week_value = fixed_size_bucketing_config.value.lower_bound.day_of_week_value
                      float_value       = fixed_size_bucketing_config.value.lower_bound.float_value
                      integer_value     = fixed_size_bucketing_config.value.lower_bound.integer_value
                      string_value      = fixed_size_bucketing_config.value.lower_bound.string_value
                      dynamic "time_value" {
                        for_each = fixed_size_bucketing_config.value.lower_bound.time_value != null ? [fixed_size_bucketing_config.value.lower_bound.time_value] : []
                        content {
                          hours   = time_value.value.hours
                          minutes = time_value.value.minutes
                          nanos   = time_value.value.nanos
                          seconds = time_value.value.seconds
                        }
                      }
                      timestamp_value = fixed_size_bucketing_config.value.lower_bound.timestamp_value
                    }
                    upper_bound {
                      boolean_value = fixed_size_bucketing_config.value.upper_bound.boolean_value
                      dynamic "date_value" {
                        for_each = fixed_size_bucketing_config.value.upper_bound.date_value != null ? [fixed_size_bucketing_config.value.upper_bound.date_value] : []
                        content {
                          day   = date_value.value.day
                          month = date_value.value.month
                          year  = date_value.value.year
                        }
                      }
                      day_of_week_value = fixed_size_bucketing_config.value.upper_bound.day_of_week_value
                      float_value       = fixed_size_bucketing_config.value.upper_bound.float_value
                      integer_value     = fixed_size_bucketing_config.value.upper_bound.integer_value
                      string_value      = fixed_size_bucketing_config.value.upper_bound.string_value
                      dynamic "time_value" {
                        for_each = fixed_size_bucketing_config.value.upper_bound.time_value != null ? [fixed_size_bucketing_config.value.upper_bound.time_value] : []
                        content {
                          hours   = time_value.value.hours
                          minutes = time_value.value.minutes
                          nanos   = time_value.value.nanos
                          seconds = time_value.value.seconds
                        }
                      }
                      timestamp_value = fixed_size_bucketing_config.value.upper_bound.timestamp_value
                    }
                  }
                }
                dynamic "redact_config" {
                  for_each = primitive_transformation.value.redact_config != null ? [primitive_transformation.value.redact_config] : []
                  content {
                  }
                }
                dynamic "replace_config" {
                  for_each = primitive_transformation.value.replace_config != null ? [primitive_transformation.value.replace_config] : []
                  content {
                    new_value {
                      boolean_value = replace_config.value.new_value.boolean_value
                      dynamic "date_value" {
                        for_each = replace_config.value.new_value.date_value != null ? [replace_config.value.new_value.date_value] : []
                        content {
                          day   = date_value.value.day
                          month = date_value.value.month
                          year  = date_value.value.year
                        }
                      }
                      day_of_week_value = replace_config.value.new_value.day_of_week_value
                      float_value       = replace_config.value.new_value.float_value
                      integer_value     = replace_config.value.new_value.integer_value
                      string_value      = replace_config.value.new_value.string_value
                      dynamic "time_value" {
                        for_each = replace_config.value.new_value.time_value != null ? [replace_config.value.new_value.time_value] : []
                        content {
                          hours   = time_value.value.hours
                          minutes = time_value.value.minutes
                          nanos   = time_value.value.nanos
                          seconds = time_value.value.seconds
                        }
                      }
                      timestamp_value = replace_config.value.new_value.timestamp_value
                    }
                  }
                }
                dynamic "replace_dictionary_config" {
                  for_each = primitive_transformation.value.replace_dictionary_config != null ? [primitive_transformation.value.replace_dictionary_config] : []
                  content {
                    dynamic "word_list" {
                      for_each = replace_dictionary_config.value.word_list != null ? [replace_dictionary_config.value.word_list] : []
                      content {
                        words = word_list.value.words
                      }
                    }
                  }
                }
                dynamic "time_part_config" {
                  for_each = primitive_transformation.value.time_part_config != null ? [primitive_transformation.value.time_part_config] : []
                  content {
                    part_to_extract = time_part_config.value.part_to_extract
                  }
                }
              }
            }
          }
        }
        dynamic "record_suppressions" {
          for_each = record_transformations.value.record_suppressions != null ? record_transformations.value.record_suppressions : []
          content {
            dynamic "condition" {
              for_each = record_suppressions.value.condition != null ? [record_suppressions.value.condition] : []
              content {
                dynamic "expressions" {
                  for_each = condition.value.expressions != null ? [condition.value.expressions] : []
                  content {
                    dynamic "conditions" {
                      for_each = expressions.value.conditions != null ? [expressions.value.conditions] : []
                      content {
                        dynamic "conditions" {
                          for_each = conditions.value.conditions != null ? conditions.value.conditions : []
                          content {
                            field {
                              name = conditions.value.field.name
                            }
                            operator = conditions.value.operator
                            dynamic "value" {
                              for_each = conditions.value.value != null ? [conditions.value.value] : []
                              content {
                                boolean_value = value.value.boolean_value
                                dynamic "date_value" {
                                  for_each = value.value.date_value != null ? [value.value.date_value] : []
                                  content {
                                    day   = date_value.value.day
                                    month = date_value.value.month
                                    year  = date_value.value.year
                                  }
                                }
                                day_of_week_value = value.value.day_of_week_value
                                float_value       = value.value.float_value
                                integer_value     = value.value.integer_value
                                string_value      = value.value.string_value
                                dynamic "time_value" {
                                  for_each = value.value.time_value != null ? [value.value.time_value] : []
                                  content {
                                    hours   = time_value.value.hours
                                    minutes = time_value.value.minutes
                                    nanos   = time_value.value.nanos
                                    seconds = time_value.value.seconds
                                  }
                                }
                                timestamp_value = value.value.timestamp_value
                              }
                            }
                          }
                        }
                      }
                    }
                    logical_operator = expressions.value.logical_operator
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

