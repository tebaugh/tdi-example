name "developer"
description "For Developer machines"
run_list "recipe[git]","recipe[chruby::system]"

default_attributes(
    "chruby" => {
      "rubies" => {
        "1.9.3-p392" => false,
        "2.1.1" => true
      },
      "default" => "2.1.1"
    }
)


