def timeInWords(h, m)
    words_hash = {
        0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",
        9=>"nine",10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen", 14=>"fourteen",15=>"fifteen",
        16=>"sixteen",17=>"seventeen",18=>"eighteen",19=>"nineteen",20=>"twenty",21=>"twenty one",
        22=>"twenty two",23=>"twenty tree",24=>"twenty four", 25=>"twenty five",26=>"twenty six",
        27=>"twenty seven",28=>"twenty eight",29=>"twenty nine",30=>"thirty"
      }
      time =""
      if m == 0
        time= "#{words_hash[h]} o' clock"
      elsif m >= 1 && m <= 30
        minutes =""
      
        if m ==15
          minutes ="quarter"
        elsif m == 30 
          minutes ="half"
        else
          m == 1 ? minutes="#{words_hash[m]} minute" : minutes="#{words_hash[m]} minutes"
        end    
        time= "#{minutes} past #{words_hash[h]}"
      elsif m>30
        r = 60-m
        if r == 15
          minutes ="quarter"
        else
          60-m == 1? minutes = "#{words_hash[r]} minute" : minutes ="#{words_hash[r]} minutes"      
        end
        time = "#{minutes} to #{words_hash[h+1]}"
      end
      time
    
    end