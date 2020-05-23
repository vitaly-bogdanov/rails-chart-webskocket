module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # identified_by :connection_id

    def connect
      # self.connection_id = 
    end

    # private
    
    # def verify_connect
    #   # (params[:connection_id])
    # end
  end
end
