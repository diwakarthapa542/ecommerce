<%@ page language="C#" autoeventwireup="true" codefile="Login.aspx.cs" inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn</title>

    <link class="js-stylesheet" href="css/light.css" rel="stylesheet"/>
    <script src="js/settings.js"></script>

    <style>
        body { /*full body*/
            background: #B0AEAD;
        }

        .bold { /*top card ko text*/
           color:azure;
            font-weight: 600;
        }
        .card /*तल्लो card*/
        {
            background:#eaede8;
        }
        .bodyText /*तल को text*/ {
            /* font-family:auto;*/
            font-size: large;
        }
    </style>

</head>
<body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-behavior="sticky">
    <div class="main d-flex justify-content-center w-100">
        <main class="content d-flex p-0">
            <div class="container d-flex flex-column">
                <div class="row h-100">
                    <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                        <div class="d-table-cell align-middle">
                            
                                <div class="text-center mt-4" style="letter-spacing: 2px; box-shadow: 0 5px 10px grey;
                                    padding: 5px 0 5px 0; background-color: #3672A1">
                                    <h3 class="h2 bold">सवारी साधन व्यवस्थापन प्रणाली </h3>
                                    <%-- <h3 class="h3 bold"> गाउँ कार्यपालिकाको कार्यालय </h3>
                              <h5 class="h3 bold"> उदयपुर, नेपाल </h5>

                                    <h4 class="text-danger font-weight-bold" style="font-weight: 800!important;">सवारी साधन व्यवस्थापन प्रणाली </h4> --%>

                                </div>
                            
                             <div class="background" style="background: #97c4c4">
                            <div class="card" style="box-shadow: 0 5px 10px grey; margin-top: 5px;">
                                <div class="card-body">
                                    <div class="m-sm-4">
                                        <div class="text-center">

                                            <img src="img/logo.png" width="120" height="100" />
                                        </div>
                                        <form runat="server">
                                            <div class="form-group">
                                                <label class="bodyText">User Name</label>

                                                <asp:TextBox ID="txtusername" CssClass="form-control form-control-lg" runat="server" placeholder="Enter your username" required="required"></asp:TextBox>

                                            </div>
                                            <div class="form-group">
                                                <label class="bodyText">Password</label>
                                                <asp:TextBox ID="txtpassword" type="password" CssClass="form-control form-control-lg" runat="server" placeholder="" required="required"></asp:TextBox>



                                            </div>

                                            <small>
                                                <a href="ForgotPassword.aspx">Forgot password?</a>
                                            </small>
                                            <div class="text-center mt-3">
                                                <asp:Button ID="btnlogin" CssClass="btn btn-lg btn-primary" runat="server" Text="Login" OnClick="btnlogin_Click"></asp:Button>


                                                <!-- <button type="submit" class="btn btn-lg btn-primary">Sign in</button> -->
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                                 </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <script src="js/app.js"></script>

</body>
</html>
