//salary.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication4.Models
{
    public class salary
    {
        public string name { get; set; }
        public float sal { get; set; }
        public float tax { get; set; }
        public float nsal { get; set; }

    }
}
//employee.controler
    public class employeeController : Controller
    {
        // GET: employee
        public ActionResult Index()
        {
            return View(new salary());
        }
        [HttpPost]
        public ActionResult Index(salary s)
        {

            if (s.sal > 50000)
            {
                s.tax = s.sal * 10 / 100;
            }
            else if (s.sal > 30000)
            {
                s.tax = s.sal * 5 / 100;
            }
            else
            {
                s.tax = 0;
            }
            s.nsal = s.sal - s.tax;
            return View(s);
        }
    }

}
//index.cshtml
@model WebApplication4.Models.salary
@{
    ViewBag.Title = "Index";
}
<html>
<head>
</head>
<body>
    <h2>Employee salary calculation</h2>
    <div class="row">
        @using (Html.BeginForm("/Index", "employee", FormMethod.Post))
        {
            <div class="form-group">
                <label for="name">Employee Name</label>
                <input type="text" class="form-control" id="name" name="name" value="@Model.name" />
            </div>
            <div class="form-group">
                <label for="salary">Basic salary</label>
                <input type="text" class="form-control" id="sal" name="sal" value="@Model.sal" />
            </div>
            <div class="form-group">
                <label for="tax">Tax</label>
                <input type="text" class="form-control" id="tax" name="tax" value="@Model.tax" />
            </div>
            <div class="form-group">
                <label for="nsal">Netpay</label>
                <input type="text" class="form-control" id="nsal" name="nsal" value="@Model.nsal" />
            </div>
            <button type="submit" class="btn btn-info" id="add" value="add">ok</button>
        }
    </div>
</body>
</html>



