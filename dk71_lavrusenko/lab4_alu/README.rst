======================
����������� ������ �4
======================

����:
--------

��������� "����������-�������� ��������"

��������:
---------

��������  "����������-��������� �������", ���� ���� ���� :

������������/������� ���� (����������� "Barrel shifter �� ����������� ������ �3")

�������� ������ �� ��������� �����

ֳ���������� ��������/������

������ �������� AND, OR, NOR, XOR

���������� �������� zero, overflow


ճ� ������:
-----------

��� ���� ����������� ������ ���� ���������� ���� �������������� ��������/�������� (``src/add_sub.v``), ���� ��� ���������� �� ��� ``Verilog``. ��� ���� ����� ������� �� ������ ``overflow``, ���� �������� ��� ����� �� ���������� ������� ���������� ������������ �������� ��� ��������� ����������.[1]

������� ���� ������ � ���� �������� ``AND``, ``OR``, ``NOR``, ``XOR``, ``Verilog`` ����: ``src/logic.v``. ���� ��������/������ ����� ����������� �� ��� ����� ������� ��������� (``src/mul_div.v``), �� �� ���� ``in_opt``, ���� ������ ��� �� ����������. 

�� ����� ��� �� ������ �������� �������������, ���� ��� ��������� �� ��������� �����������, �� ������ �� ��� �������� ���� ������ ``in_func``, ���� ������ ��� �� ���� ��������� �� ����� ``OUTPUT`` ���.

����� ���� ������������ RTL ����� ��� ����� ���.

.. image:: media/lab3_barrel_shifter.png

������� 4.1 - ������ "���������� �������"" � ``RTL Viewer``

.. image:: media/add_sub.png

������� 4.2 - ������ "C�������" � ``RTL Viewer``

.. image:: media/logic.png

������� 4.3 - ������ "�������� �����" � ``RTL Viewer``

.. image:: media/mul_div.png

������� 4.4 - ������ "�������������/ĳ������" � ``RTL Viewer``

.. image:: media/alu.png

������� 4.5 - ������ "���" � ``RTL Viewer``

.. image:: media/waveform.png

������� 4.6 - ������ "Waveform" ���

��������:
---------

� ��� ��������� ����������� ������ ���� ���������� "���". ���� �������� ������� ������������ ��������, � ����: �� ������ �������� ������ �� ���� �������� �������, ������ �� ������, �� � � ��������. ����� �� ���� �� ������ ������ �� ��������� �����, �����, �������, ������ ������ ��������. ����� ���� �������� ``test bench``.

� ����� ������������ ����� ���� �������� ������� ������ ������ �� ���, ��� ��������� ��� ������� ���� �� ������ �������. ��� �������� ���� ����������� ���������� ``Cadence Incisive``, "��������" ������ ��� ���������� �� PR, ������� ������ ��������. 


������ ������������ ������:
--------------------------

1. Overflow [����������� ������] ����� �������: <https://en.wikipedia.org/wiki/Overflow_flag>

P.S. ������� ���� ���� ����� � ������ �������