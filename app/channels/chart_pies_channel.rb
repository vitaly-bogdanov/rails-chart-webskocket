class ChartPiesChannel < ApplicationCable::Channel
  def subscribed
    stop_all_streams
    stream_from 'ChartPiesChannel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  # def receive(data)
  #   ActionCable.server.broadcast('ChartPiesChannel', data)
  # end

  def update_chart_data(data)
    lang = Lang.find_by(name: data['label'])
    lang.update(data: data['data'])
    ActionCable.server.broadcast('ChartPiesChannel', { id: lang.id, name: lang.name, color: lang.color, data: lang.data })
  end
end
