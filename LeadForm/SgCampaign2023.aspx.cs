using SgRegisterCovid.clsObject;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace SgRegisterCovid
{
    public partial class SgCampaign2023 : System.Web.UI.Page
    {
        bool isSuccess;
        string strMessage;

        string strNavigateUrl = "SgCampaignSuccess.aspx";


        DataTable dtItem;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (QueryStringGet())
                {
                    SetFormControl();
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ไม่สามารถทำรายได้ ไม่พบ Campaign')", true);
                }
            }
            else
            {
                //### Do somthing
            }
        }

        private bool QueryStringGet()
        {
            isSuccess = false;



            hdfCampaign.Value = "";

            try
            {
                if (Request.QueryString["CampaignCode"] != null)
                {
                    hdfCampaign.Value = Request.QueryString["CampaignCode"].ToString();
                }
                else
                {
                    //### Default กรณีไม่ใส่ Querystring มา
                    hdfCampaign.Value = "SgCampaign2023ANDROID";
                }

                //### เปลี่ยนรูปตาม Campaign
                if (hdfCampaign.Value == "SgCampaign2023ANDROID")
                {
                    imageCampaign.ImageUrl = "~/dist/img/SgCampaign2023ANDROID.JPG";
                }
                if (hdfCampaign.Value == "SgCampaign2023IPHONE")
                {
                    imageCampaign.ImageUrl = "~/dist/img/SgCampaign2023IPHONE.JPG";
                }
                if (hdfCampaign.Value == "SgCampaign2023Electric")
                {
                    imageCampaign.ImageUrl = "~/dist/img/SgCampaign2023Electric_V2.JPG";
                }
                if (hdfCampaign.Value == "SgCampaign2023Comercial")
                {
                    imageCampaign.ImageUrl = "~/dist/img/SgCampaign2023Comercial_V2.JPG";
                }
                if (hdfCampaign.Value == "SgCampaign2023SmallApp")
                {
                    imageCampaign.ImageUrl = "~/dist/img/SgCampaign2023SmallApp_V2.JPG";
                }




                isSuccess = true;
            }
            catch (Exception Ex)
            {

            }

            return isSuccess;


        }

        private void SetFormControl()
        {

            dtItem = null;
            dtItem = clsSgRegisterCovid.SCP_M_PRODUCT_ITEM_SELECT(hdfCampaign.Value, "Y").Tables[0];

            clsCommon.SetDropDownListControl(ddlSCP_CUSTOMER_PRODUCTBRAND, dtItem, "Item", "Item", "");



            //dtModel = null;
            //dtModel = clsSgRegisterCovid.SCP_M_PRODUCT_MODEL_SELECT(hdfCampaign.Value, ddlSCP_CUSTOMER_PRODUCTBRAND.SelectedValue.ToString()).Tables[0];

            //clsCommon.SetDropDownListControl(ddlSCP_CUSTOMER_PRODUCTMODEL, dtModel, "Model", "Model", "");

            DateTime date = DateTime.Now;
            CultureInfo culture = new CultureInfo("th-TH");
            culture.DateTimeFormat.Calendar = new ThaiBuddhistCalendar();
            string dateInBuddhistCalendar = date.ToString("dd/MM/yyyy", culture);

            //var date = new Date(document.getElementById("txtSCP_CUSTOMER_BIRTHDATE").value);
            //var day = date.getDate();
            //var month = date.getMonth() + 1;
            //var year = date.getFullYear();
            //document.getElementById("txtSCP_CUSTOMER_BIRTHDATE").value = day + "/" + month + "/" + year;

        }

        private bool isValidControl()
        {
            if (txtSCP_CUSTOMER_NAME_FULL_FIRST.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ไม่สามารถทำรายการได้ กรุณาระบุข้อมูลให้ครบ และถูกต้อง !!!')", true);
                return false;
            }
            if (txtSCP_CUSTOMER_TELEPHONE.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ไม่สามารถทำรายการได้ กรุณาระบุข้อมูลให้ครบ และถูกต้อง !!!')", true);
                return false;
            }
            //if(txtSCP_CUSTOMER_DATEOFBIRTH.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ไม่สามารถทำรายการได้ กรุณาระบุข้อมูลให้ครบ และถูกต้อง !!!')", true);
            //    return false;
            //}

            //if (ddlSCP_CUSTOMER_AGE.SelectedValue.ToString() == "น้อยกว่า 20 ปี"
            //    || ddlSCP_CUSTOMER_AGE.SelectedValue.ToString() == "มากกว่า 60 ปี"
            //    || ddlSCP_CUSTOMER_OCCUPATION.SelectedValue.ToString() == "นักเรียน / นักศึกษา"
            //    || ddlSCP_CUSTOMER_OCCUPATION.SelectedValue.ToString() == "แม่บ้าน / ว่างงาน"
            //    || ddlSCP_CUSTOMER_INCOME.SelectedValue.ToString() == "น้อยกว่า 8,000 บาท"
            //    )
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ไม่สามารถทำรายการได้ เนื่องจากข้อมูลไม่ผ่านคุณสมบัติเบื้องต้น')", true);
            //    return false;
            //}

            if (ddlSCP_CUSTOMER_INCOME_TYPE.SelectedValue.ToString() == "รับเงินสด ไม่นำเข้าธนาคาร")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ไม่สามารถทำรายการได้ เนื่องจากข้อมูลไม่ผ่านคุณสมบัติเบื้องต้น')", true);
                return false;
            }


            return true;
        }

        private void Save()
        {
            isSuccess = true;
            strMessage = string.Empty;

            string JMTResult;
            // var STLResult;
            string CustID = txtSCP_CUSTOMER_ID.Text.ToString();

            JMTCheckBlacklist.checkBlackList JMTChkBL = new JMTCheckBlacklist.checkBlackList();
            JMTResult = JMTChkBL.isBlackListJMT(CustID).ToString();
            if (JMTResult.ToString() == "YES")
            {
                JMTResult = "J";
            }
            else if (JMTResult.ToString() == "NO")
            {
                JMTResult = "N";
            }
            else if (JMTResult.ToString() == "ERR")
            {
                JMTResult = "E";
            }
            else
            {

            }



            STLCheckBlacklist.IFSInterface STLChkBL = new STLCheckBlacklist.IFSInterface();
            var STLResult = STLChkBL.InternalBlackList(CustID);

            string strSTLResult = STLResult.InnerText;

            if (STLResult.InnerText.ToString() == "TRUE")
            {
                strSTLResult = "I";
            }
            else if (STLResult.InnerText.ToString() == "FALSE")
            {
                strSTLResult = "N";
            }
            else
            {

            }


            using (SqlConnection sqlConn = new SqlConnection(clsSqlHelper.strConnSgRegisterCovid))
            {
                sqlConn.Open();
                using (SqlTransaction sqlTran = sqlConn.BeginTransaction())
                {
                    try
                    {
                        string strSCP_CUSTOMER_OCCUPATION = ddlSCP_CUSTOMER_OCCUPATION.SelectedValue.ToString();


                        if (strSCP_CUSTOMER_OCCUPATION == "อื่นๆ")
                        {
                            strSCP_CUSTOMER_OCCUPATION = strSCP_CUSTOMER_OCCUPATION + ": " + txtSCP_CUSTOMER_OCCUPATION_OTHER.Text.Trim();
                        }

                        //### Insert  //### แก้ไข 20220421 เปลี่ยนมาใช้เงื่อนไขเหมือน Tiktok คุณอร
                        clsSgRegisterCovid.ScpRegister2023_INSERT(sqlTran
                                                                                , hdfCampaign.Value
                                                                                , ddlSCP_CUSTOMER_NAME_FULL_TITLE.SelectedValue.ToString()
                                                                                    + " " + txtSCP_CUSTOMER_NAME_FULL_FIRST.Text.Trim().Replace("?", "")
                                                                                    + " " + txtSCP_CUSTOMER_NAME_FULL_LAST.Text.Trim().Replace("?", "")
                                                                                , txtSCP_CUSTOMER_TELEPHONE.Text.Trim()                     //เบอร์มือถือ
                                                                                , ""
                                                                                /*, txtSCP_CUSTOMER_DATEOFBIRTH.Text.Trim() */              //วันเดือนปี เกิด
                                                                                , ddlSCP_CUSTOMER_INCOME.SelectedValue.ToString()           //รายได้ทำเป็น Range
                                                                                , ddlSCP_CUSTOMER_INCOME_TYPE.SelectedValue.ToString()      //วิธีการรับเงิน
                                                                                , strSCP_CUSTOMER_OCCUPATION                                //อาชีพ
                                                                                , txtSCP_CUSTOMER_ID.Text.Trim()                            //เลชที่บัตร
                                                                                , txtSCP_CUSTOMER_ADDRESS.Text.Trim()                       //ที่อยุ่
                                                                                , ddlC4C_REGISTER_PROVINCE.SelectedValue.ToString()         //ที่อยู่ จังหวัด
                                                                                , ""                                                        //รหัสไปรษณีย์
                                                                                , ""                                                        //WORKEXPERIENCE
                                                                                , ""                                                        //EMAIL
                                                                                , ddlSCP_CUSTOMER_PRODUCTBRAND.SelectedValue.ToString()     //SCP_CUSTOMER_PRODUCTBRAND
                                                                                , ""
                                                                                /*, ddlSCP_CUSTOMER_PRODUCTMODEL.SelectedValue.ToString()*/ //SCP_CUSTOMER_PRODUCTMODEL

                                                                                , ""                                                        //SCP_CUSTOMER_OTHER
                                                                                , txtSCP_CUSTOMER_REMARK.Text.Trim()                        //*ข้อมูลเพิ่มเติม โปรดระบุ
                                                                                , "รอการตรวจสอบ"                                             //SCP_REGISTER_STATUS
                                                                                , "CUSTOMER_REGIS"                                          //CREATED_USER
                                                                                , "CUSTOMER_REGIS"                                          //UPDATED_USER
                                                                                , "Y"                                                       //ISACTIVE
                                                                                , JMTResult                                                 //JMT_API_Flag
                                                                                , strSTLResult).ToString();                                 //STL_API_Flag


                        // @SCP_CAPAIGN_TYPE                 nvarchar(100)
                        //,@SCP_CUSTOMER_NAME_FULL           nvarchar(200)
                        //,@SCP_CUSTOMER_TELEPHONE           nvarchar(20)
                        //,@SCP_CUSTOMER_DATEOFBIRTH         nvarchar(100)
                        //,@SCP_CUSTOMER_INCOME              nvarchar(100)
                        //,@SCP_CUSTOMER_INCOME_TYPE         nvarchar(100)
                        //,@SCP_CUSTOMER_OCCUPATION          nvarchar(200)
                        //,@SCP_CUSTOMER_ID                  nvarchar(13)
                        //,@SCP_CUSTOMER_ADDRESS             nvarchar(MAX)
                        //,@SCP_CUSTOMER_PROVINCE            nvarchar(200)
                        //,@SCP_CUSTOMER_POSTCODE            nvarchar(5)
                        //,@SCP_CUSTOMER_WORKEXPERIENCE      nvarchar(200)
                        //,@SCP_CUSTOMER_EMAIL               nvarchar(MAX)
                        //,@SCP_CUSTOMER_PRODUCTBRAND        nvarchar(100)
                        //,@SCP_CUSTOMER_PRODUCTMODEL        nvarchar(200)
                        //,@SCP_CUSTOMER_OTHER               nvarchar(200)
                        //,@SCP_CUSTOMER_REMARK              nvarchar(MAX)
                        //,@SCP_REGISTER_STATUS              nvarchar(100)

                        //,@CREATED_USER                     nvarchar(20)

                        //,@UPDATED_USER                     nvarchar(20)
                        //,@ISACTIVE                         nvarchar(1)
                        //,@JMT_API_Flag                     nvarchar(1)
                        //,@STL_API_Flag                     nvarchar(1))

                        sqlTran.Commit();

                        isSuccess = true;
                        strMessage = "ทำรายการสำเร็จ -> ข้อมูลจัดส่งเรียบร้อยแล้ว ";

                    }
                    catch (Exception Ex)
                    {
                        if (sqlTran != null)
                            sqlTran.Rollback();

                        isSuccess = false;
                        //strMessage = "ทำรายการไม่สำเร็จ !!! " + "  " + clsCommon.GetExceptionErrorMessage(Ex);
                        strMessage = "ทำรายการไม่สำเร็จ !!! ";
                    }
                    finally
                    {
                        sqlConn.Close();
                    }
                }
            }


            Session["Success"] = isSuccess;

            if (isSuccess)
            {
                clsCommon.NavigateToPage(this, this.GetType(), strNavigateUrl);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + strMessage + "')", true);
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(500);

            if (isValidControl())
            {
                Save();
            }
        }
    }
}