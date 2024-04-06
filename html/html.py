import streamlit as st

st.markdown(''' 
# Challenge

## MAY THE FORCE BE WITH YOU

### TODO
- Incluir uma imagem da Rey no final da página. Você precisará baixar uma imagem dela da web e
deverá salvar no diretório do seu projeto. A função image() fará exibição dessa imagem.

- Criar uma lista do tipo menu suspenso que mostre as categorias do jedi e que permita escolher uma
categoria. Para isso devemos usar a função selectbox() com as categorias jedi.

- Criar um botão de “Enviar Dados” que irá submeter os dados preenchidos para a página e será
processado. Usaremos a função button(), que retornará se o botão foi pressionado.
''')

st.title('Jedi web app')

st.cache_data.jedi_list = []

name = st.text_input('Jedi Name:')
age = st.number_input('Jedi Age:', value=0, step=1, min_value=0, max_value=1500)

def add_jedi():
    st.cache_data.jedi_list.append(
    {
        'name': name,
        'age':  age
    })


st.button('Send Jedi', on_click=add_jedi)

st.selectbox('Jedi Rankings', ('Padawan', 'Knight', 'Master'))


for e in st.cache_data.jedi_list:
    st.write('The Jedi', e['name'], 'is', e['age'], 'years old')


st.image('https://cdn.pixabay.com/photo/2015/09/04/18/55/yoda-922520_640.png')