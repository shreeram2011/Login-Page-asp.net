<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LoginPage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            height: 47px;
        }
        .auto-style3 {
            height: 26px;
            text-align: center;
        }
        .auto-style5 {
            width: 531px;
            height: 26px;
            text-align: left;
        }
        .auto-style6 {
            height: 26px;
            text-align: right;
        }
        
        #TextBox1{
            padding:10px;
            border-radius:10px;
        }

        #TextBox2{
            padding:10px;
            border-radius:10px;
        }
        
        #Button1{
              width:150px;
              cursor:pointer;
              margin-top:15px;
              padding: 10px 20px;
              border: none;
              font-size: 15px;
              color: #fff;
              border-radius: 7px;
              font-weight: 700;
              text-transform: uppercase;
              transition: 0.5s;
              transition-property: box-shadow;
        }

        #Button1 {
              background: black;
              box-shadow: 0 0 20px black;
        }

        #Button1:hover {
              box-shadow: 0 0 5px black,
                          0 0 25px black,
                          0 0 50px black,
                          0 0 100px black;
        }
          
          #Button2{
              cursor:pointer;
              margin-top:15px;
              padding: 10px 20px;
              border: none;
              font-size: 15px;
              color: #fff;
              border-radius: 7px;
              font-weight: 700;
              text-transform: uppercase;
              transition: 0.5s;
              transition-property: box-shadow;
          }

        #Button2 {
          background: rgb(0,140,255);
          box-shadow: 0 0 20px rgb(0,140,255);
        }

        #Button2:hover {
          box-shadow: 0 0 5px rgb(0,140,255),
                      0 0 25px rgb(0,140,255),
                      0 0 50px rgb(0,140,255),
                      0 0 100px rgb(0,140,255);
        }
        
          #Button5{
              cursor:pointer;
              margin-top:15px;
              padding: 10px 20px;
              border: none;
              font-size: 15px;
              color: #fff;
              border-radius: 7px;
              font-weight: 700;
              text-transform: uppercase;
              transition: 0.5s;
              transition-property: box-shadow;
          }

        #Button5 {
          background: rgb(0,140,255);
          box-shadow: 0 0 20px rgb(0,140,255);
        }

        #Button5:hover {
          box-shadow: 0 0 5px rgb(0,140,255),
                      0 0 25px rgb(0,140,255),
                      0 0 50px rgb(0,140,255),
                      0 0 100px rgb(0,140,255);
        }
        #Button3{
            padding:6px;
            background-color:transparent;
            cursor:pointer;
            border:none;
        }
        #Button3:hover{
            border-bottom:2px solid black;
            color:blue;
        }
        
        #HyperLink1{
            text-decoration:none;
        }
        *{
            padding:0;
            margin:0;
            box-sizing:border-box;
        }
        html,body{
            width:100%;
            height:100%;
        }
        main{
            width:100%;
            height:100%;
            display:flex;
            animation: fadeIn 1s ease-in-out forwards;
        }
        #pic {
            width: 60%;
            height: 100%;
            background-image: url('https://images.unsplash.com/photo-1684369175833-4b445ad6bfb5?q=80&w=1996&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover;
            background-position: center;
            opacity: 0; 
            animation: fadeIn 2s ease-in-out forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        #login{
            width:40%;
            height:100%;
            position:relative;
        }

        #page{
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            width:400px;
            height:400px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            left: 54%;
            top: -100%;
            width: 395px;
        }
        .animated-input {
        opacity: 0;
        animation: fadeIn 1s ease-in-out forwards;
        animation-duration:2s;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-10px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
        .auto-style9 {
            width: 531px;
            font-size: large;
        }
        .auto-style10 {
            opacity: 0;
            animation: fadeIn 1s ease-in-out forwards;
            animation-duration: 2s;
            font-size: large;
            margin-left: 42;
        }
        .auto-style11 {
            opacity: 0;
            animation: fadeIn 1s ease-in-out forwards;
            animation-duration: 2s;
            font-size: large;
            margin-top: 17;
        }
        .auto-style12 {
            width: 531px;
            font-size: large;
            height: 32px;
        }
        .auto-style13 {
            height: 32px;
        }
        .auto-style14 {
            width: 173px;
        }
        .auto-style15 {
            font-size: medium;
        }
        .auto-style17 {
            height: 24px;
            text-align: center;
        }
        
        .auto-style19 {
            font-size: large;
        }
        
        .auto-style20 {
            font-size: x-large;
        }

        #TextBox3{
            padding:10px;
            border-radius:10px;
        }
        #TextBox4{
            padding:10px;
            border-radius:10px;
        }
        #TextBox5{
            padding:10px;
            border-radius:10px;
        }
        #Button4{
            outline:0;
            padding:6px;
            border:none;
            background-color:transparent;
        }
        #Button4:hover{
            cursor:pointer;
            color:blue;
            border-bottom:solid 2px black;
        }
    </style>
</head>
<body>
    <main>
        <div id="pic"></div>
        <div id="login">
        <form id="form1" runat="server">
            <div id="page" class="auto-style8">
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
                    <asp:View ID="View1" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2" colspan="2"><strong>Welcome Back !</strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style3" colspan="2">Please enter your details<br />
                                    <br />
                                    <br /> </td>
                            </tr>
                            <tr class="fade-in">
                                <td class="auto-style12">Email</td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" CssClass="auto-style10"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="fade-in">
                                <td class="auto-style9">Password</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="auto-style11" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" CssClass="auto-style15" />
                                    <span class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                </td>
                                <td class="auto-style6">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.google.com" CssClass="auto-style15">Forgot Password?</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="auto-style7">
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3" colspan="2">
                                    <asp:Button ID="Button2" runat="server" Text="Sign Up with Google" OnClick="Button2_Click"  href="https://accounts.google.com/v3/signin/identifier?continue=https%3A%2F%2Fwww.google.com%3Fhl%3Den-US&ec=GAlA8wE&hl=en&flowName=GlifWebSignIn&flowEntry=AddSession&dsh=S-754440262%3A1704991407264457&theme=glif"/>
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="auto-style7">Don&#39;t have an account?&nbsp;
                                    <asp:Button ID="Button3" runat="server" Text="Sign Up" OnClick="Button3_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style14">Have an Account ?</td>
                                <td>
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Sign In" />
                                </td>
                            </tr>
                            <tr id="name">
                                <td colspan="2">
                                    <br class="auto-style19" />
                                    <br class="auto-style19" />
                                    <span class="auto-style15"><strong>Name</strong></span><br class="auto-style19" />
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style20"></asp:TextBox>
                                    <br class="auto-style19" />
                                    <br class="auto-style19" />
                                    <br class="auto-style19" />
                                    <strong><span class="auto-style15">Email</span></strong><br class="auto-style19" />
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style20" TextMode="Email"></asp:TextBox>
                                </td>
                            </tr>
                            <caption>
                                <br />
                                <br />
                            </caption>
                            </tr>
                            <tr>
                                <td class="auto-style19" colspan="2"><span class="auto-style19"><strong>
                                    <br />
                                    <br />
                                    Password&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" CssClass="auto-style19" ErrorMessage="only a-z,A-Z and 0-9 are allowed" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br class="auto-style19" />
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style20" TextMode="Password" Width="375px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <br />
                                    <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" Text="I have read and agree with Terms of Service and our Privacy Policy." />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style17" colspan="2">
                                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Sign Up" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </div>
        </form>
        </div>
    </main>
</body>
</html>
