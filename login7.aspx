logincontroller
        public ActionResult Autherize(login001.Models.Table_1 table_1) {
         using(mcaEntities db = new mcaEntities())
            {
                var userDetails = db.Table_1.Where(X => X.username == table_1.username && X.password == table_1.password).FirstOrDefault();
                if (userDetails ==null)
                {
                    return View("Index", table_1);
                }
                else
                {
                    return RedirectToAction("Index", "Home");
                }
            }        
        }
    }
}


index.cshtml
@model login001.Models.Table_1
@{
    ViewBag.Title = "Index";
}

<h2>Index</h2>
<!DOCTYPE html>
<html>
<head></head>
<body>
    @using (Html.BeginForm("Autherize", "login", FormMethod.Post))
    {
        @Html.LabelFor(model => model.username)<br />
        @Html.EditorFor(model => model.username)<br />
        @Html.ValidationMessageFor(model => model.username)<br />
        @Html.LabelFor(model => model.password)<br />
        @Html.EditorFor(model => model.password)<br />
        @Html.ValidationMessageFor(model => model.password)<br />
        <input type="submit" name="name" value="login"/>
    }
</body>
</html>


table_1
    public partial class Table_1
    {
        public int user_id { get; set; }
        [DisplayName("username")]
        [Required(ErrorMessage ="this field is requied")]
        public string username { get; set; }
        [DataType(DataType.Password)]
        [Required(ErrorMessage = "this field is requied")]
        public string password { get; set; }
    }
}


