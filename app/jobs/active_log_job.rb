class ActiveLogJob < ApplicationJob
  queue_as :async_log

  # 非同期処理時に呼ばれる
  def perform(message: "hello")
    AsyncLog.create(message: message)
  end
end
