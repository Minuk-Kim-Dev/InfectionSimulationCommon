protoc.exe -I=./ --csharp_out=./ ./Protocol.proto 
IF ERRORLEVEL 1 PAUSE

START ../../../InfectionSimulationServer/PacketGenerator/bin/PacketGenerator.exe ./Protocol.proto
XCOPY /Y Protocol.cs "../../../InfectionSimulationClient/Assets/Scripts/Packet"
XCOPY /Y Protocol.cs "../../../InfectionSimulationServer/Server/Packet"
XCOPY /Y ClientPacketManager.cs "../../../InfectionSimulationClient/Assets/Scripts/Packet"
XCOPY /Y ServerPacketManager.cs "../../../InfectionSimulationServer/Server/Packet"