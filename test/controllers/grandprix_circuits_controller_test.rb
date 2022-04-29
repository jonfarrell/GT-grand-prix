require "test_helper"

class GrandprixCircuitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grandprix_circuit = grandprix_circuits(:one)
  end

  test "should get index" do
    get grandprix_circuits_url
    assert_response :success
  end

  test "should get new" do
    get new_grandprix_circuit_url
    assert_response :success
  end

  test "should create grandprix_circuit" do
    assert_difference('GrandprixCircuit.count') do
      post grandprix_circuits_url, params: { grandprix_circuit: { description: @grandprix_circuit.description, name: @grandprix_circuit.name } }
    end

    assert_redirected_to grandprix_circuit_url(GrandprixCircuit.last)
  end

  test "should show grandprix_circuit" do
    get grandprix_circuit_url(@grandprix_circuit)
    assert_response :success
  end

  test "should get edit" do
    get edit_grandprix_circuit_url(@grandprix_circuit)
    assert_response :success
  end

  test "should update grandprix_circuit" do
    patch grandprix_circuit_url(@grandprix_circuit), params: { grandprix_circuit: { description: @grandprix_circuit.description, name: @grandprix_circuit.name } }
    assert_redirected_to grandprix_circuit_url(@grandprix_circuit)
  end

  test "should destroy grandprix_circuit" do
    assert_difference('GrandprixCircuit.count', -1) do
      delete grandprix_circuit_url(@grandprix_circuit)
    end

    assert_redirected_to grandprix_circuits_url
  end
end
