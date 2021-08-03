<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= " br.com.fatecmc.esiii.dominio.* "%>
<!DOCTYPE html>
<html>
<head>
<title>Editar Professor</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="img/alunos-121x121.png">
<link rel="stylesheet" href="css/style.css">
</head>
<%
Object ob = new Object();
ob = request.getAttribute("professor");
Professor professor = (Professor)ob;

%>
<body>
    <header>
        <div class= "center">
            <div class = "logo">
                <h2 >
                    <a class="log" href="index.html">
                    <img src="img/alunos-121x121.png" alt="ALuno" style="height: 3.8rem;">
                    Cadastro do Aluno
                    </a>
                </h2>
            </div><!--logo-->
            <div class="menu">
                <div class="dropdown">
                    <button class="dropbtn">Aluno</button>
                    <div class="dropdown-content">
                      <form name = "formAluno" action = "ccAluno" method="get">   
                        <input class="buton" id="operacao" name="operacao" type = "submit" value = "CADASTRAR" >
                      </form>
                      <form name = "formAluno" action = "csAluno" method="get">   
                        <input class="buton" id="operacao" name="operacao" type = "submit" value = "CONSULTAR" >
                      </form>
                    </div>
                  </div>

                  <div class="dropdown">
                    <button class="dropbtn">Professor</button>
                    <div class="dropdown-content">
                      <form name = "formProfessor" action = "ccProfessor" method="get">   
                        <input class="buton" id="operacao" name="operacao" type = "submit" value = "CADASTRAR" >
                      </form>
                      <form name = "formProfessor" action = "csProfessor" method="get">   
                        <input class="buton" id="operacao" name="operacao" type = "submit" value = "CONSULTAR" >
                      </form>
                    </div>
                  </div>

                <div class="dropdown">
                    <button class="dropbtn">Curso</button>
                    <div class="dropdown-content">
                      <a class="buton" href="cadastrar-curso.html">CADASTRAR</a>
                      <form name = "formCurso" action = "csCurso" method="get">   
                        <input class="buton" id="operacao" name="operacao" type = "submit" value = "CONSULTAR" >
                      </form>
                    </div>
                  </div>
                    
            </div>
        </div><!--centro-->
    </header>
    <section class="main">
        <div class="formulario">
            <form name = "formProfessor" action = "edProfessor" method="get">
            	 <div style="display: none;">
					<label for="id">ID: </label>
	                <input type="text" id="id" name="id" value=<%=professor.getId()%>>
				</div>
				<div style="display: none;">
					<label for="curso">Curso: </label>
	                <input type="text" id="curso" name="curso" value=<%=professor.getCurso().getId()%>>
				</div>
				<div style="display: none;">
					<label for="endereco">Endereco: </label>
	                <input type="text" id="endereco" name="endereco" value=<%=professor.getEndereco().getId()%>>
				</div>
                
                <label for="pnome">Primeiro Nome:</label>
                <div class="centralizar"><input type="text" id="pnome" name="pnome" value="<%=professor.getPnome()%>"></div>
                <label for="mnome">Nome do Meio:</label>
                <div class="centralizar"><input type="text" id="mnome" name="mnome" value="<%=professor.getMnome()%>"></div>
               	<label for="unome">Ultimo nome:</label>
                <div class="centralizar"><input type="text" id="unome" name="unome" value="<%=professor.getUnome()%>"></div>
                <label for="email">Email:</label>
                <div class="centralizar"><input type="text" id="email" name="email" value="<%=professor.getEmail()%>"></div>	
               	<label for="cpf">Cpf:</label>
                <div class="centralizar"><input type="text" id="cpf" name="cpf" value="<%=professor.getCpf()%>"></div>
                <label for="formacao">Formação:</label>
                <div class="centralizar"><input type="text" id="formacao" name="formacao" value="<%=professor.getFormacao()%>"></div>
               	
               	<label for="unome">Cidade:</label>
               	<div class="centralizar"><input type="text" id="cidade" name="cidade" value="<%=professor.getEndereco().getCidade()%>"></div>
                <label for="mnome">Cstado:</label>
                <div class="centralizar"><input type="text" id="estado" name="estado" value="<%=professor.getEndereco().getEstado()%>"></div>
               	<label for="unome">Numero:</label>
                <div class="centralizar"><input type="text" id="numero" name="numero" value="<%=professor.getEndereco().getNumero()%>"></div>
               	<label for="unome">Logradouro:</label>
               	<div class="centralizar"><input type="text" id="logradouro" name="logradouro" value="<%=professor.getEndereco().getNumero()%>"></div>
                <label for="mnome">Cep:</label>
                <div class="centralizar"><input type="text" id="cep" name="cep" value="<%=professor.getEndereco().getCep()%>"></div>
               	
               	<input class="button"  type = "submit"id="operacao" name = "operacao" value = "EDITAR" >
    
     

            </form>
            
            

        </div>
         
            
        
    
    </section>
    <div>
        <div class="fatec">
            Fatec Mogi das Cruzes
 
        </div>
        
    </div>
</body>
</html>