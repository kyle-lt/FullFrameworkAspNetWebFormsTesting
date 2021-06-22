<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iFrameUser.aspx.cs" Inherits="FullFrameworkAspNetWebFormsTesting.iFrameUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>iFrameUser</title>
        <!-- AppDynamics Javascript Agent -->
    <script charset='UTF-8'>
        window['adrum-start-time'] = new Date().getTime();
        (function (config) {
            config.appKey = 'AD-AAB-ABE-WWU';
            config.adrumExtUrlHttp = 'http://cdn.appdynamics.com';
            config.adrumExtUrlHttps = 'https://cdn.appdynamics.com';
            config.beaconUrlHttp = 'http://col.eum-appdynamics.com';
            config.beaconUrlHttps = 'https://col.eum-appdynamics.com';
            config.xd = { enable: false };
        })(window['adrum-config'] || (window['adrum-config'] = {

            userEventInfo: {

                "PageView": function (context) {
                    // Debugging ASP.NET inline expression value
                    var username = "<%: Context.User.Identity.GetUserName()  %>";
                    if (username == "") {
                        console.log("No username, not logged in!");
                    }
                    else {
                        console.log("username = " + username);
                    }
                    return {
                        userData: {
                            // ** Example to grab value from sessionStorage **
                            //sessionId: window.sessionStorage.getItem('sessionId')
                            // ** Example to grab data from ASP.NET inline expression **
                            username: "<%: Context.User.Identity.GetUserName()  %>"
                        }
                    }
                }

            }

        }));
    </script>
    <script src='//cdn.appdynamics.com/adrum/adrum-latest.js'></script>
</head>
<body>
    <h2>iFrameUser Page</h2>
    <p>This page is an iFrame for User data.</p>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
