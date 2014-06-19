#!/usr/bin/env python
# -*- coding=utf-8 -*-
import pygtk
import gtk
class CJanela():
    __doc__ = """
        Classe CJanela, desenha uma janela com um label e um botão em uma
        caixa vertical.
    """
    def __init__(self):
        self.janela = gtk.Window(gtk.WINDOW_TOPLEVEL)
        self.janela.set_title("Sinais")
        self.rotulo = gtk.Label()
        self.botao = gtk.Button("Passe o mouse")
        self.botao.connect('enter', self.mouse_sobre)
        self.botao.connect('leave', self.mouse_saiu)
        self.caixa = gtk.VBox()
        self.caixa.pack_start(self.rotulo)
        self.caixa.pack_start(self.botao)
        self.janela.add(self.caixa)
        self.janela.show_all()
    def mouse_sobre(self, widget):
        self.rotulo.set_text("O mouse esta sobre o botao!")
    def mouse_saiu(self, widget):
        self.rotulo.set_text("O mouse saiu de cima do botao!")
janela = CJanela()
gtk.main()
