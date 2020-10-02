import numpy as np
import matplotlib.pyplot as plt
from scipy.spatial.distance import cdist

def comp_sqexp(x1, x2, le):
    return np.exp(-cdist(x1, x2, 'sqeuclidean')/(le**2))

lengthscale = 1.0
x1 = np.linspace(-3, 3, 100).reshape(-1, 1)
K11 = comp_sqexp(x1, x1, lengthscale)
mu = np.zeros(K11.shape[0]).flatten()

y_prior_samp = np.random.multivariate_normal(mu, K11, 100)

fig, axs = plt.subplots(1, 2)
axs[0].imshow(K11)
axs[1].plot(x1, y_prior_samp.T)
plt.show()
