package = "kong-plugin-jwt-claims-headers"
version = "1.0-2"
source = {
  url = "https://github.com/Trade-Arcade-Inc/infra-kong-plugin-jwt-claims-headers",
  tag = "master"
}
description = {
  summary = "A Kong plugin that will expose JWT claims as request headers",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwt-claims-headers.handler"] = "handler.lua",
    ["kong.plugins.jwt-claims-headers.schema"]  = "schema.lua"
  }
}
