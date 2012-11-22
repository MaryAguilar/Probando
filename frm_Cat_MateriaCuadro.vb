Imports clsRutinasComun.Rutinas.RutinasShared
Imports clsControles.Rutinas.RutinasShared
Imports clsAppconfig.Variables
Imports DataManager
Imports System.Windows.Forms

Public Class frm_Cat_MateriaCuadro

    Private Sub frm_Cat_MateriaCuadro_AfterClickGuardar(ByVal e As clsControles.clsEventArgs) Handles Me.AfterClickGuardar
        If Not e.Cancel Then
            Me.TableName = "CAT_MATERIALCUADRO"
            Me.frm_Cat_MateriaCuadro_Initialization(e)
        End If
    End Sub

    Private Sub frm_Cat_MateriaCuadro_BeforeClickGuardar(ByVal e As clsControles.clsEventArgs) Handles Me.BeforeClickGuardar
        If Me.TxtDescripcion.Text.Length < 5 Then
            e.Cancel = True
            _MessageBox.Show("Debe capturar una descripcion para el materia del cuadro.", "", MessageBoxButtons.OK, MessageBoxIcon.Information, Me)
        End If
        If Not e.Cancel Then
            Me.TableName = "CAT_MATERIALCUADRO"
        End If
    End Sub

    Private Sub frm_Cat_MateriaCuadro_Initialization(ByVal e As clsControles.clsEventArgs) Handles Me.Initialization
        Me.Habilitar(False)
        Me.LoadDataGrids()
    End Sub

    Private Sub frm_Cat_MateriaCuadro_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        aControles.Add(Me.txtId, New clsControles.clsSettings("PADRON", "CAT_MATERIALCUADRO", "id_materialcuadro", False, True, False, True))
        aControles.Add(Me.TxtDescripcion, New clsControles.clsSettings("PADRON", "CAT_MATERIALCUADRO", "DESCRIPCION", True, ""))
        aControles.Add(Me.grdMateriaCuadro, New clsControles.clsSettings(False))
        frm_Cat_MateriaCuadro_Initialization(Nothing)
    End Sub

    Private Sub grdInstalacion_RowChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grdMateriaCuadro.RowChanged
        Try
            Me.DisplayRegistro(Me.grdMateriaCuadro.CurrentDataRowView.Item("id_materialcuadro"))
        Catch ex As Exception

        End Try
    End Sub
End Class