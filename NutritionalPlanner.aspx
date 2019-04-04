<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" MaintainScrollPositionOnPostBack="true" CodeBehind="NutritionalPlanner.aspx.cs" Inherits="NutritionPlan._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div >
    
        <h1 class="text-center"><span style="font-size: 55px; text-shadow:2px 2px blue; color: #f45f2d; font-weight: bolder; font-style: normal; text-decoration: underline; text-align: left;">Nutritional Planner</span></h1>
    
    </div>    

     <div class="container1" id="main">

        
          <h2>Calorie Calculator & Meal Planning</h2>
          <p style="text-shadow:1px 1px blue;">This page has a simple but accurate calorie calculator, which shows exactly how many calories you should eat to lose, gain or maintain weight. It accompanies an example meal plan which can be used as a guideline when building a nutritional plan. 
             To accurately determine your daily calorie amount above; enter your gender, age, weight and height into the calculator. Do your best estimate of how much exercise you will be doing and your goal.
             Meal planning makes a big difference when it comes to sticking to a dietary change. It is a vital part of eating a healthy diet and there are many benefits of meal planning. From saving money, time and adding variety, 
             it can be an essential tool in tracking and achieving your goals. </p>


         <div class ="calcexercise">
             
         <div class="caloriecontainer">
            
             <div class ="requiredfields">
        <p>  <asp:RequiredFieldValidator 
             id="TextBoxAgeRequiredFieldValidator" 
             runat="server" 
             ErrorMessage="Age is required" 
             ControlToValidate="TextBoxAge">
         </asp:RequiredFieldValidator>
        </p>
        
        <p>
        <asp:RequiredFieldValidator 
             id="TextBoxHeightRequiredFieldValidator" 
             runat="server" 
             ErrorMessage="Height is required" 
             ControlToValidate="TextBoxHeight">
         </asp:RequiredFieldValidator>
        </p>

         <p>
          <asp:RequiredFieldValidator 
             id="TextBoxWeightRequiredFieldValidator" 
             runat="server" 
             ErrorMessage="Weight is required" 
             ControlToValidate="TextBoxWeight">
         </asp:RequiredFieldValidator>
        </p>

             </div>
    <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label2" runat="server" Text="Gender:" BackColor="#2E63E7" BorderColor="White" BorderStyle="Ridge" Font-Bold="True" Font-Size="Medium" Width="115px" Height="50px"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:DropDownList ID="GenderList" runat="server" ValidateRequestMode="Enabled" Height="50px" Width="170px" >
                        <asp:ListItem>Select:</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>       
                    </asp:DropDownList>
                </div> 
     </div>
    
     <div class="row">
                <div class="col-md-4">
                        <asp:Label ID="Label3" runat="server" Text="Age:" BackColor="#2E63E7" BorderColor="White" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" Width="115px" Height="50px"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="TextBoxAge" runat="server" MaxLength="3" ToolTip="Please enter age." ValidateRequestMode="Enabled" Height="50px" Width="170px"></asp:TextBox>
                </div>
     </div>


    <div class="row">
                 <div class="col-md-4">
                        <asp:Label ID="Label4" runat="server" Text="Height(cm):" BackColor="#2E63E7" BorderColor="White" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" Height="50px" Width="115px"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="TextBoxHeight" runat="server" MaxLength="3" ToolTip="Please enter Height in cm." ValidateRequestMode="Enabled" Height="50px" Width="170px"></asp:TextBox>
                </div>
    </div>

    <div class="row">
                <div class="col-md-4">
                        <asp:Label ID="Label5" runat="server" Text="Weight(kg):" BackColor="#2E63E7" BorderColor="White" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" Height="50px" Width="115px"></asp:Label>
                </div>

                <div class="col-md-5">
                    <asp:TextBox ID="TextBoxWeight" runat="server" MaxLength="3" ToolTip="Please enter Weight in kg." ValidateRequestMode="Enabled" Height="50px" Width="170px"></asp:TextBox>
                </div>
    </div>

    <div class="row">         
                 <div class="col-md-4">
                            <asp:Label ID="Label1" runat="server" Text="Activity Level:" BackColor="#2E63E7" BorderColor="White" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" Height="50px" Width="115px"></asp:Label>
                  </div>


                  <div class="col-md-5">
                    <asp:DropDownList ID="ActivityList" runat="server" ValidateRequestMode="Enabled" Height="50px" Width="171px" >
                        <asp:ListItem>Select:</asp:ListItem>
                        <asp:ListItem>Little to no exercise</asp:ListItem>
                        <asp:ListItem>Light Exercise (1-3 days per week)</asp:ListItem>
                        <asp:ListItem>Moderate Exercise (3-5 days per week)</asp:ListItem>
                        <asp:ListItem>Heavy Exercise (6-7 days per week)</asp:ListItem>   
                        <asp:ListItem>Very Heavy Exercise (twice per day, extra heavy workouts)</asp:ListItem>   
                    </asp:DropDownList>
                </div> 
    </div>

    <div class="row">         
                 <div class="col-md-4">
                            <asp:Label ID="Label6" runat="server" Text="Goal:" BackColor="#2E63E7" BorderColor="White" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" Width="115px" Height="50px"></asp:Label>
                  </div>


                  <div class="col-md-5">
                    <asp:DropDownList ID="GoalList" runat="server" ValidateRequestMode="Enabled" Height="50px" Width="170px" >
                        <asp:ListItem>Select:</asp:ListItem>
                        <asp:ListItem>Lose 1 kg per week</asp:ListItem>
                        <asp:ListItem>Lose 0.75 kg per week</asp:ListItem>
                        <asp:ListItem>Lose 0.5 kg per week</asp:ListItem>
                        <asp:ListItem>Lose 0.25 kg per week</asp:ListItem>   
                        <asp:ListItem>Stay the same weight</asp:ListItem>   
                        <asp:ListItem>Gain 0.25 kg per week</asp:ListItem>
                        <asp:ListItem>Gain 0.5 kg per week</asp:ListItem>   
                        <asp:ListItem>Gain 0.75 kg per week</asp:ListItem>  
                        <asp:ListItem>Gain 1 kg per week</asp:ListItem>  

                    </asp:DropDownList>
                </div> 
    </div>

    <div class="row">
                <div class="col-md-4">
                    <asp:Button ID="Button1" AutoPostback="False" runat="server" Text="Calculate" OnClick="Button1_Click" CssClass="btn btn-success" Height="50px" Width="115px"/>                  
                </div>
                 
                <div class="col-md-8">
                    <asp:Label ID="LabelCalculate" runat="server" BorderColor="#2E63E7" ForeColor="#2E63E7" BackColor="White" Font-Bold="True" Font-Size="Small" Width="121px"></asp:Label>    
                </div>         
     </div>
     
     <div class="row">
         <div class="col-md-4">
                    <asp:Button ID="Button1_Reset" AutoPostback="False" runat="server" Text="Reset" OnClick="Button1_Reset_Click" CssClass="btn btn-primary" Height="25px" Width="115px"/>                  
         </div>
     </div>
             
   

        </div>

         
    <div class="maintable">
        <table class="vitamins">
        <thead>
            <tr>
                <th class="rowmeal">Meal</th>
                <th class="rowcal">1200 Calories</th>
                <th class="rowcall">2000 Calories</th>
                <th class="rowcalll">3200 Calories</th>
            </tr>
        </thead>
        <tfoot>
        </tfoot>
        <tbody>
             <tr>
                 <td>
                  <strong> Breakfast </strong>
                </td>
                 <td class="text-center">
                     All-bran cereal (125)
                     Milk (50)
                     Banana (90)
                 </td>
                 <td class="text-center">
                      Buttered toast (150)
                    Egg (80)
                    Banana (90)
                    Almonds (170)
                 </td>
                 <td class="text-center">
                    Pesto Scrambled Eggs (470)
                     Nonfat Yogurt (275)
                 </td>
             </tr>
             <tr>
                 <td >
                     <strong> Snack </strong>
                 </td>
                 <td class="text-center">
                     Cucumber (30)
                     Avocado dip (50)
                 </td>
                 <td class="text-center">
                     Greek yogurt (120)
                     Blueberries (40)
                 </td>
                 <td class="text-center">
                     Caprese Sandwich (350)
                 </td>
             </tr>
             <tr>
                 <td>
                    <strong> Total </strong>
                 </td>
                 <td class="text-center">
                     <strong> 345 Calories </strong>
                 </td>
                 <td class="text-center">
                     <strong> 650 Calories </strong>
                 </td>
                 <td class="text-center">
                     <strong> 1095 Calories </strong>
                 </td>
             </tr>
             <tr>
                 <td>
                     <strong> Lunch </strong>
                </td>
                 <td class="text-center">
                     Grilled cheese with tomato (300)
                     Salad (50)
                 </td>
                 <td class="text-center">
                     Grilled chicken (225)
                     Grilled vegetables (125)
                     Pasta (185)
                 </td>
                 <td class="text-center">
                     Spicy Tuna & Cottage Cheese Bowl (480)
                     Avocado (320)
                 </td>
             </tr>
             <tr>
                 <td>
                     <strong> Snack </strong>
                 </td>
                 <td class="text-center">
                     Walnuts (100)
                 </td>
                 <td class="text-center">
                     Hummus (50)
                     Baby carrots (35)
                     Crackers (65)
                 </td>
                 <td class="text-center">
                     Carrot & Humus (135)
                     Peanut Butter & Celery (210)
                 </td>
             </tr>
             <tr>
                 <td>
                     <strong> Total </strong>
                 </td>
                 <td class="text-center">
                     <strong> 450 Calories </strong>
                 </td>
                 <td class="text-center">
                     <strong> 685 Calories </strong>
                 </td>
                 <td class="text-center">
                     <strong> 1145 Calories </strong>
                 </td>
             </tr>

             <tr>
                 <td>
                     <strong> Dinner </strong>
                </td>
                 <td class="text-center">
                     Grilled Chicken (200)
                     Brussel sprouts (100)
                     Quinoa (105)
                 </td>
                 <td class="text-center">
                     Grilled salmon (225)
                     Brown rice (175)
                     Green beans (100)
                     Walnuts (165)
                 </td>
                 <td class="text-center">
                     Rice Pudding (830)
                     Roasted Green Beans (130)
                 </td>
             </tr>
             <tr>
                 <td>
                     <strong>Total</strong>
                 </td>
                 <td class="text-center">
                     <strong> 405 Calories </strong>
                 </td>
                 <td class="text-center">
                     <strong> 665 Calories </strong>
                 </td>
                 <td class="text-center">
                     <strong> 960 Calories </strong>
                 </td>
             </tr>

            </tbody>
         </table>
         </div>

       </div>
    </div>
</asp:Content>
