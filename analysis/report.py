# Python script to create first plot
# Adding "Run Cell" functionality by starting new cell with #%%
#%% Import packages
import pandas as pd
#%% Load data
data = pd.read_csv("../output/input.csv")
#%% Create plot
fig = data.age.plot.hist().get_figure()
#%% Save figure
fig.savefig("../output/descriptive.png")
