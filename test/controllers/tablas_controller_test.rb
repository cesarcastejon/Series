require 'test_helper'

class TablasControllerTest < ActionController::TestCase
  setup do
    @tabla = tablas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tablas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tabla" do
    assert_difference('Tabla.count') do
      post :create, tabla: { categoria: @tabla.categoria, titulo: @tabla.titulo }
    end

    assert_redirected_to tabla_path(assigns(:tabla))
  end

  test "should show tabla" do
    get :show, id: @tabla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tabla
    assert_response :success
  end

  test "should update tabla" do
    patch :update, id: @tabla, tabla: { categoria: @tabla.categoria, titulo: @tabla.titulo }
    assert_redirected_to tabla_path(assigns(:tabla))
  end

  test "should destroy tabla" do
    assert_difference('Tabla.count', -1) do
      delete :destroy, id: @tabla
    end

    assert_redirected_to tablas_path
  end
end
