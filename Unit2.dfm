object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 352
  Width = 637
  object con: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sistempakar_printer'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\black\Downloads\Tugas\Sem6\sispak\Sistem Pakar Teknik K' +
      'omputer Diagnosa Kerusakan Printer\libmysql.dll'
    Left = 72
    Top = 40
  end
  object Gejala_zq: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from tabelgejala order by KodeGejala')
    Params = <>
    Left = 72
    Top = 112
  end
  object Kerusakan_zq: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from tabelkerusakan order by KodeKerusakan')
    Params = <>
    Left = 152
    Top = 112
  end
  object Pertanyaan_zq: TZQuery
    Connection = con
    SQL.Strings = (
      'SELECT * FROM tabelpertanyaan ORDER BY KodePertanyaan')
    Params = <>
    Left = 240
    Top = 112
  end
  object pRule_zq: TZQuery
    Connection = con
    SQL.Strings = (
      'SELECT a.KodeRule, a.kodepertanyaan1, a.kodekerusakan,'
      'b.NamaKerusakan,b.Penyebab, b.Solusi, b.Gambar'
      'FROM tabelrule a, tabelkerusakan b'
      'WHERE a.kodekerusakan= b.KodeKerusakan'
      'ORDER BY a.KodeRule')
    Params = <>
    Left = 400
    Top = 112
    object pRule_zqKodeRule: TWideStringField
      FieldName = 'KodeRule'
      Required = True
      Size = 6
    end
    object pRule_zqkodepertanyaan1: TWideStringField
      FieldName = 'kodepertanyaan1'
      Required = True
      Size = 50
    end
    object pRule_zqkodekerusakan: TWideStringField
      FieldName = 'kodekerusakan'
      Required = True
      Size = 6
    end
    object pRule_zqNamaKerusakan: TWideStringField
      FieldName = 'NamaKerusakan'
      Required = True
      Size = 30
    end
    object pRule_zqPenyebab: TWideStringField
      FieldName = 'Penyebab'
      Required = True
      Size = 200
    end
    object pRule_zqSolusi: TWideStringField
      FieldName = 'Solusi'
      Required = True
      Size = 1000
    end
    object pRule_zqGambar: TBlobField
      FieldName = 'Gambar'
    end
  end
  object Rule_zq: TZQuery
    Connection = con
    SQL.Strings = (
      'SELECT * FROM tabelrule ORDER BY KodeRule')
    Params = <>
    Left = 320
    Top = 112
  end
  object Gejala_ds: TDataSource
    DataSet = Gejala_zq
    Left = 72
    Top = 184
  end
  object Kerusakan_ds: TDataSource
    DataSet = Kerusakan_zq
    Left = 152
    Top = 184
  end
  object Pertanyaan_ds: TDataSource
    DataSet = Pertanyaan_zq
    Left = 240
    Top = 184
  end
  object Rule_ds: TDataSource
    DataSet = Rule_zq
    Left = 320
    Top = 184
  end
  object pRule_ds: TDataSource
    DataSet = pRule_zq
    Left = 400
    Top = 184
  end
  object User_zq: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from tabeluser order by IDUser')
    Params = <>
    Left = 472
    Top = 112
  end
  object User_ds: TDataSource
    DataSet = User_zq
    Left = 472
    Top = 184
  end
  object History_zq: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from tabelgejala order by KodeGejala')
    Params = <>
    Left = 544
    Top = 112
  end
  object History_ds: TDataSource
    DataSet = History_zq
    Left = 544
    Top = 184
  end
  object TempPertanyaan_zq: TZQuery
    Connection = con
    Params = <>
    Left = 240
    Top = 256
  end
end
