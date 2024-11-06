defmodule AppWeb.ItemHTML do
  use AppWeb, :html

  embed_templates "item_html/*"

  # item.status == 1일 경우 리스트 항목에 "completed" 클래스를 추가하세요.
  def complete(item) do
    case item.status do
      1 -> "completed"
      _ -> ""
    end
  end

end
