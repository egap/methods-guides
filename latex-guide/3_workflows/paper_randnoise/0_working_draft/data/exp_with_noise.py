import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0,1,100)
np.random.seed(348484)
r = 0.1*np.random.randn(len(x))

plt.plot(x, np.exp(x), '-', lw=2, color='k', label='exp(x)')
plt.plot(x, r+np.exp(x), '-', lw=1, color='r', label='with noise')

plt.legend()
plt.savefig('../figures/exp_with_noise.pdf', bbox_inches='tight')
