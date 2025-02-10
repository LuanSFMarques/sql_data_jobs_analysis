import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors

# Csv Loader
df_1_2 = pd.read_csv("data_output/2_out.csv")
df_3 = pd.read_csv("data_output/3_out.csv")
df_4 = pd.read_csv("data_output/4_out.csv")
df_5 = pd.read_csv("data_output/5_out.csv")

#------------------------------------------------------------------------------ PLOT 1

df_top10 = df_1_2[0:11]

plt.figure(figsize=(12, 6))
plt.bar(df_top10['skills'], df_top10['skill_apparitions'], color=["#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd"] * 2)

plt.xlabel("Skills", fontsize=12)
plt.ylabel("Number of Occurrences", fontsize=12)
plt.title("Top 10 Most In-Demand Data Analysis Skills", fontsize=14, fontweight="bold")
plt.xticks(rotation=45, fontsize=9)
plt.yticks(fontsize=11)
plt.grid(axis="y", linestyle="--", alpha=0.7)

for i, count in enumerate(df_top10['skill_apparitions']):
    plt.text(i, count + 0.1, str(count), ha="center", fontsize=8, fontweight="bold")

plt.savefig("visualizations/plot_query_1_2.png")

#------------------------------------------------------------------------------ PLOT 2
plt.figure(figsize=(12, 6))
plt.bar(df_3['skills'], df_3['counts'], color=["#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd"])

plt.xlabel("Skills", fontsize=12)
plt.ylabel("Number of Occurrences", fontsize=12)
plt.title("Most In-Demand Data Analysis Skills", fontsize=14, fontweight="bold")
plt.xticks(fontsize=11)
plt.yticks(fontsize=11)
plt.grid(axis="y", linestyle="--", alpha=0.7)

for i, count in enumerate(df_3['counts']):
    plt.text(i, count + 800, str(count), ha="center", fontsize=11, fontweight="bold")

plt.savefig("visualizations/plot_query_3.png")


#------------------------------------------------------------------------------ PLOT 3

plt.figure(figsize=(12, 6))

color_palette = ["#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd", "#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd", "#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd"]

plt.bar(df_4['skills'][1:16], df_4['average_skill_salary'][1:16], color=color_palette, width=0.6)

plt.xlabel("Skills", fontsize=13, fontweight="light", color='black')
plt.ylabel("Average Skill Salary", fontsize=13, fontweight="light", color='black')
plt.title("Top 15 Most Mentioned Data Analysis Skills", fontsize=15, fontweight="bold", color='black')

plt.xticks(rotation=45, ha="right", fontsize=11, fontweight="light", color='black')
plt.yticks(fontsize=12, fontweight="light", color='black')

plt.grid(axis="y", linestyle="--", alpha=0.7)
plt.gca().spines['top'].set_visible(False)
plt.gca().spines['right'].set_visible(False)
plt.gca().spines['left'].set_linewidth(0.5)
plt.gca().spines['bottom'].set_linewidth(0.5)

plt.tight_layout()

plt.savefig("visualizations/plot_query_4.png", dpi=300)

#------------------------------------------------------------------------------ PLOT 4

colors = ["#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd"]

cmap = mcolors.ListedColormap(colors)
norm = plt.Normalize(vmin=df_5['skill_salary'].min(), vmax=df_5['skill_salary'].max())
sizes = norm(df_5['skill_salary']) * 1000

plt.figure(figsize=(12, 6))

scatter = plt.scatter(df_5['skills'], df_5['counts'], s=sizes, c=df_5['skill_salary'], cmap=cmap, alpha=0.7)

for i, x in enumerate(df_5['skills']):
    plt.plot([x, x], [0, df_5['counts'][i]], color='black', lw=0.7, alpha=0.6)

plt.xlabel("Skills", fontsize=12)
plt.ylabel("Demand", fontsize=12)
plt.xticks(rotation=45, ha="right", fontsize=9)
plt.title("Optimal Skills (Demand X Salary)")

plt.colorbar(scatter, label='Salary')

plt.savefig("visualizations/plot_query_5.png")
