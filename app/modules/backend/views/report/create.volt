	{{ content() }}
	
<div>
{%- if session.get('auth') -%}



<table id="report" class="mitarbeiter">
	<thead>
		<tr>
                    <th>Zeitstempel</th>
                    <th>Name</th>
                    <th>Email</th>
                    {% for index,question in questions %}                    
                    <th>
                        {{question.title}}
                    </th>                    
                    {% endfor %}
		</tr>
		
	</thead>
	<tbody>
		
		{% for sesind,qsession in sessions %}
		
		<tr class="values">
                    <td>{{date('d.m.Y H:i',qsession.tstamp)}}</td>
                    <td>{{qsession.name}}</td>
                    <td>{{qsession.email}}</td>
                    
                    {% for qindex,question in questions %}                     
                    {% if questionitems[qsession.uid] is defined %}
                        {% if questionitems[qsession.uid][qindex+1] is defined %}
                        <td>
                            {% if questionitems[qsession.uid][qindex+1]["truefalse"] == 1%} richtig {% else %} falsch {% endif %}
                        </td>
                        {% else %}
                            <td>n/a</td>
                        {% endif %}
                    {% else%}
                        <td>n/a</td>
                    {% endif %}
                    {% endfor %}
		</tr>
		{% endfor %}
		
	</tbody>
	
</table>




{%- endif -%}

</div>
	