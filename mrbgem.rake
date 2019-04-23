MRuby::Gem::Specification.new('mruby-merkle-verify') do |spec|
  spec.license = 'MIT'
  spec.author  = 'u2'
  spec.summary = 'Mruby merkle verify'

  spec.add_dependency('mruby-struct', :core => 'mruby-struct')
  spec.add_dependency('mruby-pack', :core => 'mruby-pack')
  spec.add_dependency('mruby-compar-ext', :core => 'mruby-compar-ext')
  spec.add_dependency('mruby-enum-ext', :core => 'mruby-enum-ext')
  spec.add_dependency('mruby-string-ext', :core => 'mruby-string-ext')
  spec.add_dependency('mruby-array-ext', :core => 'mruby-array-ext')
  spec.add_dependency('mruby-hash-ext', :core => 'mruby-hash-ext')
  spec.add_dependency('mruby-proc-ext', :core => 'mruby-proc-ext')
  spec.add_dependency('mruby-symbol-ext', :core => 'mruby-symbol-ext')
  spec.add_dependency('mruby-object-ext', :core => 'mruby-object-ext')
  spec.add_dependency('mruby-objectspace', :core => 'mruby-objectspace')
  spec.add_dependency('mruby-fiber', :core => 'mruby-fiber')
  spec.add_dependency('mruby-enumerator', :core => 'mruby-enumerator')
  spec.add_dependency('mruby-enum-lazy', :core => 'mruby-enum-lazy')
  spec.add_dependency('mruby-toplevel-ext', :core => 'mruby-toplevel-ext')
  spec.add_dependency('mruby-kernel-ext', :core => 'mruby-kernel-ext')
  spec.add_dependency('mruby-class-ext', :core => 'mruby-class-ext')
  spec.add_dependency('mruby-compiler', :core => 'mruby-compiler')

  # TODO
  spec.add_dependency('mruby-bignum', :core => 'mruby-bignum')
  spec.add_dependency('mruby-metaprog', :core => 'metaprog')
end
