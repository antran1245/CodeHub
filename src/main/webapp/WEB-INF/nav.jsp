<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="fixed-nav-bar">		
	<div class="logo"><a href="/"><span>CodeHub</span></a></div>
		<input type="checkbox" id="menuButton" />
		<label for="menuButton" class="menu-button-label">
 					<span class="white-bar"></span>
 					<span class="white-bar"></span>
 					<span class="white-bar"></span>
 					<span class="white-bar"></span>
		</label>				
</div>
<div class="the-bass">
    	<div class="rela-block drop-down-container">
        	<div class="drop-down-item"><a href="/project/new"><span>Create</span></a></div>
    	</div>
    		<c:choose>
	    		<c:when test="${empty user}">
		    		<div class="rela-block drop-down-container">
		    			<div class="drop-down-item"><a href="/login"><span>Login/ Sign Up</span></a></div>
		    		</div>
		    		<div class="rela-block drop-down-container">
			        	<div class="drop-down-item"><a href="/login"><span>Profile</span></a></div>
			    	</div>
	    		</c:when>
	    		<c:otherwise>
		    		<div class="rela-block drop-down-container">
			        	<div class="drop-down-item"><a href="/logout"><span>Logout</span></a></div>
			        </div>
			        <div class="rela-block drop-down-container">
			        	<div class="drop-down-item"><a href="/user/${user.getId()}"><span>Profile</span></a></div>
			    	</div>
	    		</c:otherwise>
    		</c:choose>
</div>
<script type="text/javascript">
$( document ).ready(function() {
    
    // Function to change the nav-bar on scroll
    $(window).scroll(function(){
        ($(window).scrollTop() >= 100) ? (
            $('.fixed-nav-bar').addClass('scrolled'),
            $('.the-bass').addClass('scrolled')
        ) : (
            $('.fixed-nav-bar').removeClass('scrolled'),
            $('.the-bass').removeClass('scrolled')
        );
    });
    
    // Drop Down Function
    $('#menuButton').on('change', function(){
        ($('#menuButton').is(':checked')) ? (
            $('.the-bass').addClass('dropped')
        ) : (
            $('.the-bass').removeClass('dropped')
        );
    });
});

</script>
