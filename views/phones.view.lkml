view: phones {
  sql_table_name: sms.phones ;;
  drill_fields: [id]
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: country_iso {
    type: string
    sql: ${TABLE}.country_iso ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: failed_count {
    type: number
    sql: ${TABLE}.failed_count ;;
  }

  dimension: is_logical_deleted {
    type: number
    sql: ${TABLE}.is_logical_deleted ;;
  }

  dimension: is_subscriber {
    type: number
    sql: ${TABLE}.is_subscriber ;;
  }

  dimension: landline {
    type: number
    sql: ${TABLE}.landline ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension_group: processing {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.processing_time ;;
  }

  dimension_group: ts_ms {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ts_ms ;;
  }

  dimension: upsolver_schema_version {
    type: number
    sql: ${TABLE}.upsolver_schema_version ;;
  }

  measure: count {
    type: count
    drill_fields: [id, phone_to_list.count, phones_meta.count]
  }
}
