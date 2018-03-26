<div class="well well-sm">
<h1>{$page->title}</h1>
<a class="btn btn-success" href="{$smarty.const.WWW_TOP}/music-list.php"><i class="fa fa-arrow-left"></i> Go back</a>
<form enctype="multipart/form-data" action="{$SCRIPT_NAME}?action=submit" method="post">
	{{csrf_field()}}

<input type="hidden" name="id" value="{$music.id}" />

<table class="input data table table-striped responsive-utilities jambo-table">

<tr>
	<td><label for="title">Title</label>:</td>
	<td>
		<input id="title" class="long" name="title" type="text" value="{$music.title|escape:'htmlall'}" />
	</td>
</tr>

<tr>
	<td><label for="asin">ASIN</label>:</td>
	<td>
		<input id="asin" name="asin" type="text" value="{$music.asin|escape:'htmlall'}" />
	</td>
</tr>

<tr>
	<td><label for="url">URL</label>:</td>
	<td>
		<input id="url" class="long" name="url" type="text" value="{$music.url|escape:'htmlall'}" />
	</td>
</tr>

<tr>
	<td><label for="salesrank">Sales Rank</label>:</td>
	<td>
		<input id="salesrank" class="short" type="text" name="salesrank" value="{$music.salesrank|escape:'htmlall'}" />
	</td>
</tr>

<tr>
	<td><label for="artist">Artist</label>:</td>
	<td>
		<input id="artist" class="long" name="artist" type="text" value="{$music.artist|escape:'htmlall'}" />
	</td>
</tr>

<tr>
	<td><label for="publisher">Publisher</label>:</td>
	<td>
		<input id="publisher" class="long" name="publisher" type="text" value="{$music.publisher|escape:'htmlall'}" />
	</td>
</tr>

<tr>
	<td><label for="releasedate">Release Date</label>:</td>
	<td>
		<input id="releasedate" name="releasedate" type="text" value="{$music.releasedate|escape:'htmlall'}" />
	</td>
</tr>

<tr>
	<td><label for="year">Year</label>:</td>
	<td>
		<input id="year" class="short" name="year" type="text" value="{$music.year|escape:'htmlall'}" />
	</td>
</tr>

<tr>
	<td><label for="genre">Genre</label>:</td>
	<td>
		<select id="genre" name="genre">
		{foreach $genres as $gen}
			<option {if $gen.id == $music.genres_id}selected="selected"{/if} value="{$gen.id}">{$gen.title|escape:'htmlall'}</option>
		{/foreach}
		</select>
	</td>
</tr>

<tr>
	<td><label for="tracks">Tracks</label>:</td>
	<td>
		<textarea id="tracks" name="tracks">{$music.tracks|escape:'htmlall'}</textarea>
		<div class="hint">Tracks separated by | (pipe) delimeter</div>
	</td>
</tr>

<tr>
	<td><label for="cover">Cover Image</label>:</td>
	<td>
		<input type="file" id="cover" name="cover" />
		{if $music.cover == 1}
			<img style="max-width:200px; display:block;" src="{$smarty.const.WWW_TOP}/../covers/music/{$music.id}.jpg" alt="" />
		{/if}
	</td>
</tr>

<tr>
	<td></td>
	<td>
		<input class="btn btn-default" type="submit" value="Save" />
	</td>
</tr>

</table>

</form>
	</div>
