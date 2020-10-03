defmodule JailActivity.Core.Activity do
  defstruct booking_number: nil,
            booking_time: nil,
            defendant_race: nil,
            defendant_sex: nil,
            time: nil,
            charges: []

  def new(fields) do
    struct!(__MODULE__, fields)
  end

  def add_charge(activity, charge) do
    %{activity | charges: [charge | activity.charges]}
  end
end
