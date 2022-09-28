# Customer Loyalty Program for E-Commerce

Este projeto consiste na identificação do grupo de clientes mais valiosos para criação de um programa de fidelidade.

![online-shopping-4516036__340](https://user-images.githubusercontent.com/105643907/192764287-a556c53e-c6b8-46be-80fb-2e03fa4fe472.jpg)


# Business Problem


A APA LTDA é uma empresa que comercializa itens diversos através de um 'e-commerce'.
Após 1 ano de operação(2016/11 - 2017/12), o time de negócios percebeu que alguns clientes de sua base compram produtos de alto ticket, com alta frequência e contribuem de forma significativa no faturamento da empresa. Com base nessa percepção, foi demandado à equipe de dados que fizesse a seleção dos melhores clientes da base por meio de técnicas avançadas de manipulação de dados, para que posteriormente o time de marketing possa lançar um programa de fidelidade chamado "Insiders", com o objetivo de aumentar a retenção e faturamento.

Além do grupo Insiders, os demais grupos de clientes encontrados receberão estratégias de marketing adequadas, seja com o objetivo de alavancar, evitar churn, etc.

# Desafios

Como resultado deste projeto, espera-se a entrega de uma lista de pessoas elegíveis para participar do programa Insiders, bem como as seguintes questões de negócio devem ser respondidas à área de marketing:

- Quem são as pessoas elegíveis para participar do programa Loyals?
- Quantos clientes farão parte do grupo?
- Quais são as principais características desses clientes?
- Qual a porcentagem de contribuição de faturamento, vinda do Loyals?
- Qual a expectativa de faturamento desse grupo para os próximos meses?
- Quais as condições para uma pessoa ser elegível ao Loyals?
- Quais as condições para uma pessoa ser removida do Loyals?
- Qual a garantia que o programa Loyals é melhor que o restante da base?
- Quais ações do time de marketing pode realizar para aumentar o faturamento?

# Business Assumptions

- Purchases with zero price will not be considered (removed).
- Items whose stock code has only alphabetic characters (such as D', 'DOT', 'M', 'POST') will not be considered in the calculations.
- The negative "quantity" attribute means a product return.
- Customers who return more products than they purchased will not be considered (removed).
- Purchases whose customer id is unknown will not be considered (removed).

# Attribute List

- InvoiceNo - unique identifier for each transaction
- StockCode - product code (item)
- Description - product name and description
- Quantity - quantity of items of each product per transaction
- InvoiceDate - date (day) on which the transaction was carried out
- UnitPrice - unit price of each product (item)
- CustomerID - unique identifier for each customer
- Country - name of the country where the customer resides


# Solution Strategy

## The management method used was CRISP-DM:

**Step 00. Solution Planning:** Planejamento da solução, considerando o contexto de negócio. Considerar a Entrada, Saída e Tarefas a serem realizadas.

**Step 01. Data Description:** 
- Renomear colunas, compreender dimensões e tipos dos dados.
- Verificação e tratamento de dados ausentes.
- Alterações de tipos de dados que se fizerem necessárias.
- Analisar atributos numéricos e categóricos através de estatística descritiva.

**Step 02. Data Filtering:** 
- Filter irrelevant rows and columns for modeling, according to descriptive statistics.

**Step 03. Feature Engineering:** 
- Changing the granularity from InvoiceNo to CustomerID
- New attributes are derived through the original variables, in order to better describe the phenomenon to be modeled.

**Step 04. Exploratory Data Analysis:** 
- Análise univariada com uso do Pandas Profiling.
- Exploração de dados para entender sua distribuição no espaço de dados, entender o comportamento do negócio, e mensurar o impacto das variáveis no modelo.

**Step 05. Data Preparation:** 
- Aplicar transformações nas features para facilitar o aprendizado e execução do modelo.

**Step 06. Selection of resources:** 
- Select the variables that best describe the model and eliminate redundant variables that do not have information for learning. 

**Step 07. Hyperparameter Fine Tunning:** 
- Execução de modelos de machine learning com diferentes Ks (quantidade de grupos), no espaço de features e no espaço de embedding.
- Fazer um ajuste fino de hiperparâmetros em cada modelo, identificando o melhor conjunto de parâmetros para maximizar sua capacidade de aprendizagem.

**Step 08. Machine Learning Modeling:** 
- Executar diferentes modelos de aprendizado de máquina e selecionar aquele com melhor desempenho com base nas métricas escolhidas (Silhouette Score).

**Step 09. Convert model performance to business values:** 
- Análise do perfil (atributos) de cada cluster encontrado pelo modelo.
- Plotar resultados traduzindo ao time de negócios.

**Step 10. Exploratory Data Analysis for Business:** 
- Criação e, priorização e validação de hipóteses.
- Responder as questões de negócios.

**Step 11. Deploy to Production:** 

- Planejamento e implementação da arquitetura de deploy do modelo localmente.
- Construção e teste da arquitetura no ambiente AWS, através de S3, EC2 e RDS.
- Construir e validar o dashboard no Metabase.



# Top Data Insights

**H1**: 

**FALSE**: 



**H2**: 

**FALSE**: 



**H7**: 

**FALSE**: 



# Used Machine Learning Models


# Machine Learning Model Performance



# Model performance on business values


# How to access the prediction

## Pre-requirement



# Conclusion


# Technologies

- Jupyter Notebook
- Python

# Deploy into production


# Author

Eduardo Amorim
