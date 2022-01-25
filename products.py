"""
This file contains a list of products offered by a bakery.
"""

from pygenesys.commodity.commodity import DemandCommodity


COOKIES_DEM = DemandCommodity(comm_name='COOKIES_DEM',
                              comm_label='d', # this tells Temoa it's a demand commodity
                              units='one cookie', # tells users the demand units
                              description='Total cookie demand of all types')
