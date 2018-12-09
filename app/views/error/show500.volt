{%- extends "templates/base.volt" -%}

{%- block meta -%}
    {%- include "include/noindex-meta.volt" -%}
{%- endblock -%}

{%- block sidebar -%}
    {{ sidebar }}
{%- endblock -%}

{%- block content -%}
    <section class="documentation-section">
        <div class="container-fluid ">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 col-lg-10 col-lg-offset-1 parse-content">
                    <div>
                        <p class="lead">
                            {{ homeArray[44] }} <a href="{{ 'mailto:' ~ support }}">{{ support }}</a>.
                            {{ homeArray[45] }}
                        </p>
                        <p>
                            <a class="btn btn-primary" href="{{ url ~ '?from=error500' }}">{{ homeArray[38] }}</a>
                        </p>
                    </div>
                    {{- article -}}
                </div>
            </div>
        </div>
    </section>
{%- endblock -%}
