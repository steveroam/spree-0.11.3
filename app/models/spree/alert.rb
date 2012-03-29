class Spree::Alert < ActiveResource::Base
  self.site = "http://alerts.spreecommerce.com/"
  self.format = :json

  def self.current(host)
    find(:all, :params => { :version => SPREE_GEM_VERSION,
                            :name => Spree::Config[:site_name],
                            :host => host,
                            :rails_env => Rails.env,
                            :rails_version => Rails.version })
  end
end

