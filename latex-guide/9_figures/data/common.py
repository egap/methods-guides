import matplotlib
import numpy as np

def set_figure(fontsize=12, columnwidth=348.0, heightratio=None, height=None):
    r"""
    Parameters
    ----------
    fontsize : float
        sets the intended fontsize

    columnwidth : float
        sets the intended columnwidth (or linewidth) in latex big points

    Notes
    -----
    To set the columnwidth of the article:

    in the tex file 'Column width: \the\columnwidth' will print this size
    alternatively, '\message{Column width: \the\columnwidth}' will print to the log

    \linewidth should be used in place of \columnwidth if the figure is used
    within special enviroments (e.g. minipage)

    https://scipy-cookbook.readthedocs.io/items/Matplotlib_LaTeX_Examples.html
    https://tex.stackexchange.com/questions/16942/difference-between-textwidth-linewidth-and-hsize
    """
    fig_width_pt = columnwidth
    inches_per_pt = 1.0/72.27               # Convert pt to inch
    fig_width = fig_width_pt*inches_per_pt  # width in inches

    if heightratio is None:
        heightratio = (np.sqrt(5)-1.0)/2.0  # Aesthetic ratio
    if height is None:
        fig_height = fig_width*heightratio      # height in inches
    else:
        fig_height = height*inches_per_pt
    fig_size = [fig_width, fig_height]
    params = {#
              # fonts
              #
              'font.family': 'serif',
              'font.serif': 'Computer Modern Roman',
              # latex
              'backend': 'pdf',
              'text.usetex': True,
              #'text.latex.preamble': r"""
              #                         \usepackage[not1,notextcomp,lcgreekalpha]{stix}
              #                         \usepackage{amsmath}
              #                        """,
              # font sizes
              'axes.labelsize': fontsize,
              'font.size': fontsize,
              'axes.titlesize': fontsize,
              'legend.fontsize': fontsize,
              'xtick.labelsize': fontsize,
              'ytick.labelsize': fontsize,
              #
              # figure size
              'figure.figsize': fig_size,
              'figure.constrained_layout.use': True,
              #
              # xaxis
              'xtick.direction': "in",
              'xtick.major.size': 3,
              'xtick.major.width': 0.5,
              'xtick.minor.width': 0.5,
              'xtick.minor.visible': True,
              'xtick.top': True,
              #'axes.spines.top': False,
              # yaxis
              'ytick.direction': "in",
              'ytick.major.size': 3,
              'ytick.major.width': 0.5,
              'ytick.minor.width': 0.5,
              'ytick.minor.visible': True,
              'ytick.right': True,
              #'axes.spines.right': False
              #
              # line styling
              'lines.linewidth': 2,
              'grid.linewidth': .25,
              'axes.linewidth': .5,
              #
              # legend
              'legend.frameon': False,
              #
              # saving
              'savefig.bbox': 'tight',
              'savefig.pad_inches': 0.05,
              }
    matplotlib.rcParams.update(params)
