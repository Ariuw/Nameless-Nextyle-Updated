{include file='navbar.tpl'}

<div class="container" style="padding-top:2rem;">
  <div class="card">
	<div class="card-block">
	  <h2 class="card-title" style="display:inline;">{$NEW_RESOURCE}</h2>
	  
	  <span class="pull-right">
		<a href="{$CANCEL_LINK}" class="btn btn-{$NEXTYLE_COLOR}" onclick="return confirm('{$CONFIRM_CANCEL}');">{$CANCEL}</a>
	  </span>
	  <br /><br />

	  {if isset($ERROR)}
	  <div class="alert alert-danger">
	    {$ERROR}
	  </div>
	  {/if}
	  
	  <form action="" method="post">
	    <div class="form-group">
		  <label for="inputRelease">{$SELECT_RELEASE}</label>
		  <select name="release" class="form-control" id="inputRelease">
		    {foreach from=$RELEASES item=release}
			<option value="{$release.id}">{$release.tag} - {$release.name}</option>
			{/foreach}
		  </select>
		</div>
		
		<div class="form-group">
		  <input type="hidden" name="token" value="{$TOKEN}">
		  <input type="submit" class="btn btn-{$NEXTYLE_COLOR}" value="{$SUBMIT}">
		</div>
		
	  </form>

	</div>
  </div>
</div>

{include file='footer.tpl'}