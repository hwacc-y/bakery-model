"""
This file contains basic kitchen appliances!
"""


from pygenesys.technology.technology import Technology

CONV_OVEN = Technology(tech_name='CONV_OVEN',
                       units='cookies per hour',
                       tech_sector='bakery',
                       tech_label='p',
                       description='Convection oven',
                       category='fancy kitchen',
                       capacity_to_activity=4*12*8760)
# capacity_to_activity is the number of cookies an oven can make per hour!


MIXER_ELC = Technology(tech_name='MIXER_ELC',
                       units='lbs of dough per hour',
                       tech_sector='bakery',
                       tech_label='p',
                       description='Electric mixer',
                       category='fancy kitchen',
                       capacity_to_activity=6*8760)
# capacity to activity is the number of pounds of dough a mixer can make per hour

REFRIGERATOR = Technology(tech_name='REFRIGERATOR',
                          units='cookies',
                          tech_sector='bakery',
                          tech_label='ps',  # storage technology
                          description='Cooled food storage',
                          category='fancy kitchen',
                          capacity_to_activity=100*8760)
                          # if the fridge were to discharge cookies constantly
