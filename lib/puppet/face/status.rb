require 'puppet/face/indirector'

Puppet::Face::Indirector.define(:status, '0.0.1') do
  copyright "Puppet Labs", 2011
  license   "Apache 2 license; see COPYING"

  summary "View status information"
end
