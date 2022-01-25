# So the database can be saved in the location from which
# the command is called.
import os
curr_dir = os.path.dirname(__file__)

# Simulation metadata goes here
database_filename = 'bakery_model.sqlite'  # where the database will be written
scenario_name = 'test-kitchen'
folder = 'pygen-test'
start_year = 2020  # the first year optimized by the model
end_year = 2021  # the last year optimized by the model
N_years = 2  # the number of years optimized by the model
N_seasons = 4  # the number of "seasons" in the model
N_hours = 24  # the number of hours in a day
reserve_margin = {'MyBakery':0.02}  # fraction of excess capacity to ensure reliability
discount_rate = 0.00 # The discount rate applied globally.


# Need Demands first
from products import COOKIES_DEM

COOKIES_DEM.add_demand(region='MyBakery',
                       init_demand=6000, # in units of COOKIES_DEM
                       start_year=start_year,
                       end_year=end_year,
                       N_years=N_years,
                       growth_rate=0.01,
                       growth_method='exponential')

"""
If the desire for cookies changes throughout the year you can specify
``COOKIES_DEM.set_distribution(...)``
"""

from pantry import DOUGH
from appliances import CONV_OVEN

# add "bakery" data
CONV_OVEN.add_regional_data(region='MyBakery',
                            input_comm=DOUGH,
                            output_comm=COOKIES_DEM,
                            efficiency=16.0*0.9, # number of cookies per lb dough
                            tech_lifetime=25,
                            #capacity_factor_tech=,
                            cost_invest=798, # dollars per oven
                            cost_fixed=2, # spend $2/year on cleaning supplies
                            cost_variable=(2.99+0.07*2.99)/(16*0.9), # cost of dough plus tax
                            )

# this STAYS at the bottom
demands_list = [COOKIES_DEM]
resources_list = [DOUGH]
emissions_list = [] # empty
