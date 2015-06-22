require 'test_helper'

class InsertsControllerTest < ActionController::TestCase
  setup do
    @insert = inserts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inserts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insert" do
    assert_difference('Insert.count') do
      post :create, insert: { adlinage: @insert.adlinage, adstatuscode: @insert.adstatuscode, adstatusfursncode: @insert.adstatusfursncode, advacct: @insert.advacct, allprintsites: @insert.allprintsites, batchnumber: @insert.batchnumber, billedby: @insert.billedby, cancelledbyuser: @insert.cancelledbyuser, cncldbysalesrep: @insert.cncldbysalesrep, colorcode: @insert.colorcode, createdby: @insert.createdby, editorialspace: @insert.editorialspace, eionumber: @insert.eionumber, erop: @insert.erop, exclusive: @insert.exclusive, fursndate: @insert.fursndate, height: @insert.height, insertid: @insert.insertid, insertnotes: @insert.insertnotes, inserttypecode: @insert.inserttypecode, issuedate: @insert.issuedate, materialdesc: @insert.materialdesc, materialinmclean: @insert.materialinmclean, methodid: @insert.methodid, overruns: @insert.overruns, packagenumber: @insert.packagenumber, pages: @insert.pages, paperstockid: @insert.paperstockid, perccircb: @insert.perccircb, positioncode: @insert.positioncode, prepressworkid: @insert.prepressworkid, pressrunlonumber: @insert.pressrunlonumber, printsiteready: @insert.printsiteready, productline: @insert.productline, projdblsect: @insert.projdblsect, projruncode: @insert.projruncode, psreceiveddate: @insert.psreceiveddate, pubcode: @insert.pubcode, regional: @insert.regional, schedulernotes: @insert.schedulernotes, sectionname: @insert.sectionname, stagecode: @insert.stagecode, straightcollect: @insert.straightcollect, subtypeid: @insert.subtypeid, transdate: @insert.transdate, transdateto: @insert.transdateto, transtimefrom: @insert.transtimefrom, transtimeto: @insert.transtimeto, updatedby: @insert.updatedby, waitlistheld: @insert.waitlistheld, weight: @insert.weight, width: @insert.width }
    end

    assert_redirected_to insert_path(assigns(:insert))
  end

  test "should show insert" do
    get :show, id: @insert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insert
    assert_response :success
  end

  test "should update insert" do
    patch :update, id: @insert, insert: { adlinage: @insert.adlinage, adstatuscode: @insert.adstatuscode, adstatusfursncode: @insert.adstatusfursncode, advacct: @insert.advacct, allprintsites: @insert.allprintsites, batchnumber: @insert.batchnumber, billedby: @insert.billedby, cancelledbyuser: @insert.cancelledbyuser, cncldbysalesrep: @insert.cncldbysalesrep, colorcode: @insert.colorcode, createdby: @insert.createdby, editorialspace: @insert.editorialspace, eionumber: @insert.eionumber, erop: @insert.erop, exclusive: @insert.exclusive, fursndate: @insert.fursndate, height: @insert.height, insertid: @insert.insertid, insertnotes: @insert.insertnotes, inserttypecode: @insert.inserttypecode, issuedate: @insert.issuedate, materialdesc: @insert.materialdesc, materialinmclean: @insert.materialinmclean, methodid: @insert.methodid, overruns: @insert.overruns, packagenumber: @insert.packagenumber, pages: @insert.pages, paperstockid: @insert.paperstockid, perccircb: @insert.perccircb, positioncode: @insert.positioncode, prepressworkid: @insert.prepressworkid, pressrunlonumber: @insert.pressrunlonumber, printsiteready: @insert.printsiteready, productline: @insert.productline, projdblsect: @insert.projdblsect, projruncode: @insert.projruncode, psreceiveddate: @insert.psreceiveddate, pubcode: @insert.pubcode, regional: @insert.regional, schedulernotes: @insert.schedulernotes, sectionname: @insert.sectionname, stagecode: @insert.stagecode, straightcollect: @insert.straightcollect, subtypeid: @insert.subtypeid, transdate: @insert.transdate, transdateto: @insert.transdateto, transtimefrom: @insert.transtimefrom, transtimeto: @insert.transtimeto, updatedby: @insert.updatedby, waitlistheld: @insert.waitlistheld, weight: @insert.weight, width: @insert.width }
    assert_redirected_to insert_path(assigns(:insert))
  end

  test "should destroy insert" do
    assert_difference('Insert.count', -1) do
      delete :destroy, id: @insert
    end

    assert_redirected_to inserts_path
  end
end
