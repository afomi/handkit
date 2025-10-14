defmodule Handkit.Minter do

  alias Handkit.Connect

  @v3_endpoint "/v3"

  # COLLECTION
  # {
  #   name: 'HandCash Team Caricatures',
  #   type: 'collection' | 'collectionItem'
  #   description: 'A unique collection of caricatures of the HandCash team',
  #   mediaDetails: {
  #     image: {
  #       url: 'https://res.cloudinary.com/handcash-iae/image/upload/v1685141160/round-handcash-logo_cj47fp_xnteyo_oy3nbd.png',
  #       contentType: 'image/png',
  #     },
  #   }

  def create_collection(%Connect{client: client} = _client, %{} = params) do
    client
    |> Tesla.post(@v3_endpoint <> "/itemCreationOrder")
    |> Connect.handle_result()
  end

  def get_collection(%Connect{client: client} = _client, collecton_id) do
    client
    |> Tesla.get(@v3_endpoint <> "/itemCreationOrder/#{collecton_id}")
    |> Connect.handle_result()
  end

  def get_collection_items(%Connect{client: client} = _client, collecton_id) do
    client
    |> Tesla.get(@v3_endpoint <> "/itemCreationOrder/#{collecton_id}/items")
    |> Connect.handle_result()
  end
end
