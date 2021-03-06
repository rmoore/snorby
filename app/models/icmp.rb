class Icmp

  include DataMapper::Resource

  storage_names[:default] = "icmphdr"

  belongs_to :sensor, :parent_key => :sid, :child_key => :sid, :required => true

  belongs_to :event, :parent_key => [:sid, :cid], :child_key => [:sid, :cid], :required => true

  property :sid, Integer, :key => true, :index => true
  
  property :cid, Integer, :key => true, :index => true

  property :icmp_type, Integer, :lazy => true
  
  property :icmp_code, Integer, :lazy => true
  
  property :icmp_csum, Integer, :lazy => true
  
  property :icmp_id, Integer, :lazy => true
  
  property :icmp_seq, Integer, :lazy => true

end
