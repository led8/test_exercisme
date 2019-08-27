def list(names)
  array_of_names = []

  names.each do |name|
    array_of_names.push(name[:name])
  end

  if array_of_names.empty?
    return ''
  elsif array_of_names.length == 1
    return array_of_names.first
  elsif array_of_names.length == 2
    return array_of_names.join(' & ')
  else
    return array_of_names.insert(-2, "&").join(', ').gsub(', &,', ' &')
  end
end
list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])
