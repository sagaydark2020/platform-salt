{
  "name": "default",
  "description": "default quick links configuration",
  "configuration": {
    "protocol":
    {
      "type":"HTTP_ONLY"
    },

    "links": [
      {
        "name": "spark2_history_server_ui",
        "label": "Spark2 History Server UI",
        "component_name": "SPARK2_JOBHISTORYSERVER",
        "requires_user_name": "false",
        "url": "{{ service_proxy_url }}",
        "port":{
          "http_property": "spark.history.ui.port",
          "http_default_port": "18081",
          "https_property": "spark.history.ui.port",
          "https_default_port": "18081",
          "regex": "^(\\d+)$",
          "site": "spark2-defaults"
        }
      }
    ]
  }
}