import matplotlib.pyplot as plt
import numpy as np
import matplotlib
import sys

matplotlib.use("qtagg")

data = np.loadtxt(sys.argv[1])
plt.plot(data)
plt.show()

