"""
These "technologies" operate as a "store" to buy and sell ingredients
"""


from pygenesys.technology.technology import Technology

IMP_EGG = Technology(tech_name='IMP_EGG',
                     units='egg',
                     tech_sector='store',
                     tech_label='p',
                     description='store bought eggs',
                     category='grocery',
                     capacity_to_activity=1.00)


IMP_FLR = Technology(tech_name='IMP_FLR',
                     units='pound flour',
                     tech_sector='store',
                     tech_label='p',
                     description='store bought flour',
                     category='grocery',
                     capacity_to_activity=1.00)


IMP_BTR = Technology(tech_name='IMP_BTR',
                     units='stick butter',
                     tech_sector='store',
                     tech_label='p',
                     description='store bought butter',
                     category='grocery',
                     capacity_to_activity=1.00)

IMP_SGR = Technology(tech_name='IMP_SGR',
                     units='pound sugar',
                     tech_sector='store',
                     tech_label='p',
                     description='store bought sugar',
                     category='grocery',
                     capacity_to_activity=1.00)

STORE = Technology(tech_name='STORE',
                   units='number of storefronts',
                   tech_sector='bakery',
                   tech_label='p',
                   description='where cookies get sold',
                   category='fancy kitchen',
                   capacity_to_activity=1.00)
