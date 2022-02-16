class NewMessageWorker
  
  def perform (data, app_id)
    app = App.find(app_id)
    is_exist = Room.where(qiscus_room_id: data['room_id']).first

    if !is_exist
      room_datail = Qiscus.get_api_v2_by_app('customer_rooms')
    end
  end
end