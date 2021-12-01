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
simple Node
{
    parameters:
        @signal[energy](type=double);
        @statistic[energy](source="energy";title="node remain energe";record=vector);
       	
		@signal[dataSent](type=int);
        @statistic[dataSent](source="dataSent";title="node send data";record=vector);
       	
		@signal[dataRecv](type=int);
        @statistic[dataRecv](source="dataRecv";title="node recv data";record=vector);
        
       	
        double x;
        double y;
        @display("p=$x,$y");
    gates:
        input radioIn @directIn; // work as input and output
        

        //output out;
}
