unit MD5;

interface

uses System.Classes;

function MD5String(const Texto: String): String;
function MD5Stream(Stm: TStream): String;
function MD5Arquivo(const Arquivo: String): String;

implementation

uses IdHashMessageDigest, System.SysUtils;

function MD5String(const Texto: String): String;
var IDM: TIdHashMessageDigest5;
begin
    IDM := TIdHashMessageDigest5.Create;
    try
      Result := IDM.HashStringAsHex(Texto);
    finally
      IDM.Free;
    end;
end;

function MD5Stream(Stm: TStream): String;
var IDM: TIdHashMessageDigest5;
begin
    IDM := TIdHashMessageDigest5.Create;
    try
      Result := IDM.HashStreamAsHex(Stm);
    finally
      IDM.Free;
    end;
end;

function MD5Arquivo(const Arquivo: String): String;
var F: TFileStream;
begin
    F := TFileStream.Create(Arquivo, fmOpenRead or fmShareDenyNone);
    try
      Result := MD5Stream(F);
    finally
      F.Free;
    end;
end;

end.
