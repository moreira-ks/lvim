return {
  s("sd", {
    t "spring:",
    t { "", "  datasource:" },
    t { "", "    url: jdbc:" }, i(1),
    t { "", "    username: " }, i(2),
    t { "", "    password: " }, i(3)
  }),
  s("trig", c(1, {
    t("Ugh boring, a text node"),
    i(nil, "At least I can edit something now..."),
    f(function(args) return "Still only counts as text!!" end, {})
  }))
}
