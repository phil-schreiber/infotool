

	{{ content() }}
	<section>
<div class="container backend">
	{%- if session.get('auth') -%}
	{% for usergroup in usergroups %}
	<div class="ceElement large">
	<h1>{{usergroup.title}}</h1>
		<div class="dataTables_wrapper">
			<table  class="display dataTable">
				<thead>
					<tr>						
						<th>{{ tr('feusers.lastname') }}</th>
						<th>{{ tr('feusers.firstname') }}</th>
						<th>{{ tr('feusers.title') }}</th>
						<th>{{ tr('feusers.email') }}</th>
						<th>{{ tr('feusers.phone') }}</th>
						
						<th>{{ tr('feusers.city') }}</th>						
						<th>{{ tr('feusers.company') }}</th>


					</tr>
				</thead>
				<tbody>
				{% for index,feuser in usergroup.getFeusers() %}
				<tr class='{% if index is even %}even{% else %}odd{%endif%}'>					
				<td>{{feuser.last_name}}</td>
				<td>{{feuser.first_name}}</td>
				<td>{{feuser.title}}</td>
				<td>{{feuser.email}}</td>
				<td>{{feuser.phone}}</td>				
				<td>{{feuser.city}}</td>				
				<td>{{feuser.company}}</td>	
				<td><a href='{{ path }}{{ feuser.uid }}'>>> {{tr('update')}}</a></td>

				</tr>
				{% endfor %}
				</tbody>
			</table>
		</div>
	</div>
	{% endfor %}
{%- endif -%}

</div>
	</section>	