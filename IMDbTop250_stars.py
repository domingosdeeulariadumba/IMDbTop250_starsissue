# -*- coding: utf-8 -*-
"""
Created on Sun Oct 22 13:31:41 2023

@author: domingosdeeulariadumba
"""
# %%



# %%
""" IMPORTING LIBRARIES """

import pandas as pd
import matplotlib.pyplot as plt
plt.style.use('ggplot')
import itertools
from collections import Counter
from sklearn.feature_selection import RFE
import statsmodels.api as sm
import warnings
warnings.filterwarnings('ignore')
# %%



# %%
"""" FEATURE ENGINEERING """

    '''
    Importing the saved dataset extracted from the IMDb website in the previous
    project(IMDb Top 100 Analysis).
    '''
df_IMDb = pd.read_csv('IMDbTop250_dataset.csv')

    '''
    We'll next apply feature engineering to extract the title, rating and 
    release year from all the movies information in the dataset.
    '''
rating = []
release_year = []
title =[]

for row in range(len(df_IMDb)):
    
    rating.append(df_IMDb['title'][row][-3:])
    
    for i in range(1,6):        
        if '{0}h'.format(i) in df_IMDb['title'][row]:
            release_year.append(str(df_IMDb['title'][row]).split(
                '{0}h'.format(i))[0][-4:])
            title.append(str(df_IMDb['title'][row]).split(
                '{0}h'.format(i))[0][:-4])
            break
           
    for j in ['mP', 'mA', 'mR', 'mN']:
        
                        if j in df_IMDb['title'][row] and '{0}h'.format(
                                i) not in df_IMDb['title'][row]:
                            release_year.append(str(
                                df_IMDb['title'][row]).split(j)[0][-6:-2])
                            title.append(str(
                                df_IMDb['title'][row]).split(j)[0][:-6])

    '''
    Creating dataframe for title
    '''
IMDb250_title = pd.DataFrame({'title': title})
   
    '''
    Importing the database created in SSMS that was passed to excel. This file
    stores information of countries, directors, stars and the main financial
    details of the movies.
   '''
IMDb250_DB = pd.read_excel('IMDbTop250_DB.xlsx')


    '''
    Concatenating the title's dataframe with the imported one.
    '''
IMDb_250 = pd.concat([IMDb250_title, IMDb250_DB], axis = 1)

    '''
    Inserting the rating and release year columns in the previous dataset. We
    next customize the position of these attributes and convert them to numeric
    type as they are stored as object.
    '''
IMDb_250.insert(1,'release_year', release_year)
IMDb_250.insert(5,'rating', rating)
IMDb_250['release_year'], IMDb_250['rating'] = IMDb_250['release_year'
                                    ].astype(int), IMDb_250['rating'
                                                            ].astype(float)
# %%



# %%
"""" EXPLORATORY DATA ANALYSIS """


'''
    Info, first and last five records of the dataframe.
    '''
IMDb_250.info()
IMDb_250.head()
IMDb_250.tail()


    '''
    The null entries for gross_roi was set, while creating the database in
    SSMS, for those movies which budget or box office information was not 
    available. It was considered to be 0. We'll now fill these entries with 0.
    '''
IMDb_250 = IMDb_250.fillna(0)


    '''
    Statistical summary
    '''
IMDb_250.describe(include = 'all')


    '''
    Who are the 10 most frequent stars on the IMDb 250? To answer this 
    question, firstly, we'll create a list that stores all the stars. As they
    were strategically separated by ', ', we'll take advantage of this detail.
    '''

    '''
    Creating the global stars list.
    '''    
stars_list = list(IMDb_250['stars'])

    '''
    Splitting stars by ', ' feature.
    '''
splitted_list = [i.split(', ') for i in stars_list]

    '''
    Flattenig the global stars list.
    '''
flattened_list = list(itertools.chain.from_iterable(splitted_list))

    '''
    Computing frequencies for stars. And next is created its respective 
    dataframe.
    '''
stars_frequency, frequency = Counter(
    flattened_list).keys(), Counter(
        flattened_list).values()

df_stars = pd.DataFrame({'star': stars_frequency,
              'frequency': frequency})

    '''
    Grouping the 10 most frequent stars on the global list.
    '''
stars_occurrence_top10 = df_stars.groupby(['star'])['frequency'].sum(
    ).reset_index(name='frequency').sort_values(
        by='frequency', ascending = False)[:10]


        '''
        Visualizing the frequencies.
        '''
plt.bar(stars_occurrence_top10['star'],
        stars_occurrence_top10['frequency'])
plt.title('IMDb 250 Most Frequent Stars')
plt.xticks(rotation = 80)
plt.xlabel('')


    '''
    We'll now analyse some details by role. To do so, we simply split the stars
    column.
    '''
stars_splitted = IMDb_250['stars'].str.split(', ', n = 2, expand = True)

del IMDb_250['stars']

IMDb_250.insert(4, 'lead_character',stars_splitted[0])
IMDb_250.insert(5, '1st_costar',stars_splitted[1])
IMDb_250.insert(6, '2nd_costar',stars_splitted[2])

     '''
     Saving the updated dataset
     '''
IMDb_250.to_csv('IMDb250_stars.csv')

    '''
    Let's check the most frequent collaborations between directors and stars
    according to their role importance. As there are some cases where the
    director is also the lead character, we'll assure to get frequencies that
    except these scenarios.    
    '''
        
    ''' Director Lead Characters colaborations'''
IMDb_250[['director','lead_character'
          ]][IMDb_250['director'] != IMDb_250['lead_character'
                                             ]].value_counts(
                                                 )[:10].plot(kind = 'bar')
plt.title("10 Most Frequent Colaborations\nDirectors x Lead Characters")
plt.xticks(rotation = 80)
plt.xlabel('')

    ''' Director 1st Costars colaborations'''
IMDb_250[['director','1st_costar'
          ]][IMDb_250['director'] != IMDb_250['1st_costar'
                                             ]].value_counts(
                                                 )[:10].plot(kind = 'bar')
plt.title("10 Most Frequent Colaborations\nDirectors x 1st Costars")
plt.xticks(rotation = 80)
plt.xlabel('')

    ''' Director 2nd Costars colaborations'''
IMDb_250[['director','2nd_costar'
          ]][IMDb_250['director'] != IMDb_250['2nd_costar'
                                             ]].value_counts(
                                                 )[:10].plot(kind = 'bar')
plt.title("10 Most Frequent Colaborations\nDirectors x 2nd Costars")
plt.xticks(rotation = 80)
plt.xlabel('')   

    '''
    Next, we analyse the frequency of lead charachers since and before the 21st 
    century.  
    '''
        
    ''' Global lead characters frequency'''
IMDb_250['lead_character'].value_counts()[:10].plot(kind = 'bar')
plt.title("IMDb 250 Top 10 Lead Characters")
plt.xticks(rotation = 80)
plt.xlabel('')

    ''' Lead characters frequency since 2000'''
IMDb_250['lead_character'][IMDb_250[
    'release_year'] >= 2000].value_counts()[:10].plot(kind = 'bar')
plt.title("Top 10 Lead Characters\n21st Century")
plt.xticks(rotation = 80)
plt.xlabel('')

    ''' Lead characters frequency before 2000'''
IMDb_250['lead_character'][IMDb_250[
    'release_year'] < 2000].value_counts()[:10].plot(kind = 'bar')
plt.title("Top 10 Lead Characters\n20th Century")
plt.xticks(rotation = 80)
plt.xlabel('')

    '''
    Who are the 10 best average rated lead characters?
    '''   
        '''Global analysis'''
AvgRt = IMDb_250[['lead_character', 
                  'rating']].groupby(['lead_character'])[
                      'rating'].mean().reset_index(name='Average Rating').sort_values(by='Average Rating',
                                                                                      ascending = False)[:10]

plt.bar(AvgRt['lead_character'], AvgRt['Average Rating'])
plt.title('10 Best Rated Lead Characters')
plt.xticks(rotation = 80)
plt.xlabel('')

    '''Since 2000'''
AvgRt_21st = IMDb_250[['lead_character',
                       'rating']][IMDb_250['release_year'] >= 2000].groupby(['lead_character'
                                                                                  ])['rating'].mean().reset_index(
                                                                                      name='Average Rating').sort_values(
                                                                                          by='Average Rating', ascending = False)[:10]
plt.bar(AvgRt_21st['lead_character'], AvgRt_21st['Average Rating'])
plt.title('10 Best Rated Lead Characters\nSince 2000')
plt.xticks(rotation = 80)
plt.xlabel('')

    '''Before 2000'''
AvgRt_20th = IMDb_250[['lead_character',
                       'rating']][IMDb_250['release_year'] < 2000].groupby(['lead_character'
                                                                                  ])['rating'].mean().reset_index(
                                                                                      name='Average Rating').sort_values(
                                                                                          by='Average Rating', ascending = False)[:10]
plt.bar(AvgRt_20th['lead_character'], AvgRt_20th['Average Rating'])
plt.title('10 Best Rated Lead Characters\nBefore 2000')
plt.xticks(rotation = 80)
plt.xlabel('')


    '''
    Who are the lead characters and their films cumulative Gross ROI?
    '''
        
    '''Global analysis'''
sum_roi = IMDb_250[['lead_character', 
                  'gross_roi']].groupby(['lead_character'])[
                      'gross_roi'].sum().reset_index(name='Gross ROI').sort_values(by='Gross ROI',
                                                                                      ascending = False)[:10]

plt.bar(sum_roi['lead_character'], sum_roi['Gross ROI'])
plt.title('Top 10 Lead Characters\nGross ROI')
plt.xticks(rotation = 80)
plt.xlabel('')

    '''Since 2000'''
sum_roi_21st = IMDb_250[['lead_character',
                       'gross_roi']][IMDb_250['release_year'] >= 2000].groupby(['lead_character'
                                                                                  ])['gross_roi'].sum().reset_index(
                                                                                      name='Gross ROI').sort_values(
                                                                                          by='Gross ROI', ascending = False)[:10]
plt.bar(sum_roi_21st['lead_character'], sum_roi_21st['Gross ROI'])
plt.title('Top 10 Lead Characters\nGross ROI (Since 2000)')
plt.xticks(rotation = 80)
plt.xlabel('')

    '''Before 2000'''
sum_roi_20th = IMDb_250[['lead_character',
                       'gross_roi']][IMDb_250['release_year'] < 2000].groupby(['lead_character'
                                                                                  ])['gross_roi'].sum().reset_index(
                                                                                      name='Gross ROI').sort_values(
                                                                                          by='Gross ROI', ascending = False)[:10]
plt.bar(sum_roi_20th['lead_character'], sum_roi_20th['Gross ROI'])
plt.title('Top 10 Lead Characters\nGross ROI (Before 2000)')
plt.xticks(rotation = 80)
plt.xlabel('')
# %%



# %%
"""" RELATIONSHIP ANALYSIS """

    '''
   The command shown next is set to get dummies for the explanators and store
   them in a a set. And then we pass the desired output columns (Rating and 
   Gross ROI) to their respective sets to.
    '''
x_stars, y_rating, y_roi = pd.get_dummies(IMDb_250.iloc[:,4:7], 
                                           drop_first = True), IMDb_250[
                                               'rating'], IMDb_250['gross_roi']

    '''
    We have about 648 columns now. The function below is created to select only
    the relevant attributes (Recursive Feature Elimination). This function will
    also provide the r2 scores for the two regression analysis, considering 
    only the explanators with statistical significance.
    '''    
    
def display_r2(x, y1, y2, relation1, relation2):
    
    
        # OLS for y1
    # Selecting just the relevant explanators
    rfe1 = RFE(xgb(), n_features_to_select=None).fit(x, y1)
    x1 = x[x.columns[rfe1.support_]]
    # Fitting the model
    intercept1 = sm.add_constant(x1)
    model1 = sm.OLS(y1, intercept1).fit()
    # Checking p values
    p_values1 = model1.pvalues
    p_values_table1 = pd.DataFrame({'Feature': p_values1.index,
                                    'P-Value': p_values1.values})
    # Extracting independent variables statistically significants
    sigtable1 = p_values_table1[p_values_table1['P-Value'] <= 0.05][1:]
    x1_sig = x1[list(sigtable1['Feature'])]
    # Fitting the model with significant explanators
    intercept1_final = sm.add_constant(x1_sig)
    model1_final = sm.OLS(y1, intercept1_final).fit()
    
        # OLS for y2
    rfe2 = RFE(xgb(), n_features_to_select=None).fit(x, y2)
    x2 = x[x.columns[rfe2.support_]]
    # Fitting the model (y2)
    intercept2 = sm.add_constant(x2)
    model2 = sm.OLS(y2, intercept2).fit()
    # Checking p values (y2)
    p_values2 = model2.pvalues
    p_values_table2 = pd.DataFrame({'Feature': p_values2.index,
                                    'P-Value': p_values2.values})
    # Extracting independent variables statistically significants (y2)
    sigtable2 = p_values_table2[p_values_table2['P-Value'] <= 0.05][1:]
    x2_sig = x2[list(sigtable2['Feature'])]
    # Fitting the model with significant explanators(y2)
    intercept2_final = sm.add_constant(x2_sig)
    model2_final = sm.OLS(y2, intercept2_final).fit()
    
        # Creating Dataframe for r2 scores
    scores_dict = {f'{relation1}': [model1_final.rsquared],
              f'{relation2}': [model2_final.rsquared]}
    scores_df = pd.DataFrame(scores_dict)
    
    
    return scores_df

display_r2(x_stars, y_rating, y_roi,
               'R2: Stars->Rating', 'R2: Stars->Gross ROI')

    '''
    FINAL REMARKS
    The outcome of the above function informs that about 93% of the Rating may
    be explained by the influence of the Stars, whereas about 99% of the Gross 
    ROI of the movies may be determined by their stars.  
    '''
# %%
