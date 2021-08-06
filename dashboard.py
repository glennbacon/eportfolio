import dash
import dash_auth
import dash_leaflet as dl
import dash_core_components as dcc
import dash_html_components as html
import dash_table as dt
from dash.dependencies import Input, Output
import pandas as pd
import base64

# change animal_shelter and AnimalShelter to match your CRUD Python module file name and class name
from crud import CRUD

###########################
# Data Manipulation / Model
###########################
# update with your username and password and CRUD Python module name
username = "user"
password = "guest"
host = 'dbinstance.cscciirp0cbc.us-east-2.rds.amazonaws.com'
database_name = 'animal_shelter'
crud = CRUD(host, username, password, database_name)

# class read method must support return of cursor object and accept projection json input
data = crud.read()
print(type(data))
print(data[0])
df = pd.DataFrame.from_records(data, columns=['id', 'age_upon_outcome', 'animal_id', 'animal_type', 'breed', 'color',
                                              'date_of_birth', 'datetime', 'monthyear', 'name', 'outcome_subtype',
                                              'outcome_type', 'sex_upon_outcome', 'location_lat', 'location_long',
                                              'age_upon_outcome_in_weeks'])
print(type(df))
result = df[df.animal_type == 'Cat']
print(result.head(1))

#########################
# Dashboard Layout / View
#########################
# Keep this out of source code repository - save in a file or a database
VALID_USERNAME_PASSWORD_PAIRS = {
    'hello': 'world'
}

app = dash.Dash(__name__)
auth = dash_auth.BasicAuth(
    app,
    VALID_USERNAME_PASSWORD_PAIRS
)

# Add in Grazioso Salvare’s logo
image_filename = 'Grazioso_Salvare_Logo.png'  # replace with your own image
encoded_image = base64.b64encode(open(image_filename, 'rb').read())

app.layout = html.Div([
    html.Div(id='hidden-div', style={'display': 'none'}),
    html.A(href="https://www.snhu.edu", children=html.Img(src='data:image/png;base64,{}'.format(encoded_image.decode()),
                                                          style={'width': '100px', 'height': '100px'})),
    html.Center(html.B(html.H1('Glenn Bacon SNHU CS-499 Dashboard'))),
    html.Hr(),
    html.Div(className='row',
             style={'display': 'flex'},
             children=[dcc.RadioItems(id='radio-button', options=[
                 {"label": "Water Rescue", "value": "Water Rescue"},
                 {"label": "Wilderness Rescue", "value": "Wilderness Rescue"},
                 {"label": "Disaster Rescue", "value": "Disaster Rescue"},
                 {"label": "Reset", "value": "Reset"}])
                       ]),
    dt.DataTable(
        id='datatable-id',
        columns=[
            {"name": i, "id": i, "deletable": False, "selectable": True} for i in df.columns
        ],
        data=df.to_dict('records'),
        # Set up the features for your interactive data table to make it user-friendly for your client
        editable=False,
        filter_action="native",
        sort_action="native",
        sort_mode="multi",
        column_selectable=False,
        row_selectable=False,
        row_deletable=False,
        selected_columns=[],
        selected_rows=[],
        page_action="native",
        page_current=0,
        page_size=10,
    ),
    html.Br(),
    html.Hr(),
    # This sets up the dashboard so that your chart and your geolocation chart are side-by-side
    html.Div(className='row',
             style={'display': 'flex'},
             children=[
                 html.Div(
                     id='graph-id',
                     className='col s12 m6',
                 ),
                 html.Div(
                     id='map-id',
                     className='col s12 m6',
                 )
             ])
])


#############################################
# Interaction Between Components / Controller
#############################################
# This callback will highlight a row on the data table when the user selects it
@app.callback(
    Output('datatable-id', 'data'),
    [Input('radio-button', 'value')])
def on_click(radio_value):
    global df
    # start case
    if radio_value == "Water Rescue":
        df = pd.DataFrame(list(crud.read()))  # ({"outcome":"Water"})))
    elif radio_value == "Wilderness Rescue":
        df = pd.DataFrame(list(crud.read()))  # ({"outcome": "Wilderness Rescue"})))
    elif radio_value == "Disaster Rescue":
        df = pd.DataFrame(list(crud.read()))  # ({"outcome": "Disaster Rescue"})))
    elif radio_value == "Reset":
        df = pd.DataFrame(list(crud.read()))
    return df.to_dict('records')


@app.callback(
    Output('datatable-id', 'style_data_conditional'),
    [Input('datatable-id', 'selected_columns')]
)
def update_styles(selected_columns):
    return [{
        'if': {'column_id': i},
        'background_color': '#D2F3FF'
    } for i in selected_columns]


@app.callback(
    Output('graph-id', "children"),
    [Input('datatable-id', "derived_viewport_data")])
def update_graphs(view_data):
    # add code for chart of your choice (e.g. pie chart) #
    dff = pd.DataFrame.from_dict(view_data)
    breeds = []
    for i in range(0, 10):
        breeds.append(str(dff.iloc[i, 4]))
    return [
        dcc.Graph(
            figure={
                'data': [
                    {
                        'labels': breeds,
                        'type': 'pie'
                    }
                ],
                'layout': {
                    'title': 'Breeds',
                }
            }
        )
    ]


@app.callback(
    Output('map-id', "children"),
    [Input('datatable-id', "derived_viewport_data")])
def update_map(view_data):
    # Add in the code for your geolocation chart
    dff = pd.DataFrame.from_dict(view_data)
    # Austin TX is at [30.75,-97.48]
    return [
        dl.Map(style={'width': '1000px', 'height': '500px'}, center=[dff.iloc[0, 13], dff.iloc[0, 14]], zoom=10,
               children=[
                   dl.TileLayer(id="base-layer-id"),
                   # Marker with tool tip and popup
                   dl.Marker(position=[dff.iloc[0, 13], dff.iloc[0, 14]], children=[
                       dl.Tooltip(dff.iloc[0, 4]),
                       dl.Popup([
                           html.H1(dff.iloc[0, 10]),
                           html.P(dff.iloc[0, 9])
                       ])
                   ])
               ])
    ]


if __name__ == '__main__':
    app.run_server(debug=True)
