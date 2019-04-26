Plug 'tpope/vim-rails'

let g:rails_projections = {
      \  "app/controllers/*_controller.rb": {
      \    "type": "controller",
      \    "test": [
      \      "spec/requests/{}_spec.rb",
      \      "spec/controllers/{}_controller_spec.rb",
      \      "test/controllers/{}_controller_test.rb"
      \    ],
      \    "alternate": [
      \      "spec/requests/{}_spec.rb",
      \      "spec/controllers/{}_controller_spec.rb",
      \      "test/controllers/{}_controller_test.rb"
      \    ],
      \  },
      \  "app/decorators/*_decorator.rb": {
      \    "type": "decorator",
      \    "test": [
      \      "spec/decorators/{}_decorator_spec.rb",
      \      "test/decorators/{}_decorator_test.rb"
      \    ],
      \    "alternate": [
      \      "spec/decorators/{}_decorator_spec.rb",
      \      "test/decorators/{}_decorator_test.rb"
      \    ],
      \    "template": [
      \      "class {camelcase|capitalize|colons}Decorator < ApplicationDecorator",
      \      "end"
      \    ],
      \  },
      \  "app/helpers/*_helper.rb": {
      \    "type": "helper",
      \    "test": [
      \      "spec/helpers/{}_helper_spec.rb",
      \      "test/helpers/{}_helper_test.rb"
      \    ],
      \    "alternate": [
      \      "spec/helpers/{}_helper_spec.rb",
      \      "test/helpers/{}_helper_test.rb"
      \    ],
      \  },
      \  "app/jobs/*_job.rb": {
      \    "type": "job",
      \    "test": [
      \      "spec/jobs/{}_job_spec.rb",
      \      "test/jobs/{}_job_test.rb"
      \    ],
      \    "alternate": [
      \      "spec/jobs/{}_job_spec.rb",
      \      "test/jobs/{}_job_test.rb"
      \    ],
      \  },
      \ "app/models/*_model.rb": {
      \    "type": "model",
      \    "test": [
      \      "spec/models/{}_spec.rb",
      \      "test/models/{}_test.rb"
      \    ],
      \    "alternate": [
      \      "spec/models/{}_spec.rb",
      \      "test/models/{}_test.rb"
      \    ],
      \  },
      \  "app/policies/*_policy.rb": {
      \    "type": "policy",
      \    "test": [
      \      "spec/policies/{}_policy_spec.rb",
      \      "test/policies/{}_policy_test.rb"
      \    ],
      \    "alternate": [
      \      "spec/policies/{}_policy_spec.rb",
      \      "test/policies/{}_policy_test.rb"
      \    ],
      \    "template": [
      \      "class {camelcase|capitalize|colons}Policy < ApplicationPolicy",
      \      "end"
      \    ],
      \  },
      \  "app/presenters/*_presenter.rb": {
      \    "type": "presenter",
      \    "test": [
      \      "spec/presenters/{}_presenter_spec.rb",
      \      "test/presenters/{}_presenter_test.rb"
      \    ],
      \    "alternate": [
      \      "spec/presenters/{}_presenter_spec.rb",
      \      "test/presenters/{}_presenter_test.rb"
      \    ],
      \    "template": [
      \      "class {camelcase|capitalize|colons}Presenter < ApplicationPresenter",
      \      "end"
      \    ],
      \  },
      \  "app/services/*.rb": {
      \    "type": "service",
      \    "test": [
      \      "spec/services/{}_spec.rb",
      \      "test/services/{}_test.rb"
      \    ],
      \  },
      \  "app/graphql/*.rb": {
      \    "type": "graphql",
      \    "test": [
      \      "spec/graphql/{}_spec.rb",
      \      "test/graphql/{}_test.rb"
      \    ],
      \    "alternate": [
      \      "spec/graphql/{}_spec.rb",
      \      "test/graphql/{}_test.rb"
      \    ],
      \  },
      \  "spec/controllers/*_spec.rb": {
      \    "template": [
      \      "require \"rails_helper\"",
      \      "",
      \      "RSpec.describe {camelcase|capitalize|colons}, type: :controller do",
      \      "end"
      \    ],
      \  },
      \  "spec/features/*_spec.rb": {
      \    "type": "feature",
      \    "template": [
      \      "require \"rails_helper\"",
      \      "",
      \      "RSpec.feature \"{blank}\", type: :feature do",
      \      "end"
      \    ],
      \  },
      \  "spec/helpers/*_spec.rb": {
      \    "alternate": "app/helper/{}_helper.rb",
      \    "template": [
      \      "require \"rails_helper\"",
      \      "",
      \      "RSpec.describe {camelcase|capitalize|colons}, type: :helper do",
      \      "end"
      \    ],
      \  },
      \  "spec/mailers/*_spec.rb": {
      \    "alternate": "app/mailers/{}_mailer.rb",
      \    "template": [
      \      "require \"rails_helper\"",
      \      "",
      \      "RSpec.describe {camelcase|capitalize|colons}, type: :mailer do",
      \      "end"
      \    ],
      \  },
      \  "spec/models/*_spec.rb": {
      \    "alternate": "app/models/{}.rb",
      \    "template": [
      \      "require \"rails_helper\"",
      \      "",
      \      "RSpec.describe {camelcase|capitalize|colons}, type: :model do",
      \      "end"
      \    ],
      \  },
      \  "spec/requests/*_spec.rb": {
      \    "alternate": "app/controllers/{}_controller.rb",
      \    "template": [
      \      "require \"rails_helper\"",
      \      "",
      \      "RSpec.describe \"{blank}\", type: :request do",
      \      "end"
      \    ],
      \  },
      \  "spec/system/*_spec.rb": {
      \    "type": "system test",
      \    "template": [
      \      "require \"rails_helper\"",
      \      "",
      \      "RSpec.describe \"{blank}\", type: :system do",
      \      "end"
      \    ],
      \  },
      \  "spec/presenters/*_spec.rb": {
      \    "alternate": "app/presenters/{}_presenter.rb",
      \    "template": [
      \      "require \"rails_helper\"",
      \      "",
      \      "RSpec.describe {underscore|capitalize|colons}, type: :presenter do",
      \      "end"
      \    ],
      \  },
      \}

let g:rails_gem_projections = {
      \  "factory_bot": {
      \    "spec/factories/*.rb": {
      \      "command": "factory",
      \      "alternate": "app/models/{}.rb",
      \      "related": "db/schema.rb#{pluralize}",
      \      "test": "spec/models/{}_spec.rb",
      \      "template": [
      \        "FactoryBot.define do",
      \        "  factory :{} do",
      \        "  end",
      \        "end"
      \      ],
      \      "affinity": "model"
      \    },
      \    "spec/factories.rb": {
      \      "command": "factory"
      \    },
      \    "test/factories.rb": {
      \      "command": "factory"
      \    },
      \  },
      \}
