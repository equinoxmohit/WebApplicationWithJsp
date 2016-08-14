<%@include file="../shared/header.jsp"%>
<div class="container">
    <div class=" h3 text-center">Edit Content:</div>

    <form action="savethird.jsp" method="post">
        <label>Edit Content:</label>    
        <textarea rows="20" class="form-control" required="required" name="content" placeholder="Write whatever you want to..."></textarea>
        <button class="btn btn-success">Save  Content</button>
        <a href="#" class="btn btn-danger" id="clear">Clear</a>
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

        $("#clear").click(function () {
            var clear = window.confirm("Are you sure you want to clear.All written words will be deleted??");
            if (clear) {
                $(".form-control").val("");
            }
            return false;
        });

    });


</script>

<%@include file="../shared/footer.jsp"%>
