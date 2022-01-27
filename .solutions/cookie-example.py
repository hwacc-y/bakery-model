# So the database can be saved in the location from which
# the command is called.
import os
curr_dir = os.path.dirname(__file__)

# Simulation metadata goes here
# database_filename = 'bakery_model_02.sqlite'  # where the database will be written
scenario_name = 'test_kitchen'
version = '02'
folder = 'pygen_test'
start_year = 2020  # the first year optimized by the model
end_year = 2021  # the last year optimized by the model
N_years = 2  # the number of years optimized by the model
N_seasons = 4  # the number of "seasons" in the model
N_hours = 24  # the number of hours in a day
reserve_margin = {'MyBakery':0.02}  # fraction of excess capacity to ensure reliability
discount_rate = 0.001 # The discount rate applied globally.
database_filename = f'{folder}/bakery_{scenario_name}_{version}.sqlite'  # where the database will be written


# Need Demands first
from products import COOKIES_DEM

COOKIES_DEM.add_demand(region='MyBakery',
                       init_demand=4800, # in units of COOKIES_DEM
                       start_year=start_year,
                       end_year=end_year,
                       N_years=N_years,
                       growth_rate=0.00,
                       growth_method='linear')



"""
If the desire for cookies changes throughout the year you can specify
``COOKIES_DEM.set_distribution(...)``
"""

from pantry import DOUGH, EGG, FLOUR, MILK, SUGAR, BUTTER, COOKIES
from store import IMP_EGG, IMP_FLR, IMP_BTR, IMP_SGR, STORE
from appliances import CONV_OVEN, MIXER_ELC, REFRIGERATOR
from pygenesys.commodity.resource import ethos

# add "bakery" data

elc_cost = 0.1161 # cents per kwh
oven_power = 3  # kw
mixer_power = 0.325  # kw
fridge_power = 0.5  # kw


import numpy as np
n_points=24
x = np.linspace(0,24,n_points)
w = np.sin(8*x*np.pi/180)
y = np.cos(8*x*np.pi/180)
z = np.cos(8*x*np.pi/180+0.5)
demand = np.array([w,w,w,w]).flatten()
demand = demand/demand.sum()
oven_cf = np.array([y,y,y,y]).flatten()
mixer_cf = np.array([z,z,z,z]).flatten()
demand[demand<0] = 0
oven_cf[oven_cf<0] = 0
mixer_cf[mixer_cf<0] = 0

COOKIES_DEM.set_distribution(region='MyBakery',
                             data=demand/demand.sum(),
                             normalize=False)


CONV_OVEN.add_regional_data(region='MyBakery',
                            input_comm=DOUGH,
                            output_comm=COOKIES,
                            efficiency=48.0, # number of cookies per lb dough
                            tech_lifetime=25,
                            capacity_factor_tech=oven_cf,
                            cost_invest=800, # dollars per oven
                            cost_fixed=2, # spend $2/year on cleaning supplies
                            cost_variable=oven_power*elc_cost, # cost of dough plus tax
                            min_capacity={2020:1}
                            )
MIXER_ELC.add_regional_data(region='MyBakery',
                            input_comm=[EGG, FLOUR, SUGAR, BUTTER],
                            output_comm=DOUGH,
                            efficiency=[0.25, 2, 1, 1], # units of X to produce 1 lb of dough
                            tech_lifetime=25,
                            capacity_factor_tech=mixer_cf,
                            cost_invest=300, # dollars per mixer
                            cost_fixed=2, # spend $2/year on cleaning supplies
                            cost_variable=mixer_power*elc_cost, # cost of dough plus tax
                            min_capacity={2020:1}
                            )
REFRIGERATOR.add_regional_data(region='MyBakery',
                               input_comm=COOKIES,
                               output_comm=COOKIES,
                               # efficiency=[1, 16/10.5, 16/11.68, 0.5], # units of X to produce 1 lb of dough
                               efficiency=1.0, # units of X to produce 1 lb of dough
                               tech_lifetime=25,
                               #capacity_factor_tech=,
                               cost_invest=600, # dollars per mixer
                               cost_fixed=fridge_power*elc_cost*8760, # fridge is running constantly
                               # min_capacity={2020:1}
                            )
# allows the bakery to SELL cookies
STORE.add_regional_data(region='MyBakery',
                        input_comm=COOKIES,
                        output_comm=COOKIES_DEM,
                        efficiency=1.0,
                        tech_lifetime=1000)

cost_of_dozen_eggs = 0.4  # 42 cents
cost_of_pound_flour = 0.5  # 50 cents
cost_of_pound_sugar = 0.6 # 59 cents
cost_of_two_sticks_butter = 2 # 2 dollars, two sticks = 1 cup
IMP_EGG.add_regional_data(region='MyBakery',
                          input_comm=ethos,
                          output_comm=EGG,
                          efficiency=1.00,
                          tech_lifetime=1000,
                          cost_variable=cost_of_dozen_eggs/12,
                          )
IMP_FLR.add_regional_data(region='MyBakery',
                          input_comm=ethos,
                          output_comm=FLOUR,
                          efficiency=1.00,
                          tech_lifetime=1000,
                          cost_variable=cost_of_pound_flour*4.25/16,
                          )
IMP_SGR.add_regional_data(region='MyBakery',
                          input_comm=ethos,
                          output_comm=SUGAR,
                          efficiency=1.00,
                          tech_lifetime=1000,
                          cost_variable=cost_of_pound_sugar*0.4409,
                          )
IMP_BTR.add_regional_data(region='MyBakery',
                          input_comm=ethos,
                          output_comm=BUTTER,
                          efficiency=1.00,
                          tech_lifetime=1000,
                          cost_variable=cost_of_two_sticks_butter,
                          )

# this STAYS at the bottom
demands_list = [COOKIES_DEM]
resources_list = [DOUGH, FLOUR, EGG, SUGAR, BUTTER, COOKIES, ethos]
emissions_list = [] # empty

if __name__ =='__main__':
    import numpy as np
    import matplotlib.pyplot as plt
    import pandas as pd

    n_points = 24
    x = np.linspace(0,24,n_points)
    y = np.cos(8*x*np.pi/180)
    y[y<0] = 0
    y2 = np.sin(8*x*np.pi/180)
    y2[y2<0] = 0
    y3 = np.cos(8*x*np.pi/180+0.5)
    y3[y3<0] = 0

    cf = np.array([y,y,y,y]).flatten()
    print(cf)

    fig, ax = plt.subplots()
    # ax.plot(x, y, color='tab:blue', linestyle='--', alpha=0.5)
    ax.plot(x, y2, color='tab:red', alpha=0.5)
    # ax.plot(x, y3, color='tab:green', linestyle='-.', alpha=0.5)
    plt.show()
