

var table = document.querySelector('table');
var nome = document.querySelector('#nomeProdt');
var descricao = document.querySelector('#descricaoProdt');
var quantidade = document.querySelector('#Quantidade');
var valor = document.querySelector('#valor');
var desconto = document.querySelector('#desconto');


function adicionar(){
    var i = 1;
    table.innerHTML += "<tr><td>"+nome.value+"</td><td>"+descricao.value+"</td><td>"+quantidade.value+"</td><td>"+valor.value+"</td><td>"+desconto.value+"</td><td>"+   +"</td></tr>";
    i++;
}
function removeLinha(linha) {
    var i=linha.parentNode.parentNode.rowIndex;
    document.getElementById('tbl').deleteRow(i);
  }