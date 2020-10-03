defmodule JailActivity.Core.Charge do
  defstruct ~w[w_number j_number court case_number description status action_agent bond_amount]a

  def new(fields) do
    struct!(__MODULE__, fields)
  end
end
