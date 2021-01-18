<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormTab.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RS301000.aspx.cs" Inherits="Page_RS301000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormTab.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PhoneRepairShop.RSSVWorkOrderEntry"
        PrimaryView="WorkOrders"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="WorkOrders" Width="100%" Height=" " AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ControlSize="SM" runat="server" LabelsWidth="S" ID="CstPXLayoutRule15" StartRow="True" ></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="CstPXSelector10" DataField="OrderNbr" ></px:PXSelector>
			<px:PXDropDown runat="server" ID="CstPXDropDown14" DataField="Status" ></px:PXDropDown>
			<px:PXCheckBox runat="server" ID="CstPXCheckBox18" DataField="Hold" />
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit6" DataField="DateCreated" ></px:PXDateTimeEdit>
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit5" DataField="DateCompleted" ></px:PXDateTimeEdit>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule18" ColumnSpan="3" ></px:PXLayoutRule>
			<px:PXTextEdit runat="server" ID="CstPXTextEdit7" DataField="Description" ></px:PXTextEdit>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule17" StartColumn="True" ControlSize="XM" LabelsWidth="S"></px:PXLayoutRule>
			<px:PXSegmentMask CommitChanges="true" runat="server" ID="CstPXSegmentMask4" DataField="CustomerID" ></px:PXSegmentMask>
			<px:PXSelector runat="server" ID="CstPXSelector13" DataField="ServiceID" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector8" DataField="DeviceID" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector3" DataField="Assignee" ></px:PXSelector>
			<px:PXDropDown runat="server" ID="CstPXDropDown12" DataField="Priority" ></px:PXDropDown>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule19" StartColumn="True" ControlSize="M" LabelsWidth="S"/>
			<px:PXTextEdit runat="server" ID="CstPXTextEdit9" DataField="InvoiceNbr" ></px:PXTextEdit>
			<px:PXNumberEdit runat="server" ID="CstPXNumberEdit11" DataField="OrderTotal" ></px:PXNumberEdit></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXTab ID="tab" runat="server" Width="100%" Height="150px" DataSourceID="ds" AllowAutoHide="false">
		<Items>
			<px:PXTabItem Text="Repair Items">
				<Template>
					<px:PXGrid runat="server" ID="CstPXGrid1" SkinID="Details" Width="100%">
						<Levels>
							<px:PXGridLevel DataMember="RepairItems" /></Levels>
						<AutoSize Enabled="True" /></px:PXGrid></Template>
			</px:PXTabItem>
			<px:PXTabItem Text="Labor">
				<Template>
					<px:PXGrid runat="server" ID="CstPXGrid2" SkinID="Details" Width="100%">
						<Levels>
							<px:PXGridLevel DataMember="Labor" /></Levels>
						<AutoSize Enabled="True" /></px:PXGrid></Template>
			</px:PXTabItem>
		</Items>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
	</px:PXTab>
</asp:Content>
