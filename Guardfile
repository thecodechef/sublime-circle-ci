guard :cucumber do
	watch %r{^features\/(.+)\.feature}
	watch %r{^step_definitions\/(.+)\/(.+)_step\.rb}
	watch %r{^support\/(.+)\/(.+)\.rb}
end

guard :shell do
  watch(/^features\/lib\/(.+).rb/) { |m| `flog #{m[0]}` }
end
