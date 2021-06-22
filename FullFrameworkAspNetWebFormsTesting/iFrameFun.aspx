<%@ Page Title="iFrameFun" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="iFrameFun.aspx.cs" Inherits="FullFrameworkAspNetWebFormsTesting.iFrameFun" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This page contains a few iFrames</h3>
    <iframe src="iFrameUser.aspx"></iframe>
    <iframe src="iFrameProduct.aspx"></iframe>
</asp:Content>
