class QiscusController < ApplicationController

  def new_agent
    data = JSON.parse(request.body.read).to_dot
    app = App.fine_by_app_code(data.app_id)

    if !app
      Qiscus.logi('app not found')
    else
      NewMessageWorker.perform_async(data, app.id)
    end
  end

end