/* 
Extention to Cabinet VisualForce page
*/
public class Cabinet_Extentison {
    // medicine varible with getter and setter
    public Medicine__c medi {get;set;}
    
    //constructor
    public Cabinet_Extentison(ApexPages.StandardSetController controller) {
		medi = new Medicine__c();
    }

    //save function
    public PageReference save(){
        insert medi;
        PageReference pageRef = new PageReference('/apex/Cabinet');
        pageRef.setRedirect(true);
        return pageRef;
    }

}