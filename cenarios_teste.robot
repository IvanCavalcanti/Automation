
*** Settings ***
Library    Browser      timeout=30s

*** Variables ***
${Browser}                     chromium
${URL}                         https://uat.exemplo.com/app/login
${Username}                    usuario@exemplo.com
${Password}                    SenhaFicticia123!
${Telefone}                    951475620
${Direção}                     Rua Exemplo
${Número}                      1910
${Complemento}                 Bloco A
${Company}                     Empresa QA Teste
${User}                        Usuário QA 
${Usermail}                    usuarioqa@exemplo.com
${Telefone2}                   985412724
${Direção2}                    Endereço Inicial
${Número2}                     0010
${Complemento2}                Complemento Inicial
${User2}                       Nome Inicial Usuário
${Usermail2}                   inicial@exemplo.com

*** Keywords ***
Abrir o navegador
      New Browser          ${Browser}    headless=false    slowMo=00:00:01
      New Page    ${URL}
      Set Viewport Size    1350    740

Inserir login
      Fill Text    input[id="loginEmail"]    ${Username}

Inserir senha
      Fill Text    input[id="password"]    ${Password}

Clicar no botão logar
      Click     //button[@type='submit'][contains(.,'Ingresar')]

Selecionar mis datos
      Wait For Elements State    //div[contains(@class,'avatar-header')]
      ...      visible    12s
      Click    //div[contains(@class,'avatar-header')]
      Click    //a[contains(.,'Mis datos')]

Editar dados
      Fill Text    //input[contains(@data-mask,'celphoneCL')]    ${Telefone}
      Click        //button[@type='submit'][contains(.,'Guardar')]
      Take Screenshot
      Click        //i[@class='number-nav'][contains(.,'2')]
      Click        //i[contains(@class,'fa fa-pencil')]

Editar endereço
      Click        //div[contains(@id,'stateDropDown_chosen')]
      Wait For Elements State    //li[@class='active-result'][contains(.,'Los Lagos')]
      ...    visible    12s
      Click        //li[@class='active-result'][contains(.,'Los Lagos')] 
      Click        //div[contains(@id,'cityDropDown_chosen')]
      Wait For Elements State    //li[@class='active-result'][contains(.,'Palena')]
      ...    visible    12s
      Click        //li[@class='active-result'][contains(.,'Palena')]
      Click        //div[contains(@id,'districtDropDown_chosen')]
      Wait For Elements State    //li[@class='active-result'][contains(.,'Hualaihué')]
      ...    visible    12s
      Click        //li[@class='active-result'][contains(.,'Hualaihué')]
      Fill Text    //input[@class='form-control ']    ${Direção}
      Fill Text    //input[contains(@id,'numberTextBox')]    ${Número}
      Fill Text    //input[contains(@id,'complementTextBox')]    ${Complemento}
      Click        //button[@type='submit'][contains(.,'Guardar')]
      Sleep        3s
      Take Screenshot
      Sleep        7s

Editar usuário
      Click        //i[@class='number-nav'][contains(.,'4')]
      Click        //a[contains(@class,'btn btn-sm btn-peterriver')]
      Fill Text    //input[contains(@id,'nameTextBox')]    ${User}
      Fill Text    //input[contains(@id,'emailTextBox')]    ${Usermail}
      Fill Text    //input[contains(@id,'passwordTextBox')]    ${Password}
      Fill Text    //input[contains(@id,'confirmPasswordTextBox')]    ${Password}
      Click        //button[@type='submit'][contains(.,'Guardar')]
      Sleep        2s
      Take Screenshot
      Sleep        7s

Editar empresa
      Click        //i[@class='number-nav'][contains(.,'3')]
      Click        //a[@href='/app/company/9999']
      Fill Text    //input[contains(@maxlength,'50')]    ${Company}
      Click        //button[@type='submit'][contains(.,'Criar conta')]
      Sleep        4s
      Take Screenshot
      Sleep        10s

Refazer configurações iniciais
      Wait For Elements State    //div[contains(@class,'avatar-header')]
      ...          visible    12s
      Click        //div[contains(@class,'avatar-header')]
      Click        //a[contains(.,'Mis datos')]
      Fill Text    //input[contains(@data-mask,'celphoneCL')]    ${Telefone2}
      Click        //button[@type='submit'][contains(.,'Guardar')]
      Take Screenshot
      Sleep        7s
      Click        //i[@class='number-nav'][contains(.,'2')]
      Click        //i[contains(@class,'fa fa-pencil')]
      Click        //div[contains(@id,'stateDropDown_chosen')]
      Sleep        7s
      Wait For Elements State    //li[@class='active-result'][contains(.,'Valparaíso')]
      ...    visible    7s 
      Click        //li[@class='active-result'][contains(.,'Valparaíso')] 
      Click        //a[@class='chosen-single'][contains(.,'-- Seleccione --')]
      Sleep        3s 
      Wait For Elements State    //li[contains(.,'San Antonio')]
      ...    visible    7s       
      Click        //li[contains(.,'San Antonio')]
      Click        //a[@class='chosen-single'][contains(.,'-- Seleccione --')]
      Sleep        3s 
      Wait For Elements State    //li[contains(.,'Cartagena')]
      ...    visible    7s       
      Click        //li[contains(.,'Cartagena')]
      Fill Text    //input[@class='form-control ']    ${Direção2}
      Fill Text    //input[contains(@id,'numberTextBox')]    ${Número2}
      Fill Text    //input[contains(@id,'complementTextBox')]    ${Complemento2}
      Click        //button[@type='submit'][contains(.,'Guardar')]
      Take Screenshot
      Sleep        7s
      Click        //i[@class='number-nav'][contains(.,'4')]
      Click        //a[contains(@class,'btn btn-sm btn-peterriver')]
      Fill Text    //input[contains(@id,'nameTextBox')]    ${User2}
      Fill Text    //input[contains(@id,'emailTextBox')]    ${Usermail2}
      Fill Text    //input[contains(@id,'passwordTextBox')]    ${Password}
      Fill Text    //input[contains(@id,'confirmPasswordTextBox')]    ${Password}
      Click        //button[@type='submit'][contains(.,'Guardar')]
      Take Screenshot
      Sleep        5s
      Click        //i[@class='number-nav'][contains(.,'3')]
      Click        //a[@href='/app/company/9999']
      Fill Text    //input[contains(@maxlength,'50')]    Teste Inicial
      Click        //button[@type='submit'][contains(.,'Criar conta')]
      Take Screenshot
      Sleep        7s
