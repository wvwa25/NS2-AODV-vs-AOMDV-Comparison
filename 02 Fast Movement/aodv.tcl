set a 1
while {$a == 1 } {
puts "Enter the Routing Agents in mobile networking"
puts "1. AODV" 
puts "2. AOMDV" 
 
set top [gets stdin]
if {$top == 1} {
set opt(chan)           Channel/WirelessChannel    ;# channel type 
set opt(prop)           Propagation/TwoRayGround   ;# radio-propagation model 
set opt(netif)          Phy/WirelessPhy            ;# network interface type 
set opt(mac)            Mac/802_11                 ;# MAC type 
set opt(ifq)            Queue/DropTail/PriQueue    ;# interface queue type 
set opt(ll)             LL                         ;# link layer type 
set opt(ant)            Antenna/OmniAntenna        ;# antenna model 
set opt(ifqlen)         50                         ;# max packet in ifq 
set opt(nn)             22                         ;# number of mobilenodes 
set opt(rp)             AODV                       ;# routing protocol 
set opt(x)              1000   			   ;# X dimension of topography 
set opt(y)              840   			   ;# Y dimension of topography   

### Setting The Simulator Objects
                  
      set ns_ [new Simulator]
#create the nam and trace file:
      set tracefd [open aodv.tr w]
      $ns_ trace-all $tracefd

      set namtrace [open aodv.nam w]
      $ns_ namtrace-all-wireless $namtrace  $opt(x) $opt(y)

      set topo [new Topography]
      $topo load_flatgrid $opt(x) $opt(y)
      create-god $opt(nn)
      set chan_1_ [new $opt(chan)]
      
####  Setting The Distance Variables
                       

      # For model 'TwoRayGround'
      set dist(5m)  7.69113e-06
      set dist(9m)  2.37381e-06
      set dist(10m) 1.92278e-06
      set dist(11m) 1.58908e-06
      set dist(12m) 1.33527e-06
      set dist(13m) 1.13774e-06
      set dist(14m) 9.81011e-07
      set dist(15m) 8.54570e-07
      set dist(16m) 7.51087e-07
      set dist(20m) 4.80696e-07
      set dist(25m) 3.07645e-07
      set dist(30m) 2.13643e-07
      set dist(35m) 1.56962e-07
      set dist(40m) 1.56962e-10
      set dist(45m) 1.56962e-11
      set dist(50m) 1.20174e-13
      Phy/WirelessPhy set CSThresh_ $dist(50m)
      Phy/WirelessPhy set RXThresh_ $dist(50m)

#  Defining Node Configuration
                        
                  $ns_ node-config -adhocRouting $opt(rp) \
                   -llType $opt(ll) \
                   -macType $opt(mac) \
                   -ifqType $opt(ifq) \
                   -ifqLen $opt(ifqlen) \
                   -antType $opt(ant) \
                   -propType $opt(prop) \
                   -phyType $opt(netif) \
                   -topoInstance $topo \
                   -agentTrace ON \
                   -routerTrace ON \
                   -macTrace ON \
                   -movementTrace ON \
                   -channel $chan_1_

###  Creating The WIRELESS NODES
                  
      set n1 [$ns_ node]
      set n2 [$ns_ node]
      set n3 [$ns_ node]
      set n4 [$ns_ node]
      set n5 [$ns_ node]
      set n6 [$ns_ node]
      set n7 [$ns_ node]
      set n8 [$ns_ node]
      set n9 [$ns_ node]
      set n10 [$ns_ node]
      set n11 [$ns_ node]
      set n12 [$ns_ node]
      set n13 [$ns_ node]
      set n14 [$ns_ node]
      set n15 [$ns_ node]
      set n16 [$ns_ node]
      set n17 [$ns_ node]
      set n18 [$ns_ node]
      set n19 [$ns_ node]
      set n20 [$ns_ node]
      set n21 [$ns_ node]
      set n22 [$ns_ node]
      
      set opt(seed) 0.1
      set a [ns-random $opt(seed)]
      set i 0
      while {$i < 5} {
      incr i
      }
            

###  Setting The Initial Positions of Nodes

      $n1 set X_ 513.0
      $n1 set Y_ 517.0
      $n1 set Z_ 0.0
      
      $n2 set X_ 36.0
      $n2 set Y_ 529.0
      $n2 set Z_ 0.0

      $n3 set X_ 143.0
      $n3 set Y_ 666.0
      $n3 set Z_ 0.0

      $n4 set X_ 201.0
      $n4 set Y_ 552.0
      $n4 set Z_ 0.0
      
      $n5 set X_ 147.0
      $n5 set Y_ 403.0
      $n5 set Z_ 0.0
      
      $n6 set X_ 230.0
      $n6 set Y_ 291.0
      $n6 set Z_ 0.0

      $n7 set X_ 295.0
      $n7 set Y_ 419.0
      $n7 set Z_ 0.0

      $n8 set X_ 363.0
      $n8 set Y_ 335.0
      $n8 set Z_ 0.0

      $n9 set X_ 334.0
      $n9 set Y_ 647.0
      $n9 set Z_ 0.0

      $n10 set X_ 304.0
      $n10 set Y_ 777.0
      $n10 set Z_ 0.0
      
      $n11 set X_ 412.0
      $n11 set Y_ 194.0
      $n11 set Z_ 0.0
      
      $n12 set X_ 519.0
      $n12 set Y_ 361.0
      $n12 set Z_ 0.0

      $n13 set X_ 569.0
      $n13 set Y_ 167.0
      $n13 set Z_ 0.0

      $n14 set X_ 349.0
      $n14 set Y_ 546.0
      $n14 set Z_ 0.0

      $n15 set X_ 466.0
      $n15 set Y_ 668.0
      $n15 set Z_ 0.0

      $n16 set X_ 489.0
      $n16 set Y_ 794.0
      $n16 set Z_ 0.0

      $n17 set X_ 606.0
      $n17 set Y_ 711.0
      $n17 set Z_ 0.0

      $n18 set X_ 630.0
      $n18 set Y_ 626.0
      $n18 set Z_ 0.0

      $n19 set X_ 666.0
      $n19 set Y_ 347.0
      $n19 set Z_ 0.0

      $n20 set X_ 741.0
      $n20 set Y_ 152.0
      $n20 set Z_ 0.0

      $n21 set X_ 882.0
      $n21 set Y_ 264.0
      $n21 set Z_ 0.0
      
      $n22 set X_ 761.0
      $n22 set Y_ 441.0
      $n22 set Z_ 0.0
      
      ## Giving Mobility to Nodes
     
      $ns_ at 0.0 "$n2 setdest 939.0 810.0 10.0"
      $ns_ at 0.0 "$n3 setdest 356.0 102.0 15.0"
      $ns_ at 0.0 "$n4 setdest 409.0 171.0 30.0"
      $ns_ at 0.0 "$n5 setdest 279.0 233.0 20.0"
      $ns_ at 0.0 "$n6 setdest 89.0 63.0 00.0"
      $ns_ at 0.0 "$n7 setdest 820.0 27.0 10.0"
      $ns_ at 0.0 "$n8 setdest 985.0 124.0 00.0"
      $ns_ at 0.0 "$n9 setdest 174.0 515.0 20.0"
      $ns_ at 0.0 "$n10 setdest 594.0 275.0 30.0"
      $ns_ at 0.0 "$n11 setdest 899.0 827.0 5.0"
      $ns_ at 0.0 "$n12 setdest 198.0 808.0 35.0"
      $ns_ at 0.0 "$n13 setdest 351.0 724.0 25.0"
      $ns_ at 0.0 "$n14 setdest 97.0 547.0 15.0"
      $ns_ at 0.0 "$n15 setdest 148.0 488.0 25.0"
      $ns_ at 0.0 "$n16 setdest 842.0 123.0 5.0"
      $ns_ at 0.0 "$n17 setdest 478.0 148.0 25.0"
      $ns_ at 0.0 "$n18 setdest 41.0 59.0 00.0"
      $ns_ at 0.0 "$n19 setdest 237.0 789.0 30.0"
      $ns_ at 0.0 "$n20 setdest 59.0 822.0 20.0"
      $ns_ at 0.0 "$n21 setdest 900.0 150.0 00.0"
      $ns_ at 0.0 "$n22 setdest 239.0 684.0 25.0"
            
      ## Setting The Node Size
                              
      $ns_ initial_node_pos $n1 70
      $ns_ initial_node_pos $n2 70
      $ns_ initial_node_pos $n3 70
      $ns_ initial_node_pos $n4 70
      $ns_ initial_node_pos $n5 70
      $ns_ initial_node_pos $n6 70
      $ns_ initial_node_pos $n7 70
      $ns_ initial_node_pos $n8 70
      $ns_ initial_node_pos $n9 70
      $ns_ initial_node_pos $n10 70
      $ns_ initial_node_pos $n11 70
      $ns_ initial_node_pos $n12 70
      $ns_ initial_node_pos $n13 70
      $ns_ initial_node_pos $n14 70
      $ns_ initial_node_pos $n15 70
      $ns_ initial_node_pos $n16 70
      $ns_ initial_node_pos $n17 70
      $ns_ initial_node_pos $n18 70
      $ns_ initial_node_pos $n19 70
      $ns_ initial_node_pos $n20 70
      $ns_ initial_node_pos $n21 70
      $ns_ initial_node_pos $n22 70
      

      #### Setting The Labels For Nodes
      
      $ns_ at 0.0 "$n1 label node1"
      $ns_ at 0.0 "$n2 label node2"
      $ns_ at 0.0 "$n3 label node3"
      $ns_ at 0.0 "$n4 label node4"
      $ns_ at 0.0 "$n5 label node5"
      $ns_ at 0.0 "$n6 label node6"
      $ns_ at 0.0 "$n7 label node7"
      $ns_ at 0.0 "$n8 label node8"
      $ns_ at 0.0 "$n9 label node9"
      $ns_ at 0.0 "$n10 label node10"
      $ns_ at 0.0 "$n11 label node11"
      $ns_ at 0.0 "$n12 label node12"
      $ns_ at 0.0 "$n13 label node13"
      $ns_ at 0.0 "$n14 label node14"
      $ns_ at 0.0 "$n15 label node15"
      $ns_ at 0.0 "$n16 label node16"
      $ns_ at 0.0 "$n17 label node17"
      $ns_ at 0.0 "$n18 label node18"
      $ns_ at 0.0 "$n19 label node19"
      $ns_ at 0.0 "$n20 label node20"
      $ns_ at 0.0 "$n21 label node21"
      $ns_ at 0.0 "$n22 label node22"

      $n1 color green
      $ns_ at 0.0 "$n1 color green"

      $n2 color green
      $ns_ at 0.0 "$n2 color green"
      
      $n3 color green
      $ns_ at 0.0 "$n3 color green"
      
      $n4 color green
      $ns_ at 0.0 "$n4 color green"
      
      $n5 color green
      $ns_ at 0.0 "$n5 color green"
      
      $n6 color green
      $ns_ at 0.0 "$n6 color green"
      
      $n7 color green
      $ns_ at 0.0 "$n7 color green"
      
      $n8 color green
      $ns_ at 0.0 "$n8 color green"

      $n9 color yellow
      $ns_ at 0.0 "$n9 color yellow"
      
      $n10 color yellow
      $ns_ at 0.0 "$n10 color yellow"

      $n11 color yellow
      $ns_ at 0.0 "$n11 color yellow"
      
      $n12 color pink
      $ns_ at 0.0 "$n12 color pink"
      
      $n13 color pink
      $ns_ at 0.0 "$n13 color pink"

      $n14 color pink
      $ns_ at 0.0 "$n14 color pink"

      $n15 color pink
      $ns_ at 0.0 "$n15 color pink"

      $n16 color pink
      $ns_ at 0.0 "$n16 color pink"

      $n17 color orange
      $ns_ at 0.0 "$n17 color orange"

      $n18 color orange
      $ns_ at 0.0 "$n18 color orange"

      $n19 color orange
      $ns_ at 0.0 "$n19 color orange"

      $n20 color orange
      $ns_ at 0.0 "$n20 color orange"

      $n21 color orange
      $ns_ at 0.0 "$n21 color orange"

      $n22 color orange
      $ns_ at 0.0 "$n22 color orange"

      ## SETTING ANIMATION RATE 
$ns_ at 0.0 "$ns_ set-animation-rate 15.0ms"

####  Establishing Communication

      set udp0 [$ns_ create-connection UDP $n1 LossMonitor $n18 0]
      $udp0 set fid_ 1
      set cbr0 [$udp0 attach-app Traffic/CBR]
      $cbr0 set packetSize_ 1000    
      $cbr0 set interopt_ .07
      $ns_ at 0.0 "$cbr0 start"
      $ns_ at 3.0 "$cbr0 stop"
      
      set udp1 [$ns_ create-connection UDP $n6 LossMonitor $n22 0]
      $udp1 set fid_ 1
      set cbr1 [$udp1 attach-app Traffic/CBR]
      $cbr1 set packetSize_ 1000    
      $cbr1 set interopt_ .07
      $ns_ at 0.3 "$cbr1 start"
      $ns_ at 6.5 "$cbr1 stop"
      
      set udp2 [$ns_ create-connection UDP $n21 LossMonitor $n20 0]
      $udp2 set fid_ 1
      set cbr2 [$udp2 attach-app Traffic/CBR]
      $cbr2 set packetSize_ 1000    
      $cbr2 set interopt_ .07
      $ns_ at 1.4 "$cbr2 start"
      $ns_ at 6.5 "$cbr2 stop"
      
      set udp3 [$ns_ create-connection UDP $n1 LossMonitor $n15 0]
      $udp3 set fid_ 1
      set cbr3 [$udp3 attach-app Traffic/CBR]
      $cbr3 set packetSize_ 1000    
      $cbr3 set interopt_ 5
      $ns_ at 1.8 "$cbr3 start"
      $ns_ at 2.3 "$cbr3 stop"
      
      set udp4 [$ns_ create-connection UDP $n6 LossMonitor $n14 0]
      $udp4 set fid_ 1
      set cbr4 [$udp4 attach-app Traffic/CBR]
      $cbr4 set packetSize_ 1000    
      $cbr4 set interopt_ 5
      $ns_ at 3.5 "$cbr4 start"
      $ns_ at 5.1 "$cbr4 stop"
      
      set udp5 [$ns_ create-connection UDP $n15 LossMonitor $n16 0]
      $udp5 set fid_ 1
      set cbr5 [$udp5 attach-app Traffic/CBR]
      $cbr5 set packetSize_ 1000    
      $cbr5 set interopt_ 5
      $ns_ at 3.5 "$cbr5 start"
      $ns_ at 4.8 "$cbr5 stop"
      
      set udp6 [$ns_ create-connection UDP $n15 LossMonitor $n17 0]
      $udp6 set fid_ 1
      set cbr6 [$udp6 attach-app Traffic/CBR]
      $cbr6 set packetSize_ 1000    
      $cbr6 set interopt_ 5
      $ns_ at 3.7 "$cbr6 start"
      $ns_ at 4.3 "$cbr6 stop"
            
      set udp7 [$ns_ create-connection UDP $n14 LossMonitor $n4 0]
      $udp7 set fid_ 1
      set cbr7 [$udp7 attach-app Traffic/CBR]
      $cbr7 set packetSize_ 1000    
      $cbr7 set interopt_ 5
      $ns_ at 4.0 "$cbr7 start"
      $ns_ at 4.4 "$cbr7 stop"
      
      set udp8 [$ns_ create-connection UDP $n14 LossMonitor $n9 0]
      $udp8 set fid_ 1
      set cbr8 [$udp8 attach-app Traffic/CBR]
      $cbr8 set packetSize_ 1000    
      $cbr8 set interopt_ 5
      $ns_ at 4.3 "$cbr8 start"
      $ns_ at 4.9 "$cbr8 stop"
      
      set udp9 [$ns_ create-connection UDP $n4 LossMonitor $n3 0]
      $udp9 set fid_ 1
      set cbr9 [$udp9 attach-app Traffic/CBR]
      $cbr9 set packetSize_ 1000    
      $cbr9 set interopt_ 5
      $ns_ at 4.6 "$cbr9 start"
      $ns_ at 5.2 "$cbr9 stop"
      
      set udp10 [$ns_ create-connection UDP $n4 LossMonitor $n2 0]
      $udp10 set fid_ 1
      set cbr10 [$udp10 attach-app Traffic/CBR]
      $cbr10 set packetSize_ 1000   
      $cbr10 set interopt_ 5
      $ns_ at 4.8 "$cbr10 start"
      $ns_ at 5.6 "$cbr10 stop"
      
      set udp11 [$ns_ create-connection UDP $n9 LossMonitor $n16 0]
      $udp11 set fid_ 1
      set cbr11 [$udp11 attach-app Traffic/CBR]
      $cbr11 set packetSize_ 1000   
      $cbr11 set interopt_ 5
      $ns_ at 5.2 "$cbr11 start"
      $ns_ at 6.1 "$cbr11 stop"
      
      set udp12 [$ns_ create-connection UDP $n9 LossMonitor $n10 0]
      $udp12 set fid_ 1
      set cbr12 [$udp12 attach-app Traffic/CBR]
      $cbr12 set packetSize_ 1000   
      $cbr12 set interopt_ 5
      $ns_ at 5.5 "$cbr12 start"
      $ns_ at 6.3 "$cbr12 stop"

      #ANNOTATIONS DETAILS 

      $ns_ at 0.0 "$ns_ trace-annotate \"MOBILE NODE MOVEMENTS\""     
            
      ### PROCEDURE TO STOP 

      proc stop {} {
            
                        global ns_ tracefd
                        $ns_ flush-trace
                        close $tracefd
                        exec nam aodv.nam &            
                        exit 0

                   }

      puts "Starting Simulation........"
      $ns_ at 10.0 "stop"
      $ns_ run
           

	
} elseif {$top == 2} {
set opt(chan)           Channel/WirelessChannel    ;# channel type 
set opt(prop)           Propagation/TwoRayGround   ;# radio-propagation model 
set opt(netif)          Phy/WirelessPhy            ;# network interface type 
set opt(mac)            Mac/802_11                 ;# MAC type 
set opt(ifq)            Queue/DropTail/PriQueue    ;# interface queue type 
set opt(ll)             LL                         ;# link layer type 
set opt(ant)            Antenna/OmniAntenna        ;# antenna model 
set opt(ifqlen)         50                         ;# max packet in ifq 
set opt(nn)             22                         ;# number of mobilenodes 
set opt(rp)             AOMDV                      ;# routing protocol 
set opt(x)              1000   			   ;# X dimension of topography 
set opt(y)              840   			   ;# Y dimension of topography   

### Setting The Simulator Objects
                  
      set ns_ [new Simulator]
#create the nam and trace file:
      set tracefd [open aomdv.tr w]
      $ns_ trace-all $tracefd

      set namtrace [open aomdv.nam w]
      $ns_ namtrace-all-wireless $namtrace  $opt(x) $opt(y)

      set topo [new Topography]
      $topo load_flatgrid $opt(x) $opt(y)
      create-god $opt(nn)
      set chan_1_ [new $opt(chan)]
      
####  Setting The Distance Variables
                       

      # For model 'TwoRayGround'
      set dist(5m)  7.69113e-06
      set dist(9m)  2.37381e-06
      set dist(10m) 1.92278e-06
      set dist(11m) 1.58908e-06
      set dist(12m) 1.33527e-06
      set dist(13m) 1.13774e-06
      set dist(14m) 9.81011e-07
      set dist(15m) 8.54570e-07
      set dist(16m) 7.51087e-07
      set dist(20m) 4.80696e-07
      set dist(25m) 3.07645e-07
      set dist(30m) 2.13643e-07
      set dist(35m) 1.56962e-07
      set dist(40m) 1.56962e-10
      set dist(45m) 1.56962e-11
      set dist(50m) 1.20174e-13
      Phy/WirelessPhy set CSThresh_ $dist(50m)
      Phy/WirelessPhy set RXThresh_ $dist(50m)

#  Defining Node Configuration
                        
                  $ns_ node-config -adhocRouting $opt(rp) \
                   -llType $opt(ll) \
                   -macType $opt(mac) \
                   -ifqType $opt(ifq) \
                   -ifqLen $opt(ifqlen) \
                   -antType $opt(ant) \
                   -propType $opt(prop) \
                   -phyType $opt(netif) \
                   -topoInstance $topo \
                   -agentTrace ON \
                   -routerTrace ON \
                   -macTrace ON \
                   -movementTrace ON \
                   -channel $chan_1_

###  Creating The WIRELESS NODES
                  
      set n1 [$ns_ node]
      set n2 [$ns_ node]
      set n3 [$ns_ node]
      set n4 [$ns_ node]
      set n5 [$ns_ node]
      set n6 [$ns_ node]
      set n7 [$ns_ node]
      set n8 [$ns_ node]
      set n9 [$ns_ node]
      set n10 [$ns_ node]
      set n11 [$ns_ node]
      set n12 [$ns_ node]
      set n13 [$ns_ node]
      set n14 [$ns_ node]
      set n15 [$ns_ node]
      set n16 [$ns_ node]
      set n17 [$ns_ node]
      set n18 [$ns_ node]
      set n19 [$ns_ node]
      set n20 [$ns_ node]
      set n21 [$ns_ node]
      set n22 [$ns_ node]
      
      set opt(seed) 0.1
      set a [ns-random $opt(seed)]
      set i 0
      while {$i < 5} {
      incr i
      }
            

###  Setting The Initial Positions of Nodes

      $n1 set X_ 513.0
      $n1 set Y_ 517.0
      $n1 set Z_ 0.0
      
      $n2 set X_ 36.0
      $n2 set Y_ 529.0
      $n2 set Z_ 0.0

      $n3 set X_ 143.0
      $n3 set Y_ 666.0
      $n3 set Z_ 0.0

      $n4 set X_ 201.0
      $n4 set Y_ 552.0
      $n4 set Z_ 0.0
      
      $n5 set X_ 147.0
      $n5 set Y_ 403.0
      $n5 set Z_ 0.0
      
      $n6 set X_ 230.0
      $n6 set Y_ 291.0
      $n6 set Z_ 0.0

      $n7 set X_ 295.0
      $n7 set Y_ 419.0
      $n7 set Z_ 0.0

      $n8 set X_ 363.0
      $n8 set Y_ 335.0
      $n8 set Z_ 0.0

      $n9 set X_ 334.0
      $n9 set Y_ 647.0
      $n9 set Z_ 0.0

      $n10 set X_ 304.0
      $n10 set Y_ 777.0
      $n10 set Z_ 0.0
      
      $n11 set X_ 412.0
      $n11 set Y_ 194.0
      $n11 set Z_ 0.0
      
      $n12 set X_ 519.0
      $n12 set Y_ 361.0
      $n12 set Z_ 0.0

      $n13 set X_ 569.0
      $n13 set Y_ 167.0
      $n13 set Z_ 0.0

      $n14 set X_ 349.0
      $n14 set Y_ 546.0
      $n14 set Z_ 0.0

      $n15 set X_ 466.0
      $n15 set Y_ 668.0
      $n15 set Z_ 0.0

      $n16 set X_ 489.0
      $n16 set Y_ 794.0
      $n16 set Z_ 0.0

      $n17 set X_ 606.0
      $n17 set Y_ 711.0
      $n17 set Z_ 0.0

      $n18 set X_ 630.0
      $n18 set Y_ 626.0
      $n18 set Z_ 0.0

      $n19 set X_ 666.0
      $n19 set Y_ 347.0
      $n19 set Z_ 0.0

      $n20 set X_ 741.0
      $n20 set Y_ 152.0
      $n20 set Z_ 0.0

      $n21 set X_ 882.0
      $n21 set Y_ 264.0
      $n21 set Z_ 0.0
      
      $n22 set X_ 761.0
      $n22 set Y_ 441.0
      $n22 set Z_ 0.0
      
      ## Giving Mobility to Nodes
     
      $ns_ at 0.0 "$n2 setdest 939.0 810.0 10.0"
      $ns_ at 0.0 "$n3 setdest 356.0 102.0 15.0"
      $ns_ at 0.0 "$n4 setdest 409.0 171.0 30.0"
      $ns_ at 0.0 "$n5 setdest 279.0 233.0 20.0"
      $ns_ at 0.0 "$n6 setdest 89.0 63.0 00.0"
      $ns_ at 0.0 "$n7 setdest 820.0 27.0 10.0"
      $ns_ at 0.0 "$n8 setdest 985.0 124.0 00.0"
      $ns_ at 0.0 "$n9 setdest 174.0 515.0 20.0"
      $ns_ at 0.0 "$n10 setdest 594.0 275.0 30.0"
      $ns_ at 0.0 "$n11 setdest 899.0 827.0 5.0"
      $ns_ at 0.0 "$n12 setdest 198.0 808.0 35.0"
      $ns_ at 0.0 "$n13 setdest 351.0 724.0 25.0"
      $ns_ at 0.0 "$n14 setdest 97.0 547.0 15.0"
      $ns_ at 0.0 "$n15 setdest 148.0 488.0 25.0"
      $ns_ at 0.0 "$n16 setdest 842.0 123.0 5.0"
      $ns_ at 0.0 "$n17 setdest 478.0 148.0 25.0"
      $ns_ at 0.0 "$n18 setdest 41.0 59.0 00.0"
      $ns_ at 0.0 "$n19 setdest 237.0 789.0 30.0"
      $ns_ at 0.0 "$n20 setdest 59.0 822.0 20.0"
      $ns_ at 0.0 "$n21 setdest 900.0 150.0 00.0"
      $ns_ at 0.0 "$n22 setdest 239.0 684.0 25.0"
            
      ## Setting The Node Size
                              
      $ns_ initial_node_pos $n1 70
      $ns_ initial_node_pos $n2 70
      $ns_ initial_node_pos $n3 70
      $ns_ initial_node_pos $n4 70
      $ns_ initial_node_pos $n5 70
      $ns_ initial_node_pos $n6 70
      $ns_ initial_node_pos $n7 70
      $ns_ initial_node_pos $n8 70
      $ns_ initial_node_pos $n9 70
      $ns_ initial_node_pos $n10 70
      $ns_ initial_node_pos $n11 70
      $ns_ initial_node_pos $n12 70
      $ns_ initial_node_pos $n13 70
      $ns_ initial_node_pos $n14 70
      $ns_ initial_node_pos $n15 70
      $ns_ initial_node_pos $n16 70
      $ns_ initial_node_pos $n17 70
      $ns_ initial_node_pos $n18 70
      $ns_ initial_node_pos $n19 70
      $ns_ initial_node_pos $n20 70
      $ns_ initial_node_pos $n21 70
      $ns_ initial_node_pos $n22 70
      

      #### Setting The Labels For Nodes
      
      $ns_ at 0.0 "$n1 label node1"
      $ns_ at 0.0 "$n2 label node2"
      $ns_ at 0.0 "$n3 label node3"
      $ns_ at 0.0 "$n4 label node4"
      $ns_ at 0.0 "$n5 label node5"
      $ns_ at 0.0 "$n6 label node6"
      $ns_ at 0.0 "$n7 label node7"
      $ns_ at 0.0 "$n8 label node8"
      $ns_ at 0.0 "$n9 label node9"
      $ns_ at 0.0 "$n10 label node10"
      $ns_ at 0.0 "$n11 label node11"
      $ns_ at 0.0 "$n12 label node12"
      $ns_ at 0.0 "$n13 label node13"
      $ns_ at 0.0 "$n14 label node14"
      $ns_ at 0.0 "$n15 label node15"
      $ns_ at 0.0 "$n16 label node16"
      $ns_ at 0.0 "$n17 label node17"
      $ns_ at 0.0 "$n18 label node18"
      $ns_ at 0.0 "$n19 label node19"
      $ns_ at 0.0 "$n20 label node20"
      $ns_ at 0.0 "$n21 label node21"
      $ns_ at 0.0 "$n22 label node22"

      $n1 color green
      $ns_ at 0.0 "$n1 color green"

      $n2 color green
      $ns_ at 0.0 "$n2 color green"
      
      $n3 color green
      $ns_ at 0.0 "$n3 color green"
      
      $n4 color green
      $ns_ at 0.0 "$n4 color green"
      
      $n5 color green
      $ns_ at 0.0 "$n5 color green"
      
      $n6 color green
      $ns_ at 0.0 "$n6 color green"
      
      $n7 color green
      $ns_ at 0.0 "$n7 color green"
      
      $n8 color green
      $ns_ at 0.0 "$n8 color green"

      $n9 color yellow
      $ns_ at 0.0 "$n9 color yellow"
      
      $n10 color yellow
      $ns_ at 0.0 "$n10 color yellow"

      $n11 color yellow
      $ns_ at 0.0 "$n11 color yellow"
      
      $n12 color pink
      $ns_ at 0.0 "$n12 color pink"
      
      $n13 color pink
      $ns_ at 0.0 "$n13 color pink"

      $n14 color pink
      $ns_ at 0.0 "$n14 color pink"

      $n15 color pink
      $ns_ at 0.0 "$n15 color pink"

      $n16 color pink
      $ns_ at 0.0 "$n16 color pink"

      $n17 color orange
      $ns_ at 0.0 "$n17 color orange"

      $n18 color orange
      $ns_ at 0.0 "$n18 color orange"

      $n19 color orange
      $ns_ at 0.0 "$n19 color orange"

      $n20 color orange
      $ns_ at 0.0 "$n20 color orange"

      $n21 color orange
      $ns_ at 0.0 "$n21 color orange"

      $n22 color orange
      $ns_ at 0.0 "$n22 color orange"

      ## SETTING ANIMATION RATE 
$ns_ at 0.0 "$ns_ set-animation-rate 15.0ms"

####  Establishing Communication

      set udp0 [$ns_ create-connection UDP $n1 LossMonitor $n18 0]
      $udp0 set fid_ 1
      set cbr0 [$udp0 attach-app Traffic/CBR]
      $cbr0 set packetSize_ 1000    
      $cbr0 set interopt_ .07
      $ns_ at 0.0 "$cbr0 start"
      $ns_ at 3.0 "$cbr0 stop"
      
      set udp1 [$ns_ create-connection UDP $n6 LossMonitor $n22 0]
      $udp1 set fid_ 1
      set cbr1 [$udp1 attach-app Traffic/CBR]
      $cbr1 set packetSize_ 1000    
      $cbr1 set interopt_ .07
      $ns_ at 0.3 "$cbr1 start"
      $ns_ at 6.5 "$cbr1 stop"
      
      
      set udp2 [$ns_ create-connection UDP $n21 LossMonitor $n20 0]
      $udp2 set fid_ 1
      set cbr2 [$udp2 attach-app Traffic/CBR]
      $cbr2 set packetSize_ 1000    
      $cbr2 set interopt_ .07
      $ns_ at 1.4 "$cbr2 start"
      $ns_ at 6.5 "$cbr2 stop"
      
      set udp3 [$ns_ create-connection UDP $n1 LossMonitor $n15 0]
      $udp3 set fid_ 1
      set cbr3 [$udp3 attach-app Traffic/CBR]
      $cbr3 set packetSize_ 1000    
      $cbr3 set interopt_ 5
      $ns_ at 1.8 "$cbr3 start"
      $ns_ at 2.3 "$cbr3 stop"
      
      set udp4 [$ns_ create-connection UDP $n6 LossMonitor $n14 0]
      $udp4 set fid_ 1
      set cbr4 [$udp4 attach-app Traffic/CBR]
      $cbr4 set packetSize_ 1000    
      $cbr4 set interopt_ 5
      $ns_ at 3.5 "$cbr4 start"
      $ns_ at 5.1 "$cbr4 stop"
      
      set udp5 [$ns_ create-connection UDP $n15 LossMonitor $n16 0]
      $udp5 set fid_ 1
      set cbr5 [$udp5 attach-app Traffic/CBR]
      $cbr5 set packetSize_ 1000    
      $cbr5 set interopt_ 5
      $ns_ at 3.5 "$cbr5 start"
      $ns_ at 4.8 "$cbr5 stop"
      
      set udp6 [$ns_ create-connection UDP $n15 LossMonitor $n17 0]
      $udp6 set fid_ 1
      set cbr6 [$udp6 attach-app Traffic/CBR]
      $cbr6 set packetSize_ 1000    
      $cbr6 set interopt_ 5
      $ns_ at 3.7 "$cbr6 start"
      $ns_ at 4.3 "$cbr6 stop"
            
      set udp7 [$ns_ create-connection UDP $n14 LossMonitor $n4 0]
      $udp7 set fid_ 1
      set cbr7 [$udp7 attach-app Traffic/CBR]
      $cbr7 set packetSize_ 1000    
      $cbr7 set interopt_ 5
      $ns_ at 4.0 "$cbr7 start"
      $ns_ at 4.4 "$cbr7 stop"
      
      set udp8 [$ns_ create-connection UDP $n14 LossMonitor $n9 0]
      $udp8 set fid_ 1
      set cbr8 [$udp8 attach-app Traffic/CBR]
      $cbr8 set packetSize_ 1000    
      $cbr8 set interopt_ 5
      $ns_ at 4.3 "$cbr8 start"
      $ns_ at 4.9 "$cbr8 stop"
      
      set udp9 [$ns_ create-connection UDP $n4 LossMonitor $n3 0]
      $udp9 set fid_ 1
      set cbr9 [$udp9 attach-app Traffic/CBR]
      $cbr9 set packetSize_ 1000    
      $cbr9 set interopt_ 5
      $ns_ at 4.6 "$cbr9 start"
      $ns_ at 5.2 "$cbr9 stop"
      
      set udp10 [$ns_ create-connection UDP $n4 LossMonitor $n2 0]
      $udp10 set fid_ 1
      set cbr10 [$udp10 attach-app Traffic/CBR]
      $cbr10 set packetSize_ 1000   
      $cbr10 set interopt_ 5
      $ns_ at 4.8 "$cbr10 start"
      $ns_ at 5.6 "$cbr10 stop"
      
      set udp11 [$ns_ create-connection UDP $n9 LossMonitor $n16 0]
      $udp11 set fid_ 1
      set cbr11 [$udp11 attach-app Traffic/CBR]
      $cbr11 set packetSize_ 1000   
      $cbr11 set interopt_ 5
      $ns_ at 5.2 "$cbr11 start"
      $ns_ at 6.1 "$cbr11 stop"
      
      set udp12 [$ns_ create-connection UDP $n9 LossMonitor $n10 0]
      $udp12 set fid_ 1
      set cbr12 [$udp12 attach-app Traffic/CBR]
      $cbr12 set packetSize_ 1000   
      $cbr12 set interopt_ 5
      $ns_ at 5.5 "$cbr12 start"
      $ns_ at 6.3 "$cbr12 stop"

      #ANNOTATIONS DETAILS 

      $ns_ at 0.0 "$ns_ trace-annotate \"MOBILE NODE MOVEMENTS\""     
            
      ### PROCEDURE TO STOP 

      proc stop {} {
            
                        global ns_ tracefd
                        $ns_ flush-trace
                        close $tracefd
                        exec nam aomdv.nam &            
                        exit 0

                   }

      puts "Starting Simulation........"
      $ns_ at 10.0 "stop"
      $ns_ run

	
}

$ns run

	
} 
puts "want to continue (0/1)" 
set a [gets stdin]
}
