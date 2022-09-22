defmodule LogLevel do
  def to_label(level, legacy?) do
    case level do
      0 -> if not legacy? do :trace   else :unknown end
      1 ->                   :debug
      2 ->                   :info
      3 ->                   :warning
      4 ->                   :error
      5 -> if not legacy? do :fatal   else :unknown end
      _ ->                                 :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)

    case label do
      :error   -> :ops
      :fatal   -> :ops
      :unknown -> if legacy? do :dev1 else :dev2 end
      _        -> false
    end
  end
end
