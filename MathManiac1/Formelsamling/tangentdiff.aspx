<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="tangentdiff.aspx.cs" Inherits="MathManiac1.Formelsamling.tangentdiff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-9">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Formel
                            </th>
                            <th>Eksempel
                            </th>
                            <th>Illustration
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td>Tangentligningen for f(x) i punktet $$A(x_0,f(x_0))$$ er givet ved:
                    $$y_t=f'(x_0)(x-x_0)+f(x_0)$$
                            </td>
                            <td class="warning">kommer
                            </td>
                            <td>
                                <img id="Img7" class="contentIllustration" runat="server" src="~/Assets\tangentligning.png" alt="Sample Photo" />
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
