<%@include file="../shared/header.jsp"%>
<div class="container">
    <div  class="h3 text-center">Edit Navigation Items</div>

    <form action="savenav.jsp" method="post">
        <label>Your Web Site Name:</label>    
        <input type="text" class="form-control" required="required" name="websiteName" placeholder="Enter website name...">
        <label>Link 1:</label>    
        <input type="text" class="form-control" required="required" name="linkOne" placeholder="Enter first link name...">
        <label>Link 2:</label>    
        <input type="text" class="form-control" required="required" name="linkTwo"  placeholder="Enter second link name...">
        <label>Link 3:</label>    
        <input type="text" class="form-control" required="required" name="linkThird"  placeholder="Enter third link name...">
        <label>Link 4:</label>    
        <input type="text" class="form-control" required="required" name="linkFourth"  placeholder="Enter fourth link name...">
        <button class="btn btn-success">Save Navigation Items</button> 
        <a href="../index.jsp" class="btn btn-danger" id="cancel">Cancel</a>
    </form>
</div>
<script>
    $(document).on("ready", function () {
        $("#cancel").click(function () {
            var confirm = window.confirm("Are you sure you want to cancel.You will be redirected to home page??");
            if (confirm) {
                document.location.href = "../index.jsp?cancel";
            }
            return false;
        });
    });
</script>



<%@include file="../shared/footer.jsp"%>
