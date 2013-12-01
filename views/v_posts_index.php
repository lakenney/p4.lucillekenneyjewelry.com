
<article>
	<!-- Displays a message to the logged in user -->
	<h2>Hey <?=$user->first_name?>, </h2>
		<p>
			Welcome to Talkfest. You can follow and unfollow members to see what they're 
			talking about. Follow yourself if you want to show your own posts. 
		</p>
</article>

<!-- Add view for follow or unfollow users -->
	<div class='members'>
        <?=$usersView;?>    
    </div>
   
   
<!-- Add view for new post -->
	<div class='newPost'>
        <?=$addPost;?>    
    </div>
    
<br>

<!-- Note: The first post field will get as long as the members list to it's left. This will
	require tweaking in the css and may have something to do with the clear float. It might be
	as simple as creating containers ...
 -->
<!-- Users being followed -->
<div class='talkers'>
	<p>He said, she said!</p>

	<!-- Users posts I'm following-->
	<?php foreach($posts as $post): ?>
		<article class='followed'>
		
			<!-- Display posted content -->
			<p class='content'><?=$post['content']?></p>
			
			<div class='talker'>
				<ul>
					<li class='name'>
						<?=$post['first_name']?> <?=$post['last_name']?>
					</li>
					<!--<li class='website'>
						<a href='<?=$post['website']?>'><?=$post['website']?></a>
					</li>-->
					<li>
						<!-- Display time of creation ... not validating but shows up on view -->
						<time datetime="<?=Time::display($post['created'],'Y-m-d G:i')?>">
					 		<?=Time::display($post['created'])?>
						</time>
					</li>
					<li>
						<!-- Displays delete button on logged in user's posts -->
						<?php 
						if($post['user_id'] == $user->user_id): ?>
							<a href='/posts/delete/<?=$post['post_id']?>' class='buttonLink'>
								Delete Post
							</a>
							
						<?php else: ?>
						<?php endif; ?>
					</li>
				</ul>
					
    		</div><!--end talker_creds-->
		</article>
	<?php endforeach; ?>
	<div class='clearfix'> </div>
</div><!--end talkers_container-->
<!-- 
	delete links that shows up on the user's posts
 	take them to a single post view with the option to confirm delete a single post
 -->
