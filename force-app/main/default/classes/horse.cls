public class horse {
    public string name;
    public integer age;
    public List<string> training;
    public string breed;
    
   
    public void run(){
        system.debug('at kosuyor');
    }
    public void train(string trainType){
        system.debug(name +' '+ trainType+ ' egimiyle egitiliyor'); 
        training.add(trainType);
    }
    public void setName(string horseName){
        name=horseName;
        system.debug('ata yeni isim verildi '+horseName);
    }
}