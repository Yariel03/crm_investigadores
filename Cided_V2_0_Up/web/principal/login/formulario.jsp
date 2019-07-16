<%-- 
    Document   : formulario
    Created on : 15/07/2019, 01:19:47 PM
    Author     : alex-
--%>
<div class="row mt-5">
    <div class="col col-sm-1 col-md-2 col-lg-4" ></div>
    <div class="col-12 col-sm-10 col-md-8 col-lg-4 shadow p-3 mb-5 rounded bg-light">
        <form>
    
  <div class="form-group">
    <label for="txtCedula">ID</label>
    <input type="text" class="form-control" id="txtCedula"  placeholder="0804567890" maxlength="10" required>
    <small id="mensaje" class="form-text">We'll never share your info with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="txtPass">Password</label>
    <input type="password" class="form-control" id="txtPass" placeholder="Password" required>
  </div>

            
                
    
           
            <button type="button" id="btnLogin" class="btn btn-danger" onclick="login()">Login</button>
  <a href="" class="danger text-danger ml-5" >Help?</a>
</form>

</div>
    <div class="col col-sm-1 col-md-2 col-lg-4"></div>
    </div>
