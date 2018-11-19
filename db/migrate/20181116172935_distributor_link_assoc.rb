class DistributorLinkAssoc < ActiveRecord::Migration[5.1]
    def self.up

      add_reference :distributor_links, :distributor, index:true
      add_reference :distributor_links, :app, index:true

    end

    def self.down

      remove_reference :distributor_links, :distributor
      remove_reference :distributor_links, :app

    end
end
