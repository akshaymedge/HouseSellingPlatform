require 'test_helper'

class RealestatecompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @realestatecompany = realestatecompanies(:one)
  end

  test "should get index" do
    get realestatecompanies_url
    assert_response :success
  end

  test "should get new" do
    get new_realestatecompany_url
    assert_response :success
  end

  test "should create realestatecompany" do
    assert_difference('Realestatecompany.count') do
      post realestatecompanies_url, params: { realestatecompany: { address: @realestatecompany.address, companyid: @realestatecompany.companyid, founded: @realestatecompany.founded, name: @realestatecompany.name, revenue: @realestatecompany.revenue, size: @realestatecompany.size, synopsis: @realestatecompany.synopsis, website: @realestatecompany.website } }
    end

    assert_redirected_to realestatecompany_url(Realestatecompany.last)
  end

  test "should show realestatecompany" do
    get realestatecompany_url(@realestatecompany)
    assert_response :success
  end

  test "should get edit" do
    get edit_realestatecompany_url(@realestatecompany)
    assert_response :success
  end

  test "should update realestatecompany" do
    patch realestatecompany_url(@realestatecompany), params: { realestatecompany: { address: @realestatecompany.address, companyid: @realestatecompany.companyid, founded: @realestatecompany.founded, name: @realestatecompany.name, revenue: @realestatecompany.revenue, size: @realestatecompany.size, synopsis: @realestatecompany.synopsis, website: @realestatecompany.website } }
    assert_redirected_to realestatecompany_url(@realestatecompany)
  end

  test "should destroy realestatecompany" do
    assert_difference('Realestatecompany.count', -1) do
      delete realestatecompany_url(@realestatecompany)
    end

    assert_redirected_to realestatecompanies_url
  end
end
