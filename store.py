"""
These "technologies" operate as a "store" to buy and sell ingredients
"""


from pygenesys.technology.technology import Technology

IMP_H2 = Technology(tech_name='IMP_H2',
                     units='pound sugar',
                     tech_sector='store',
                     tech_label='p',
                     description='store bought sugar',
                     category='grocery',
                     capacity_to_activity=1.00)

IMP_ELC = Technology(tech_name='IMP_ELC',
                     units='stick butter',
                     tech_sector='store',
                     tech_label='p',
                     description='store bought butter',
                     category='grocery',
                     capacity_to_activity=1.00)

STORE = Technology(tech_name='STORE',
                   units='number of storefronts',
                   tech_sector='bakery',
                   tech_label='p',
                   description='where cookies get sold',
                   category='fancy kitchen',
                   capacity_to_activity=1.00)
