import unittest
from SevenDigital import SevenDigital

class Test_SevenDigital(unittest.TestCase):

	def test_empty_track_code_returns_zero(self):
		thing = SevenDigital()
		self.assertEqual(thing.sum_track_codes(""), 0)
