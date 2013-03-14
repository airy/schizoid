SimpleCov.use_merging true
SimpleCov.start do
  add_filter 'test'

  add_group 'Models',    'app/models'
  add_group 'Roles',     'app/roles'
  add_group 'Contexts',  'app/contexts'

  merge_timeout 3600
end
