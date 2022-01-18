import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0,1,100)
np.random.seed(348484)
r = 0.1*np.random.randn(len(x))

#from common import set_figure
#set_figure(fontsize=10, columnwidth=400, height=250)

fig, ax = plt.subplots(facecolor='w', constrained_layout=True)
ax.plot(x, np.exp(x), '-', lw=2, color='k', label='exp(x)')
ax.plot(x, r+np.exp(x), '-', lw=1, color='r', label='with noise')
# marker='o', markerfacecolor='w', color='tab:red'

#ax.set_xlabel('$x$')
#ax.set_ylabel('$y$')
#ax.grid(True)
#ax.legend()

plt.savefig('../figures/exp_with_noise.pdf')
