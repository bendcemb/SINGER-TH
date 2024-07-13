<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SgCampaign2023.aspx.cs" Inherits="SgRegisterCovid.SgCampaign2023" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- 20210312 -->
    <title>ลงทะเบียน เพื่อขอรับสิทธิพิเศษ มือถือ - บริษัท ซิงเกอร์ประเทศไทย จํากัด (มหาชน) </title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />

    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css" />

    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Kanit:300" rel="stylesheet" />

    <link rel="shortcut icon" href="dist/img/favicon.ico" />


    <script type="text/javascript" language="javascript">
        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
    </script>

    <%--<script type="text/javascript">

        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { nullxxxx };

    </script>--%>

    <script type="text/javascript">

        function checkID(id) {
            if (id.length != 13) return false;
            for (i = 0, sum = 0; i < 12; i++)
                sum += parseFloat(id.charAt(i)) * (13 - i); if ((11 - sum % 11) % 10 != parseFloat(id.charAt(12)))
                return false; return true;
        }

        function ValidateRcvCustomerId(sender, args) {
            if (!checkID(document.getElementById("<%=txtSCP_CUSTOMER_ID.ClientID%>").value)) {
                alert('รหัสประชาชนไม่ถูกต้อง');
                args.IsValid = false;
            }
            else {
                alert('รหัสประชาชนถูกต้อง เชิญผ่านได้');
                args.IsValid = true;
            }
        }



        <%--function CopyAdr(sender, args) {
            document.getElementById("<%=txtSCP_CUSTOMER_OTHER.ClientID%>").value = document.getElementById("<%=txtSCP_CUSTOMER_PROVINCE.ClientID%>").value
        }--%>

        //ddlSCP_CUSTOMER_OCCUPATION
        function ValidateddlSCP_CUSTOMER_OCCUPATION(sender, args) {
            var rb = document.getElementById("<%=ddlSCP_CUSTOMER_OCCUPATION.ClientID%>");
            var radio = rb.getElementsByTagName("input");

            if (rb.value == "อื่นๆ") {
                var txtSCP_CUSTOMER_OCCUPATION_OTHER = document.getElementById("<%=txtSCP_CUSTOMER_OCCUPATION_OTHER.ClientID%>");

                if (txtSCP_CUSTOMER_OCCUPATION_OTHER.value == "") {
                    args.IsValid = false;
                }
                else {
                    args.IsValid = true;
                }
            }
        }
    </script>

    <script type="text/javascript">
        function ValidateCheckBoxCkbAccept1(sender, args) {
            if (document.getElementById("<%=ckbAccept1.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    </script>

    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({
                'gtm.start':
                    new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-TNN9TP8');</script>
    <!-- End Google Tag Manager -->

    <!-- Meta Pixel Code -->
    <script>
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
            n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '664967964709935');
        fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1" style="display: none"
            src="https://www.facebook.com/tr?id=664967964709935&ev=PageView&noscript=1" />
    </noscript>
    <!-- End Meta Pixel Code -->

</head>
<body class="hold-transition layout-top-nav" style="font-family: kanit;">
    <div class="wrapper">

        <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container">
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <div class="content">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="card" style="background-color: #ed174b">
                                    <div class="card-body">
                                        <div class="row mb-2">
                                            <div class="col-lg-6 align-content-lg-center">
                                                <img class="img-fluid mb-3" src="dist/img/SingerLogo05_470.png" alt="Photo" />
                                            </div>
                                            <!-- /.col -->
                                            <div class="col-lg-6 text-center">
                                                <h2 style="color: #FFFFFF; margin-top: 20px">ความสุขทุกสิ่งเป็นจริงที่ซิงเกอร์</h2>
                                            </div>
                                            <!-- /.col -->

                                        </div>
                                        <div class="card">
                                            <div class="card-body">
                                                <%--<img class="d-block w-100" src="dist/img/4_Mobile_Singer_มือถือ_V11.jpg" alt="" />--%>


                                                <asp:Image CssClass="d-block w-100" ID="imageCampaign" runat="server" />

                                            </div>
                                        </div>


                                        <div class="card">
                                            <div class="card-body">
                                                <div style="text-align: center; color: #04488e;">
                                                    <h4>บริษัท ซิงเกอร์ประเทศไทย จํากัด (มหาชน)</h4>
                                                    ขอขอบคุณท่านที่ให้ความสนใจในโครงการ<br />
                                                    ลงทะเบียน เพื่อขอรับสิทธิพิเศษ สำหรับทุกสาขาอาชีพ ข้าราชการ พนักงานบริษัทเอกชน
พนักงานร้านสะดวกซื้อ พนักงานโรงงานเเละบุคคลธรรมดารับจ้างทั่วไป<br />
                                                    <p></p>
                                                    เงื่อนไขการเข้าร่วมโปรแกรมผ่อนไปใช้ไป<br />
                                                    1. อายุ 20 - 65 ปี<br />
                                                    2. พนักงานทั่วไปอายุงานเกิน 4 เดือน / เจ้าของกิจการเกิน 6 เดือน<br />
                                                    3. รายได้ 10,000 บาท ขึ้นไป<br />
                                                    4. มีรายได้ผ่านบัญชีธนาคาร
                                                    <p></p>
                                                    <p><small>* ข้อมูลส่วนตัวของท่านปลอดภัยแน่นอน</small></p>
                                                </div>
                                                <div class="row" style="margin: 10px;"></div>

                                                <%--<div class="row">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <p>โปรดระบุข้อมูลดังต่อไปนี้ ให้ถูกต้องเพื่อสิทธิประโยชน์ของท่าน</p>
                                                        </div>
                                                    </div>
                                                </div>--%>


                                                <asp:HiddenField ID="hdfCampaign" runat="server" />


                                                <!-- ### 1 ข้อมูลส่วนบุคคล -->
                                                <div class="card card-primary">
                                                    <div class="card-header" style="background-color: #ed174b;">
                                                        <h3 class="card-title">โปรดระบุข้อมูลดังต่อไปนี้ ให้ถูกต้องเพื่อสิทธิประโยชน์ของท่าน</h3>
                                                    </div>
                                                    <div class="card-body">

                                                        <div class="row">
                                                            <%--ยี่ห้อมือถือที่สนใจ Iphone, Samsung, Oppo, Vivo, Huawei, Realme--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    สินค้าที่สนใจ<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="กรุณาระบุข้อมูล" ControlToValidate="ddlSCP_CUSTOMER_PRODUCTBRAND" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_PRODUCTBRAND" runat="server" CssClass="form-control" AutoPostBack="true">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="Samsung" Text="Samsung"></asp:ListItem>
                                                                        <asp:ListItem Value="Oppo" Text="Oppo"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone" Text="iPhone"></asp:ListItem>
                                                                        <asp:ListItem Value="iPad" Text="iPad"></asp:ListItem>

                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>

                                                            <%--เลือกรุ่นสินค้า ที่สนใจ--%>
                                                            <%--   <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    เลือกรุ่นสินค้า ที่สนใจ
                                                                <label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="กรุณาระบุข้อมูล" ControlToValidate="ddlSCP_CUSTOMER_PRODUCTMODEL" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_PRODUCTMODEL" runat="server" CssClass="form-control" AutoPostBack="true">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="SAM A23 5G 8/128GB" Text="SAM A23 5G 8/128GB"></asp:ListItem>
                                                                        <asp:ListItem Value="SAM A34 5G 8/128 GB" Text="SAM A34 5G 8/128 GB"></asp:ListItem>
                                                                        <asp:ListItem Value="SAM A54 5G 8/128 GB" Text="SAM A54 5G 8/128 GB"></asp:ListItem>
                                                                        <asp:ListItem Value="SAM S21 FE 5G 8/256GB" Text="SAM S21 FE 5G 8/256GB"></asp:ListItem>
                                                                        <asp:ListItem Value="SAM S23 Ultra 5G 8/256GB" Text="SAM S23 Ultra 5G 8/256GB"></asp:ListItem>
                                                                        <asp:ListItem Value="SAM Flip4 5G 8/512GB" Text="SAM Flip4 5G 8/512GB"></asp:ListItem>
                                                                        <asp:ListItem Value="SAM Fold4 5G 12/256GB" Text="SAM Fold4 5G 12/256GB"></asp:ListItem>
                                                                        <asp:ListItem Value="SAM Tab S7FE LTE 4/64GB" Text="SAM Tab S7FE LTE 4/64GB"></asp:ListItem>
                                                                        <asp:ListItem Value="OPPO A78 5G 8/128GB(CPH2483)" Text="OPPO A78 5G 8/128GB(CPH2483)"></asp:ListItem>
                                                                        <asp:ListItem Value="OPPO Reno8T 5G 8/128GB(CPH2505)" Text="OPPO Reno8T 5G 8/128GB(CPH2505)"></asp:ListItem>
                                                                        <asp:ListItem Value="OPPO Reno8T 5G 8/256GB(CPH2505)" Text="OPPO Reno8T 5G 8/256GB(CPH2505)"></asp:ListItem>
                                                                        <asp:ListItem Value="OPPO Find N2 Flip 5G 8/256GB" Text="OPPO Find N2 Flip 5G 8/256GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone 13 128 GB" Text="iPhone 13 128 GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone 13 Pro 256GB" Text="iPhone 13 Pro 256GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone 14 128 GB" Text="iPhone 14 128 GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone 14 256 GB" Text="iPhone 14 256 GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone 14 Plus 128GB" Text="iPhone 14 Plus 128GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone 14 Plus 256GB" Text="iPhone 14 Plus 256GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone 14 Pro 128GB" Text="iPhone 14 Pro 128GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone 14 Pro 256GB" Text="iPhone 14 Pro 256GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone 14 Pro Max 128GB" Text="iPhone 14 Pro Max 128GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPhone 14 Pro Max 256GB" Text="iPhone 14 Pro Max 256GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPad รุ่นที่ 9 Wi-Fi 64GB" Text="iPad รุ่นที่ 9 Wi-Fi 64GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPad รุ่นที่ 9 Wi-Fi+Cellular 64GB" Text="iPad รุ่นที่ 9 Wi-Fi+Cellular 64GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPad รุ่นที่ 10 Wi-Fi 64GB" Text="iPad รุ่นที่ 10 Wi-Fi 64GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPad รุ่นที่ 10 Wi-Fi+Cellular 64GB" Text="iPad รุ่นที่ 10 Wi-Fi+Cellular 64GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPad Air 5  Wi-Fi 64GB" Text="iPad Air 5  Wi-Fi 64GB"></asp:ListItem>
                                                                        <asp:ListItem Value="iPad Air 5 (Wi-Fi+Cellular) 64GB" Text="iPad Air 5 (Wi-Fi+Cellular) 64GB"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>--%>
                                                        </div>

                                                        <div class="row">

                                                            <%--ชื่อ นามสกุล--%>
                                                            <div class="col-sm-2">
                                                                <div class="form-group">
                                                                    คำนำหน้า<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="กรุณาระบุข้อมูล" ControlToValidate="ddlSCP_CUSTOMER_NAME_FULL_TITLE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_NAME_FULL_TITLE" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="นาย" Text="นาย"></asp:ListItem>
                                                                        <asp:ListItem Value="นาง" Text="นาง"></asp:ListItem>
                                                                        <asp:ListItem Value="นางสาว" Text="นางสาว"></asp:ListItem>
                                                                    </asp:DropDownList>

                                                                </div>
                                                            </div>
                                                            <div class="col-sm-5">
                                                                <div class="form-group">
                                                                    ชื่อ<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_NAME_FULL_FIRST" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:TextBox ID="txtSCP_CUSTOMER_NAME_FULL_FIRST" runat="server" CssClass="form-control" MaxLength="100"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-5">
                                                                <div class="form-group">
                                                                    นามสกุล<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_NAME_FULL_LAST" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:TextBox ID="txtSCP_CUSTOMER_NAME_FULL_LAST" runat="server" CssClass="form-control" MaxLength="100"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                        </div>

                                                        <div class="row">
                                                            <%--เลขที่บัตรประชาชน --%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    เลขที่บัตรประชาชน<label style="color: #ed174b; margin-left: 2px;">*</label>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_ID" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ 13 หลัก และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_ID" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic" ValidationExpression="[0-9]{13}"></asp:RegularExpressionValidator>
                                                                    <asp:TextBox ID="txtSCP_CUSTOMER_ID" runat="server" CssClass="form-control" MaxLength="13" onkeypress="return isNumberKey(event)" TextMode="Phone"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <%--เบอร์มือถือ--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    เบอร์มือถือ<label style="color: #ed174b; margin-left: 2px;">*</label>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_TELEPHONE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ 10 หลัก และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_TELEPHONE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                                                    <asp:TextBox ID="txtSCP_CUSTOMER_TELEPHONE" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)" TextMode="Phone"></asp:TextBox>

                                                                </div>
                                                            </div>

                                                            <%--ที่อยุ่--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    ที่อยุ่
                                                                        <asp:TextBox ID="txtSCP_CUSTOMER_ADDRESS" runat="server" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <%--จังหวัด--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    จังหวัด<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlC4C_REGISTER_PROVINCE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlC4C_REGISTER_PROVINCE" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Text="กรุณาเลือกจังหวัด" Value="" Selected="True"></asp:ListItem>
                                                                        <asp:ListItem Text="กรุงเทพมหานคร" Value="กรุงเทพมหานคร"></asp:ListItem>
                                                                        <asp:ListItem Text="กระบี่	" Value="กระบี่"></asp:ListItem>
                                                                        <asp:ListItem Text="กาญจนบุรี" Value="กาญจนบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="กาฬสินธุ์" Value="กาฬสินธุ์"></asp:ListItem>
                                                                        <asp:ListItem Text="กำแพงเพชร" Value="กำแพงเพชร"></asp:ListItem>
                                                                        <asp:ListItem Text="ขอนแก่น" Value="ขอนแก่น"></asp:ListItem>
                                                                        <asp:ListItem Text="จันทบุรี" Value="จันทบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="ฉะเชิงเทรา" Value="ฉะเชิงเทรา"></asp:ListItem>
                                                                        <asp:ListItem Text="ชลบุรี" Value="ชลบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="ชัยนาท" Value="ชัยนาท"></asp:ListItem>
                                                                        <asp:ListItem Text="ชัยภูมิ" Value="ชัยภูมิ"></asp:ListItem>
                                                                        <asp:ListItem Text="ชุมพร" Value="ชุมพร"></asp:ListItem>
                                                                        <asp:ListItem Text="เชียงราย" Value="เชียงราย"></asp:ListItem>
                                                                        <asp:ListItem Text="เชียงใหม่" Value="เชียงใหม่"></asp:ListItem>
                                                                        <asp:ListItem Text="ตรัง" Value="ตรัง"></asp:ListItem>
                                                                        <asp:ListItem Text="ตราด" Value="ตราด"></asp:ListItem>
                                                                        <asp:ListItem Text="ตาก" Value="ตาก"></asp:ListItem>
                                                                        <asp:ListItem Text="นครนายก" Value="นครนายก"></asp:ListItem>
                                                                        <asp:ListItem Text="นครปฐม" Value="นครปฐม"></asp:ListItem>
                                                                        <asp:ListItem Text="นครพนม" Value="นครพนม"></asp:ListItem>
                                                                        <asp:ListItem Text="นครราชสีมา" Value="นครราชสีมา"></asp:ListItem>
                                                                        <asp:ListItem Text="นครศรีธรรมราช" Value="นครศรีธรรมราช"></asp:ListItem>
                                                                        <asp:ListItem Text="นครสวรรค์" Value="นครสวรรค์"></asp:ListItem>
                                                                        <asp:ListItem Text="นนทบุรี" Value="นนทบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="นราธิวาส" Value="นราธิวาส"></asp:ListItem>
                                                                        <asp:ListItem Text="น่าน" Value="น่าน"></asp:ListItem>
                                                                        <asp:ListItem Text="บึงกาฬ" Value="บึงกาฬ"></asp:ListItem>
                                                                        <asp:ListItem Text="บุรีรัมย์" Value="บุรีรัมย์"></asp:ListItem>
                                                                        <asp:ListItem Text="ปทุมธานี" Value="ปทุมธานี"></asp:ListItem>
                                                                        <asp:ListItem Text="ประจวบคีรีขันธ์" Value="ประจวบคีรีขันธ์"></asp:ListItem>
                                                                        <asp:ListItem Text="ปราจีนบุรี" Value="ปราจีนบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="ปัตตานี" Value="ปัตตานี"></asp:ListItem>
                                                                        <asp:ListItem Text="พระนครศรีอยุธยา" Value="พระนครศรีอยุธยา"></asp:ListItem>
                                                                        <asp:ListItem Text="พะเยา" Value="พะเยา"></asp:ListItem>
                                                                        <asp:ListItem Text="พังงา" Value="พังงา"></asp:ListItem>
                                                                        <asp:ListItem Text="พัทลุง	" Value="พัทลุง"></asp:ListItem>
                                                                        <asp:ListItem Text="พิจิตร" Value="พิจิตร"></asp:ListItem>
                                                                        <asp:ListItem Text="พิษณุโลก" Value="พิษณุโลก"></asp:ListItem>
                                                                        <asp:ListItem Text="เพชรบุรี" Value="เพชรบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="เพชรบูรณ์" Value="เพชรบูรณ์"></asp:ListItem>
                                                                        <asp:ListItem Text="แพร่" Value="แพร่"></asp:ListItem>
                                                                        <asp:ListItem Text="ภูเก็ต" Value="ภูเก็ต"></asp:ListItem>
                                                                        <asp:ListItem Text="มหาสารคาม" Value="มหาสารคาม"></asp:ListItem>
                                                                        <asp:ListItem Text="มุกดาหาร" Value="มุกดาหาร"></asp:ListItem>
                                                                        <asp:ListItem Text="แม่ฮ่องสอน" Value="แม่ฮ่องสอน"></asp:ListItem>
                                                                        <asp:ListItem Text="ยโสธร" Value="ยโสธร"></asp:ListItem>
                                                                        <asp:ListItem Text="ยะลา" Value="ยะลา"></asp:ListItem>
                                                                        <asp:ListItem Text="ร้อยเอ็ด" Value="ร้อยเอ็ด"></asp:ListItem>
                                                                        <asp:ListItem Text="ระนอง" Value="ระนอง"></asp:ListItem>
                                                                        <asp:ListItem Text="ระยอง" Value="ระยอง"></asp:ListItem>
                                                                        <asp:ListItem Text="ราชบุรี" Value="ราชบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="ลพบุรี" Value="ลพบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="ลำปาง" Value="ลำปาง"></asp:ListItem>
                                                                        <asp:ListItem Text="ลำพูน	" Value="ลำพูน"></asp:ListItem>
                                                                        <asp:ListItem Text="เลย" Value="เลย"></asp:ListItem>
                                                                        <asp:ListItem Text="ศรีสะเกษ" Value="ศรีสะเกษ"></asp:ListItem>
                                                                        <asp:ListItem Text="สกลนคร" Value="สกลนคร"></asp:ListItem>
                                                                        <asp:ListItem Text="สงขลา" Value="สงขลา"></asp:ListItem>
                                                                        <asp:ListItem Text="สตูล" Value="สตูล"></asp:ListItem>
                                                                        <asp:ListItem Text="สมุทรปราการ" Value="สมุทรปราการ"></asp:ListItem>
                                                                        <asp:ListItem Text="สมุทรสงคราม" Value="สมุทรสงคราม"></asp:ListItem>
                                                                        <asp:ListItem Text="สมุทรสาคร" Value="สมุทรสาคร"></asp:ListItem>
                                                                        <asp:ListItem Text="สระแก้ว" Value="สระแก้ว"></asp:ListItem>
                                                                        <asp:ListItem Text="สระบุรี" Value="สระบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="สิงห์บุรี" Value="สิงห์บุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="สุโขทัย" Value="สุโขทัย"></asp:ListItem>
                                                                        <asp:ListItem Text="สุพรรณบุรี" Value="สุพรรณบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="สุราษฎร์ธานี" Value="สุราษฎร์ธานี"></asp:ListItem>
                                                                        <asp:ListItem Text="สุรินทร์" Value="สุรินทร์"></asp:ListItem>
                                                                        <asp:ListItem Text="หนองคาย" Value="หนองคาย"></asp:ListItem>
                                                                        <asp:ListItem Text="หนองบัวลำภู" Value="หนองบัวลำภู"></asp:ListItem>
                                                                        <asp:ListItem Text="อ่างทอง" Value="อ่างทอง"></asp:ListItem>
                                                                        <asp:ListItem Text="อำนาจเจริญ" Value="อำนาจเจริญ"></asp:ListItem>
                                                                        <asp:ListItem Text="อุดรธานี" Value="อุดรธานี"></asp:ListItem>
                                                                        <asp:ListItem Text="อุตรดิตถ์" Value="อุตรดิตถ์"></asp:ListItem>
                                                                        <asp:ListItem Text="อุทัยธานี" Value="อุทัยธานี"></asp:ListItem>
                                                                        <asp:ListItem Text="อุบลราชธานี" Value="อุบลราชธานี"></asp:ListItem>
                                                                    </asp:DropDownList>

                                                                </div>
                                                            </div>

                                                            <%--รหัสไปรษณีย์--%>
                                                            <%--<div class="col-sm-12">
                                                                    <div class="form-group">
                                                                        รหัสไปรษณีย์<label style="color: #ed174b; margin-left: 2px;">*</label>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_POSTCODE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ 5 หลัก และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_POSTCODE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic" ValidationExpression="[0-9]{5}"></asp:RegularExpressionValidator>
                                                                        <asp:TextBox ID="txtSCP_CUSTOMER_POSTCODE" runat="server" CssClass="form-control" MaxLength="5" onkeypress="return isNumberKey(event)" TextMode="Phone"></asp:TextBox>

                                                                    </div>
                                                                </div>--%>

                                                            <%--อายุ--%>
                                                            <%--                                                 <div class="col-sm-12">
                                                                    <div class="form-group">
                                                                        อายุ<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlSCP_CUSTOMER_AGE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                        <asp:DropDownList ID="ddlSCP_CUSTOMER_AGE" runat="server" CssClass="form-control">
                                                                            <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                            <asp:ListItem Value="น้อยกว่า 20 ปี" Text="น้อยกว่า 20 ปี"></asp:ListItem>
                                                                            <asp:ListItem Value="อายุ 20 ปีบริบูรณ์ - 30 ปี" Text="อายุ 20 ปีบริบูรณ์ - 30 ปี"></asp:ListItem>
                                                                            <asp:ListItem Value="อายุ 31 - 40 ปี" Text="อายุ 31 - 40 ปี"></asp:ListItem>
                                                                            <asp:ListItem Value="อายุ 41 - 50 ปี" Text="อายุ 41 - 50 ปี"></asp:ListItem>
                                                                            <asp:ListItem Value="อายุ 51 - 60 ปี" Text="อายุ 51 - 60 ปี"></asp:ListItem>
                                                                            <asp:ListItem Value="มากกว่า 60 ปี" Text="มากกว่า 60 ปี"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>--%>

                                                            <%--วันเดือนปี เกิด--%>
                                                            <%--  <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    วันเดือนปี เกิด<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_BIRTHDATE" Format="dd/MM/yyyy" DisplayDateFormat="dd/MM/yyyy" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:TextBox ID="txtSCP_CUSTOMER_BIRTHDATE" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>


                                                                </div>
                                                            </div>--%>

                                                            <%--อาชีพ--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    อาชีพ<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlSCP_CUSTOMER_OCCUPATION" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="กรุณาระบุอาชีพอื่นๆ" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic" ClientValidationFunction="ValidateddlSCP_CUSTOMER_OCCUPATION" EnableClientScript="true" ControlToValidate="ddlSCP_CUSTOMER_OCCUPATION"></asp:CustomValidator>

                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_OCCUPATION" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="เจ้าของกิจการ / ธุรกิจส่วนตัว" Text="เจ้าของกิจการ / ธุรกิจส่วนตัว"></asp:ListItem>
                                                                        <asp:ListItem Value="พนักงานประจำ / ลูกจ้างประจำ" Text="พนักงานประจำ / ลูกจ้างประจำ"></asp:ListItem>
                                                                        <asp:ListItem Value="พนักงานพาร์ทไทม์ / ลูกจ้างรายวัน" Text="พนักงานพาร์ทไทม์ / ลูกจ้างรายวัน"></asp:ListItem>
                                                                        <asp:ListItem Value="ราชการ / รัฐวิสาหกิจ" Text="ราชการ / รัฐวิสาหกิจ"></asp:ListItem>
                                                                        <asp:ListItem Value="รับจ้างอิสระทั่วไป" Text="รับจ้างอิสระทั่วไป"></asp:ListItem>
                                                                        <asp:ListItem Value="ว่างงาน" Text="ว่างงาน"></asp:ListItem>
                                                                        <asp:ListItem Value="อื่นๆ" Text="อื่นๆ โปรดระบุ"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:TextBox ID="txtSCP_CUSTOMER_OCCUPATION_OTHER" runat="server" CssClass="form-control" placeholder="อื่นๆ โปรดระบุ"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <%--รายได้ต่อเดือน--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    รายได้ต่อเดือน<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlSCP_CUSTOMER_INCOME" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_INCOME" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="น้อยกว่า 8,000 บาท" Text="น้อยกว่า 8,000 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="8,001-15,000 บาท" Text="8,001-15,000 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="15,001-30,000 บาท" Text="15,001-30,000 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="มากกว่า 30,000 บาท" Text="มากกว่า 30,000 บาท"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>

                                                            <%--วิธีการรับเงินเดือน--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    วิธีการรับเงิน<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlSCP_CUSTOMER_INCOME" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_INCOME_TYPE" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="รับเงินเข้าบัญชีเป็นรายวัน" Text="รับเงินเข้าบัญชีเป็นรายวัน"></asp:ListItem>
                                                                        <asp:ListItem Value="รับเงินเข้าบัญชีเป็นรายอาทิตย์" Text="รับเงินเข้าบัญชีเป็นรายอาทิตย์"></asp:ListItem>
                                                                         <asp:ListItem Value="รับเงินเข้าบัญชีเป็นรายเดือน" Text="รับเงินเข้าบัญชีเป็นรายเดือน"></asp:ListItem>
                                                                         <asp:ListItem Value="รับเงินสดนำเข้าบัญชีธนาคาร ด้วยตัวเอง" Text="รับเงินสดนำเข้าบัญชีธนาคาร ด้วยตัวเอง"></asp:ListItem>
                                                                         <asp:ListItem Value="รับเงินสด ไม่นำเข้าธนาคาร" Text="รับเงินสด ไม่นำเข้าธนาคาร"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>

                                                            <%--ปัจจุบันท่านมีบัตรเครดิต และ/หรือ บัตรกดเงินสดหรือไม่--%>
                                                           <%-- <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    ปัจจุบันท่านมีบัตรเครดิต และ/หรือ บัตรกดเงินสดหรือไม่<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlSCP_CUSTOMER_OTHER" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_OTHER" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="มี บัตรเครดิต/บัตรกดเงินสด" Text="มี"></asp:ListItem>
                                                                        <asp:ListItem Value="ไม่มี บัตรเครดิต/บัตรกดเงินสด" Text="ไม่มี"></asp:ListItem>
                                                                    </asp:DropDownList>

                                                                </div>
                                                            </div>--%>

                                                            <%-- *ข้อมูลเพิ่มเติม โปรดระบุ  --%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    *ข้อมูลเพิ่มเติม โปรดระบุ
                                                                                <asp:TextBox ID="txtSCP_CUSTOMER_REMARK" runat="server" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="row">
                                                            <%-- ให้ความยินยอม  --%>
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <asp:CheckBox ID="ckbAccept1" runat="server" />
                                                                    <small style="color: #ed174b">*</small><small>ข้าพเจ้ายินยอมให้บริษัท ซิงเกอร์ประเทศไทย จํากัด (มหาชน) และกลุ่มบริษัท
เก็บรวบรวม จัดเก็บรักษา ใช้ ประมวลผล หรือเปิดเผยข้อมูลส่วนบุคคลของข้าพเจ้า เพื่อนำเสนอผลิตภัณฑ์ บริการ หรือส่งเสริมการขายต่างๆ 
หรือเพื่อการวิจัยตลาด ติดตาม ประมวลผลและวิเคราะห์ข้อมูลของข้าพเจ้าเพื่อการปรับปรุงผลิตภัณฑ์และ/หรือบริการ 
ติดตามการใช้บริการ หรือการพัฒนาผลิตภัณฑ์และ/บริการให้เหมาะสมกับความต้องการของข้าพเจ้า ไม่ว่าจะนำเสนอโดยบริษัท 
หรือกลุ่มบริษัท หรือพันธมิตรทางธุรกิจในการจัดหาผลิตภัณฑ์และการให้บริการแก่บริษัทหรือกลุ่มบริษัท
                                                                    </small>
                                                                    <br />
                                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="กรุณายินยอม" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic" ClientValidationFunction="ValidateCheckBoxCkbAccept1" EnableClientScript="true"></asp:CustomValidator>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <%-- คลิ๊กส่งข้อมูล  --%>
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <asp:Button ID="submit" runat="server" CssClass="btn btn-block btn-primary " Text="คลิกส่งข้อมูล" OnClick="submit_Click" ValidationGroup="valid" />
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <%-- card body  --%>
                                                </div>
                                                <%--<div class="card card-primary">--%>
                                            </div>
                                        </div>
                                    </div>

                                    <div style="margin-top: 24px;"></div>
                                    <div class="row">
                                        <div class="col-lg-6 text-center" style="color: #FFFFFF">
                                            <a href="https://www.singerthai.co.th/th/home" target="_blank" class="form-group">
                                                <img class="img-fluid" src="dist/img/SingerLogo05_470.png" alt="Photo" style="margin-bottom: 14px; width: 150px;" />
                                                <p style="color: #FFFFFF">บริษัท ซิงเกอร์ประเทศไทย จำกัด (มหาชน)</p>
                                            </a>
                                        </div>

                                        <!-- /.col -->
                                        <div class="col-lg-6 text-center" style="color: #FFFFFF">
                                            <h6><i class="fas fa-phone-square-alt"></i>&nbsp;&nbsp;ช่องทางการติดต่อ</h6>
                                            <small>Call Center 02-234-7171 (09.00-16.00)</small>
                                        </div>
                                        <!-- /.col -->
                                    </div>

                                </div>
                            </div>
                        </div>

                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
        </form>

    </div>

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>

    <script type='text/javascript'>
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode

            if (charCode == 46) {
                var inputValue = $("#inputfield").val()
                if (inputValue.indexOf('.') < 1) {
                    return true;
                }
                return false;
            }
            if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>

    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TNN9TP8"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->

</body>
</html>
