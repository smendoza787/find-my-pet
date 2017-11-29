require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = animals(:one)
  end

  test "should get index" do
    get animals_url, as: :json
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post animals_url, params: { animal: { age: @animal.age, breed: @animal.breed, color: @animal.color, has_collar: @animal.has_collar, is_friendly: @animal.is_friendly, is_injured: @animal.is_injured, size: @animal.size, type: @animal.type } }, as: :json
    end

    assert_response 201
  end

  test "should show animal" do
    get animal_url(@animal), as: :json
    assert_response :success
  end

  test "should update animal" do
    patch animal_url(@animal), params: { animal: { age: @animal.age, breed: @animal.breed, color: @animal.color, has_collar: @animal.has_collar, is_friendly: @animal.is_friendly, is_injured: @animal.is_injured, size: @animal.size, type: @animal.type } }, as: :json
    assert_response 200
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete animal_url(@animal), as: :json
    end

    assert_response 204
  end
end
