/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - BOOKSService.as.
 */
package services.booksservice
{
import mx.rpc.AsyncToken;
import com.adobe.fiber.core.model_internal;
import mx.rpc.AbstractOperation;
import valueObjects.BOOKS;
import mx.data.RPCDataManager;
import mx.data.ManagedOperation;
import mx.data.ManagedAssociation;
import mx.data.ManagedQuery;
import mx.data.ItemReference;
import mx.collections.ItemResponder;
import mx.rpc.remoting.RemoteObject; 
import mx.rpc.remoting.Operation;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.serializers.utility.TypeUtility;

[ExcludeClass]
internal class _Super_BOOKSService extends RemoteObjectServiceWrapper
{      
    private var _bOOKSRPCDataManager : RPCDataManager;         
    private var managersArray : Array = new Array();
        
    public const DATA_MANAGER_BOOKS : String = "BOOKS";         
        
    public function getDataManager(dataManagerName:String) : RPCDataManager
    {
        switch (dataManagerName)
        {
             case (DATA_MANAGER_BOOKS):
                return _bOOKSRPCDataManager;      
            default:
                return null;
        }
    }
    
    /**
     * Commit all of the pending changes for this DataService, as well as all of the pending changes of all DataServices
     * sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
     * managed association properties and share the same set of channels. 
     *
     * @see mx.data.DataManager
     * @see mx.data.DataStore
     *
     * @param itemsOrCollections:Array This is an optional parameter which defaults to null when
     *  you want to commit all pending changes.  If you want to commit a subset of the pending
     *  changes use this argument to specify a list of managed ListCollectionView instances
     *  and/or managed items.  ListCollectionView objects are most typically ArrayCollections
     *  you have provided to your fill method.  The items appropriate for this method are
     *  any managed version of the item.  These are any items you retrieve from getItem, createItem
     *  or using the getItemAt method from a managed collection.  Only changes for the
     *  items defined by any of the values in this array will be committed.
     *
     * @param cascadeCommit if true, also commit changes made to any associated
     *  items supplied in this list.
     *
     *  @return AsyncToken that is returned in <code>call</code> property of
     *  either the <code>ResultEvent.RESULT</code> or in the
     *  <code>FaultEvent.FAULT</code>.
     *  Custom data can be attached to this object and inspected later
     *  during the event handling phase.  If no changes have been made
     *  to the relevant items, null is returned instead of an AsyncToken.
     */
    public function commit(itemsOrCollections:Array=null, cascadeCommit:Boolean=false):AsyncToken
    {
    	return _bOOKSRPCDataManager.dataStore.commit(itemsOrCollections, cascadeCommit);
    }
    
    /**
     *  Reverts all pending (uncommitted) changes for this DataService, as well as all of the pending changes of all DataServics
     *  sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
     * managed association properties and share the same set of channels. 
     *
     * @see mx.data.DataManager
     * @see mx.data.DataStore
     *
     *  @return true if any changes were reverted.
     *  
     */
    public function revertChanges():Boolean
    {
        return _bOOKSRPCDataManager.dataStore.revertChanges();
    }    
       
    // Constructor
    public function _Super_BOOKSService()
    {
        // initialize service control
        _serviceControl = new RemoteObject(); 
        
        var operations:Object = new Object();
        var operation:Operation;         
         
        operation = new Operation(null, "getBOOKS_paged");
		 operation.resultElementType = valueObjects.BOOKS;
        operations["getBOOKS_paged"] = operation;
         
     valueObjects.BOOKS._initRemoteClassAlias();
        operation = new Operation(null, "updateBOOKS");
        operations["updateBOOKS"] = operation;
         
        operation = new Operation(null, "count");
		 operation.resultType = Number; 		 
        operations["count"] = operation;
         
        operation = new Operation(null, "getBOOKS");
		 operation.resultElementType = valueObjects.BOOKS;
        operations["getBOOKS"] = operation;
         
     valueObjects.BOOKS._initRemoteClassAlias();
        operation = new Operation(null, "getAllBOOKS");
		 operation.resultElementType = valueObjects.BOOKS;
        operations["getAllBOOKS"] = operation;
         
     valueObjects.BOOKS._initRemoteClassAlias();
        operation = new Operation(null, "deleteBOOKS");
        operations["deleteBOOKS"] = operation;
         
        operation = new Operation(null, "createBOOKS");
		 operation.resultType = Number; 		 
        operations["createBOOKS"] = operation;
         
    
        _serviceControl.operations = operations;   
		_serviceControl.convertResultHandler = TypeUtility.convertResultHandler;
    	_serviceControl.convertParametersHandler = TypeUtility.convertCFAMFParametersHandler;
        _serviceControl.source = "CFFlexWork.cfc.BOOKSService";
		_serviceControl.destination = "ColdFusion";
        
        var managedAssociation : ManagedAssociation;
    	var managedAssocsArray : Array;
        // initialize BOOKS data manager     
        _bOOKSRPCDataManager = new RPCDataManager();        
        managersArray.push(_bOOKSRPCDataManager);
        
        managedAssocsArray = new Array();
        
        _bOOKSRPCDataManager.destination = "bOOKSRPCDataManager";
        _bOOKSRPCDataManager.service = _serviceControl;        
        _bOOKSRPCDataManager.identities =  "BOOKID";      
        _bOOKSRPCDataManager.itemClass = valueObjects.BOOKS; 
        
                   
    
        var dmOperation : ManagedOperation;
        var dmQuery : ManagedQuery;
         
        dmOperation = new ManagedOperation("deleteBOOKS", "delete");
        dmOperation.parameters = "id";
        _bOOKSRPCDataManager.addManagedOperation(dmOperation);     
            
        dmQuery = new ManagedQuery("getAllBOOKS");
        dmQuery.propertySpecifier = "BOOKID,AUTHORID,TITLE,BOOKDESCRIPTION,BOOKIMAGE,THUMBNAILIMAGE,ISSPOTLIGHT,GENRE";
        dmQuery.parameters = "";
        _bOOKSRPCDataManager.addManagedOperation(dmQuery);                 

        dmOperation = new ManagedOperation("updateBOOKS", "update");
        dmOperation.parameters = "item";
        _bOOKSRPCDataManager.addManagedOperation(dmOperation);     
            
        dmQuery = new ManagedQuery("getBOOKS_paged");
        dmQuery.propertySpecifier = "BOOKID,AUTHORID,TITLE,BOOKDESCRIPTION,BOOKIMAGE,THUMBNAILIMAGE,ISSPOTLIGHT,GENRE";
        dmQuery.countOperation = "count";
        dmQuery.pagingEnabled = true;
        dmQuery.positionalPagingParameters = true;
        dmQuery.parameters = "startIndex,numItems";
        _bOOKSRPCDataManager.addManagedOperation(dmQuery);                 

        dmOperation = new ManagedOperation("createBOOKS", "create");
        dmOperation.parameters = "item";
        _bOOKSRPCDataManager.addManagedOperation(dmOperation);     
            
        dmOperation = new ManagedOperation("getBOOKS", "get");
        dmOperation.parameters = "BOOKID";
        _bOOKSRPCDataManager.addManagedOperation(dmOperation);     
            
        _serviceControl.managers = managersArray;
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'getBOOKS_paged' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getBOOKS_paged() : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getBOOKS_paged");
		var _internal_token:AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'updateBOOKS' operation. It returns an ItemReference whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.data.ItemReference
      * @see mx.rpc.CallResponder 
      *
      * @return an ItemReference whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function updateBOOKS(item:valueObjects.BOOKS) : ItemReference
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("updateBOOKS");
		var _internal_token:ItemReference = _internal_operation.send(item) as ItemReference;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'count' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function count() : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("count");
		var _internal_token:AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getBOOKS' operation. It returns an ItemReference whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.data.ItemReference
      * @see mx.rpc.CallResponder 
      *
      * @return an ItemReference whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getBOOKS(BOOKID:Number) : ItemReference
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getBOOKS");
		var _internal_token:ItemReference = _internal_operation.send(BOOKID) as ItemReference;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getAllBOOKS' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getAllBOOKS() : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getAllBOOKS");
		var _internal_token:AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'deleteBOOKS' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function deleteBOOKS(BOOKID:Number) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("deleteBOOKS");
		var _internal_token:AsyncToken = _internal_operation.send(BOOKID) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'createBOOKS' operation. It returns an ItemReference whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.data.ItemReference
      * @see mx.rpc.CallResponder 
      *
      * @return an ItemReference whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function createBOOKS(item:valueObjects.BOOKS) : ItemReference
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("createBOOKS");
		var _internal_token:ItemReference = _internal_operation.send(item) as ItemReference;

		return _internal_token;
	}   
	 
}

}
