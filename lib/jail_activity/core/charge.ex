defmodule JailActivity.Core.Charge do
  defstruct [
    :w_number,
    :j_number,
    :court,
    :case_number,
    :description,
    :class,
    :status,
    :action_agent,
    :bond_amount
  ]

  def new(fields) do
    struct!(__MODULE__, fields)
  end
end
