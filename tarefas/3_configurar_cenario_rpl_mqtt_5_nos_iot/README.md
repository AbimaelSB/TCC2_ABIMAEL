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

- [x] Configurar cenário com um nó RPL, protocolo de aplicação MQTT e cinco nós IoT.

  * Baixando o protocolo de aplicação MQTT-SN na pasta do Contiki e executando o cenário teste. <br/> Tutorial utilizado:     <https://www.youtube.com/watch?v=5qfoOCtIbEg>
      [![Vídeo Tutorial instalação do protocolo MQTT-SN no Contiki](https://img.youtube.com/vi/5qfoOCtIbEg/hqdefault.jpg)](https://youtube.com/watch?v=5qfoOCtIbEg)
   
      - Criar um novo mote *Border Router*. <br/>
      ```Sky Mote >> contiki/example/ipv6/rpl-border-router/border-router.c```

      - Navegar até o diretório do Contiki e clonar o mqtt-sn.c: <br/>
      ```git clone https://github.com/aignacio/mqtt-sn-contiki.c```

      - Renomear de `mqtt-sn-contiki_example` para `mqtt-sn`.

      - Criar um novo mote do tipo *Publisher* - *Sky Mote* - `contiki/mqtt-sn-contiki/main_core.c`

      - Criar um novo mote do tipo *Subscriber* - *Sky Mote* - `contiki/mqtt-sn-contiki/main_core.c`

      - Clicar com o botão direito no *Border Router* - *Motel Tool* - *Serial Socket (Server)*

      - `cd contiki/examples/ipv6/rpl-border-router - make connect-router-cooja`      

      - `cd contiki/mqtt-sn-contiki/tools/mosquitto.rsmb/rsmb/src - make`

      - `cd contiki/mqtt-sn-contiki/tools/mosquitto.rsmb/rsmb/src - sudo ./broker_mqtts config.mqtt`

      - Rodar a Simulação.
         - Ao tentar rodar o seguinte erro ocorria:         
         <br/>
         
         ![Imagem Erro de saída da execução](../../img/error/error_output_compile_run.png)

         <br/>
         
         Devido a uma modificação realizada no arquivo main_core.c para teste de debug este erro ocorria. Então a linha (`debug_os(broker_address);`) foi devidamente comentada e o erro foi sanado.
         
         <br/>
         
         ![Commented line error output debug](../../img/error/comment_error_line.png)


   * Informativos da execução do presente tutorial.

      - Resolvido como declarar e exportar a variavel $JAVA_HOME.
      - Ao tentar utilizar os nós do tipo Sky mote, ocorre um erro.
      - Cenário construido com os nós Z1, porém a troca das mensagens não passa pelo Broker.
      - Ainda não identificado o motivo dos nós no contiki não publicarem/increverem nos topicos.

      Obs: Tópicos serão melhor detalhados, com prints.

<div align="center"><button><a href="../2_configurar_cenario_com_um_no_rpl/1_graficos_gerados/README.md"><< Anterior</a></button></div>
