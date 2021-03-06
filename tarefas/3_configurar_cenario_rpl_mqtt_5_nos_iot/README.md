<div align="center">
<img width="20%" height="50%" alt="Universidade Federal do Ceará - UFC, Campus Quixadá" src="../../img/logo-ufc.png">
<p><strong>UNIVERSIDADE FEDERAL DO CEARÁ <br> CAMPUS QUIXADÁ <br> CURSO DE TECNOLOGIA EM REDES DE COMPUTADORES</strong></p>
</div>

## Análise de Desempenho dos Protocolos CoAP e MQTT em Redes IoT

- <div style="text-align: justify"> Trabalho de Conclusão de Curso Intitulado: Análise de Desempenho dos Protocolos CoAP e MQTT em Redes IoT. Apresentado ao Curso de Tecnologia em Redes de Computadores da Universidade Federal  do  Ceará,  como  requisito  parcial  à obtenção do grau de Tecnólogo em Redes de Computadores. 
  </div>

## Índice

1. [Lista de Tarefas](../../README.md)
   1. [Instalar o Contiki-OS](../1_instalar_contiki/README.md)
   2. [Configurar um cenário teste com um nó RPL](../2_configurar_cenario_com_um_no_rpl/README.md)
      1. [Gráficos gerados](../2_configurar_cenario_com_um_no_rpl//1_graficos_gerados/README.md)
   3. Configurar cenário com um nó RPL, protocolo de aplicação MQTT e cinco nós IoT

<a name="listaTarefas"></a>

## Tarefa :clipboard:

- [ ] Configurar cenário com um nó RPL, protocolo de aplicação MQTT e cinco nós IoT.

  - [x] :sparkles: Baixando o protocolo de aplicação MQTT-SN na pasta do Contiki e executando o cenário teste. :sparkles: <br/> Tutorial utilizado: <https://www.youtube.com/watch?v=5qfoOCtIbEg>
        [![Vídeo Tutorial instalação do protocolo MQTT-SN no Contiki](https://img.youtube.com/vi/5qfoOCtIbEg/hqdefault.jpg)](https://youtube.com/watch?v=5qfoOCtIbEg)

    - Navegar até o diretório do Contiki e clonar o mqtt-sn.c: <br/>
      - `cd contiki`
      - `git clone https://github.com/aignacio/mqtt-sn-contiki.c`     

    - Renomear de `mqtt-sn-contiki_example` para `mqtt-sn-contiki`.
      - `mv mqtt-sn-contiki_example mqtt-sn-contiki`

    - Os proxímos passos, criação dos nós RPL, MQTT-SN e as configuração necessárias para rodar o cenário teste, serão executados nos tópicos seguintes.
    
  - [ ] Configurando o cenário proposto.

    - [x] :sparkles: Criar um novo mote _Border Router_. :sparkles: <br/>

      - `Motes -> Add Motes -> Create new mote type -> Z1 mote`.

        ![Criando Z1 Mote Border Router](../../img/cenario-01-rpl-mqtt/print07.png)

      - Inserindo a descrição que é um nó do tipo Z1 mote e que será o border router:

        ![Inserindo descrição do tipo do mote](../../img/cenario-01-rpl-mqtt/print9.png)

      - Pelo botão _Browser_ foi selecionado o arquivo `border-router.c`.
        O Caminho do arquivo **_border-router.c_** é: `contiki/examples/ipv6/rpl-border-router/border-router.c`. Clique no arquivo `border-router.c` e em seguida clique em _Open_:

        ![Compilando nó RPL Border Router](../../img/cenario-01-rpl-mqtt/print10.png)

      - Clique no botão **_Compile_** para compilar o código do arquivo **_border-router.c_**:

        ![Compilando nó RPL Border Router](../../img/cenario-01-rpl-mqtt/print11.png)

      - Após o término da compilação, para continuar o processo de criação do nó RPL clique em **_Create_**.

        ![Criando nó RPL Border Router](../../img/cenario-01-rpl-mqtt/print14.png)

      - Informando quantos nós RPL serão criados (_Number of new motes_). Nesse caso o valor não será modificado pois necessitamos de apenas um nó RPL para este cenário. Ao final clique em **_Add motes_** adicionando realmente o nó RPL ao cenário.

        ![Informando o número de nós a serem criados](../../img/cenario-01-rpl-mqtt/print12.png)

      - Nó **_RPL Boder Router_** criado!:

        ![Nó RPL adicionado ao cenário](../../img/cenario-01-rpl-mqtt/print13.png)

    - [x] :sparkles: Criar cinco nós MQTT-SN. :sparkles: <br/>

      - `Motes -> Add Motes -> Create new mote type -> Z1 mote`.

        ![Criando Mote MQTT](../../img/cenario-01-rpl-mqtt/print07.png)

      - Inserindo a descrição que é um nó MQTT-SN.
        ![Descrição do tipo de Mote Z1 MQTT-SN](../../img/cenario-01-rpl-mqtt/print16.png)

      - Pelo botão _Browser_ foi selecionado o arquivo `main_core.c`.
          O Caminho do arquivo **_main_core.c_** é: `contiki/mqtt-sn-contiki/main_core.c`. Clique no arquivo `main_core.c` e em seguida clique em _Open_: 

          ![Selecionando o arquivo main_core.c](../../img/cenario-01-rpl-mqtt/print17.png)       

      - Clique no botão **_Compile_** para compilar o código do arquivo **_main_core.c_**:

          ![Compilando nó MQTT-SN](../../img/cenario-01-rpl-mqtt/print18.png)

      - Após o término da compilação, para continuar o processo de criação do nó MQTT-SN clique em **_Create_**.

          ![Criando nós MQTT-SN](../../img/cenario-01-rpl-mqtt/print19.png)

      - Informando quantos nós RPL serão criados (_Number of new motes_). Para este cenário serão utilizados cinco nós MQTT-SN. Ao final clique em **_Add motes_** adicionando realmente os nós MQTT-SN ao cenário.

        ![Nós MQTT-SN adicionados ao cenário](../../img/cenario-01-rpl-mqtt/print20.png)

      - 5 Motes MQTT-SN criados:
        ![Motes MQTT-SN Criados](../../img/cenario-01-rpl-mqtt/print15.png)

 
    - [ ] Configurar o cenário.
     
      - [X] :sparkles: Inicializar *server socket* do nó RPL *Border Router*. :sparkles:
      
        - Clicar com o botão direito no _Border Router_ - _Mote Tool_ - _Serial Socket (Server)_ por padrão a porta que ficará escutando requisições será a `60001`, clique em `start` para iniciar o processo.
      
        ![Abrindo server socket do nó RPL](../../img/cenario-01-rpl-mqtt/print21.png)
        ![Server Socket Em execução](../../img/cenario-01-rpl-mqtt/print22.png)
        
        - O comando tunslip6 cria uma ponte entre a rede RPL e a máquina local.
          - O diretório na qual o comando será executado é o `contiki/tools`.
            - É necessário dar um `make tunslip6 ` para compilar o tunslip6.
              ![Construindo tunslip6](../../img/cenario-01-rpl-mqtt/print23.png)
              
          - Após isso, para criar a ponte use o comando: `sudo ./tunslip6 -a 127.0.0.1 aaaa::1/64`.
            ![Criando a ponte com o tunslip6](../../img/cenario-01-rpl-mqtt/print24.png)
            
            A saída do comando tunslip6:
            ![saída do comando tunslip6](../../img/cenario-01-rpl-mqtt/print25.png)
          
      - [ ] Inicializar Mosquitto RSMB. 
        - Abrir ~/contiki/mqtt-sn-contiki/tools/. Depois excluir um arquivo mosquitto.rsmb que estará vazio com o comando `rm -fr mosquitto.rsmb`. Então é necessário extrair o pacote mosquitto.rsmb.zip, utilizando o comando `unzip mosquitto.rsmb.zip`. Ao final existirá a pasta mosquitto.rsmb, contendo todos os arquivos necessário para estartar o broker.
        
        ![Lista de diretórios e arquivos e o arquivo principal mosquitto.rsmb](../../img/cenario-01-rpl-mqtt/print26.png)        

        - Para inicializar o Broker é preciso entrar no diretório `contiki/mqtt-sn-contiki/tools/mosquitto.rsmb/rsmb/src` e rodar o comando `sudo ./broker_mqtts config.mqtt`.        
          - `cd contiki/mqtt-sn-contiki/tools/mosquitto.rsmb/rsmb/src & sudo ./broker_mqtts config.mqtt`.
            ![Broker MQTT-SN em execução](../../img/cenario-01-rpl-mqtt/print27.png)   

  - [ ] Rodar a Simulação.    

  - Informativos da execução do presente tutorial.
  
    - Ao tentar utilizar os nós do tipo sky mote, ocorre um erro.
    - Cenário construído com os nós sky, porém a troca das mensagens não passa pelo Broker.
    - Ainda não identificado o motivo dos nós no contiki não publicarem/increverem nos topicos.

<div align="center">
   <button>
      <a href="../2_configurar_cenario_com_um_no_rpl/1_graficos_gerados/README.md"><< Anterior</a>
   <button>
</div>
