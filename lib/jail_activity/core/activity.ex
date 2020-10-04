defmodule JailActivity.Core.Activity do
  defstruct [
    :booking_number,
    :booking_time,
    :defendant_race,
    :defendant_sex,
    :time,
    charges: []
  ]

  def new(fields) do
    struct!(__MODULE__, fields)
  end

  def add_charge(activity, charge) do
    %{activity | charges: [charge | activity.charges]}
  end
end
