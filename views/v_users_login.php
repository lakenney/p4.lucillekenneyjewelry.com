<form method='POST' action='/users/p_login' id="validateLogin">

    Email<br>
    <input type='text' name='email' class='required email'>
    
    <br><br>

    Password<br>
    <input type='password' name='password' class='required'>
    
    <br><br>
    
    <?php if(isset($error)): ?>
        <div class='error'>
            Login failed. Please double check your email and password.
        </div>
        
        <br>
        
    <?php endif; ?>

    <input type='submit' value='Log in'>

</form>