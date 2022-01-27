"""
This file contains pantry items found in a bakery!
"""

from pygenesys.commodity.commodity import Commodity

DOUGH = Commodity(comm_name='DOUGH',
                  units='pounds',
                  description='tollhouse cookie dough')

MILK = Commodity(comm_name='MILK',
                  units='gallons',
                  description='whole milk')

EGG = Commodity(comm_name='EGG',
                  units='dozen',
                  description='free range eggs')

BUTTER = Commodity(comm_name='BUTTER',
                  units='sticks',
                  description='unsalted butter')

FLOUR = Commodity(comm_name='FLOUR',
                  units='pounds',
                  description='white baking flour')

SUGAR = Commodity(comm_name='SUGAR',
                  units='pounds',
                  description='white granulated sugar')

COOKIES = Commodity(comm_name='COOKIES',
                    units='number of cookies',
                    description='bakery fresh cookies')
                    
