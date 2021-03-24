require "test_helper"

class MixturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mixture = mixtures(:one)
  end

  test "should get index" do
    get mixtures_url
    assert_response :success
  end

  test "should get new" do
    get new_mixture_url
    assert_response :success
  end

  test "should create mixture" do
    assert_difference('Mixture.count') do
      post mixtures_url, params: { mixture: { percentage: @mixture.percentage, strain_id: @mixture.strain_id, wine_id: @mixture.wine_id } }
    end

    assert_redirected_to mixture_url(Mixture.last)
  end

  test "should show mixture" do
    get mixture_url(@mixture)
    assert_response :success
  end

  test "should get edit" do
    get edit_mixture_url(@mixture)
    assert_response :success
  end

  test "should update mixture" do
    patch mixture_url(@mixture), params: { mixture: { percentage: @mixture.percentage, strain_id: @mixture.strain_id, wine_id: @mixture.wine_id } }
    assert_redirected_to mixture_url(@mixture)
  end

  test "should destroy mixture" do
    assert_difference('Mixture.count', -1) do
      delete mixture_url(@mixture)
    end

    assert_redirected_to mixtures_url
  end
end
