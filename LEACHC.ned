//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package LEACHCPckg;

network LEACHC
{
    parameters:
        int roundNumber = default(0);
        double totalRemainingEnergy = default(0);
        double avgRemainingEnergy = default(0);
        double lastRoundTime = default(0);
        double clusterHeadPercentage = default(0.1);
        int noOfCH = default(0);
        int noOfCluster = default(0);
        string lstCH = default("0");
        
        double R = default(200);
        
        int sinkX = default(0); //old = 230
        int sinkY = default(0); //old = 40
        
        int networkStatus = default(0); //1=Setup, 2=Data send to CH, 3=Data Send to Sink
        int netSizeX = default(200);
        int netSizeY = default(200);
        int noOfNodeDied = default(0);
        int fstNodeDieRound = default(0);
        int tenNodeDieRound = default(0);
        int allNodeDieRound = default(0);
        
        //Added for throughput
        int noDataSentToCH = default(0);
        int noDataSentToSink = default(0);
        int noDataInSink = default(0);

        int noPacketSentToSink = default(0);
        int sendPacketToCH = default(0);

        int noOfWirelessNode @prompt("Number of Nodes") = default(50);
        //@display("bgb=netSizeX,netSizeY");
        @display("bgb=0,0");
        

    submodules:
        sink: Sink;
        node[noOfWirelessNode]: Node {
            x = cos(uniform(0,2*3.14159))  * uniform(0, dropUnit(R))  ;
            y = sin(uniform(0,2*3.14159))  * uniform(0, dropUnit(R))  ;
            @display("i=misc/node_vs,gold;p=230,140");
        }

}
