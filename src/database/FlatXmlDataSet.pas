unit FlatXmlDataSet;

interface

uses DataSet, SysUtils;

type

(*

  - Cada elemento do xml corresponde � uma tupla da tabela. O nome do elemento
    corresponde ao nome da tabela e cada atributo corresponde aos campos da tabela.
  - Para inserir campos nulos, basta omitir os atributos
  - O metadata da tabela ser� definido baseada na primeira tupla da tabela ou pode
    ser criado um DTD, que ser� usado como defini��o do dados.

  O DBUnit possui uma funcionalidade chamada ColumnSensing, que vai adicionando
  as colunas conforme v�o sendo usada dentro do xml, por exemplo, caso o primeiro
  registro n�o possua determinada coluna, ela n�o far� parte do metadata, mais
  se a coluna existir no segundo registro, o metadata � atualizado. 


  Poss�vel implementa��o:
    - Criar uma lista onde v�o sendo adicionados os DataSets, um para cada tabela.
    - A cada linha, se o dataset n�o existir, cria o mesmo com a defini��o das colunas,
      sen�o, apenas insere o registro no dataset.
    - Ap�s finalizado, ordena a lista de dataset de acordo com a depend�ncia dos dados,
      que pode ser definida de alguma forma
    - Prossegue com a inser��o
*)

  TFlatXmlDataSet = class(TInterfacedObject{, IDataSet})
  private
    FFileName: TFileName;
  public
    constructor Create(AFileName: TFileName);
  end;

implementation

{ TFlatXmlDataSet }

constructor TFlatXmlDataSet.Create(AFileName: TFileName);
begin
  FFileName := AFileName;
end;

end.
