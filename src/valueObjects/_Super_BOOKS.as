/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - BOOKS.as.
 */

package valueObjects
{
import flash.events.EventDispatcher;
import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.IValueObject;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.services.IFiberManagingService;
import mx.binding.utils.ChangeWatcher;
import mx.rpc.AbstractService;


import flash.events.Event;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;


use namespace model_internal;

[Managed]
[ExcludeClass]
public class _Super_BOOKS extends EventDispatcher implements IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
     }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {     
    }

	model_internal var _dminternal_model : _BOOKSEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_BOOKID : Number;
	private var _internal_AUTHORID : Number;
	private var _internal_TITLE : String;
	private var _internal_BOOKDESCRIPTION : String;
	private var _internal_BOOKIMAGE : String;
	private var _internal_THUMBNAILIMAGE : String;
	private var _internal_ISSPOTLIGHT : String;
	private var _internal_GENRE : String;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_BOOKS() 
	{	
		_model = new _BOOKSEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get BOOKID() : Number    
    {
            return _internal_BOOKID;
    }    
	[Bindable(event="propertyChange")] 
    public function get AUTHORID() : Number    
    {
            return _internal_AUTHORID;
    }    
	[Bindable(event="propertyChange")] 
    public function get TITLE() : String    
    {
            return _internal_TITLE;
    }    
	[Bindable(event="propertyChange")] 
    public function get BOOKDESCRIPTION() : String    
    {
            return _internal_BOOKDESCRIPTION;
    }    
	[Bindable(event="propertyChange")] 
    public function get BOOKIMAGE() : String    
    {
            return _internal_BOOKIMAGE;
    }    
	[Bindable(event="propertyChange")] 
    public function get THUMBNAILIMAGE() : String    
    {
            return _internal_THUMBNAILIMAGE;
    }    
	[Bindable(event="propertyChange")] 
    public function get ISSPOTLIGHT() : String    
    {
            return _internal_ISSPOTLIGHT;
    }    
	[Bindable(event="propertyChange")] 
    public function get GENRE() : String    
    {
            return _internal_GENRE;
    }    

    /**
     * data property setters
     */      
    public function set BOOKID(value:Number) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:Number = _internal_BOOKID;               
        if (oldValue !== value)
        {
        	_internal_BOOKID = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set AUTHORID(value:Number) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:Number = _internal_AUTHORID;               
        if (oldValue !== value)
        {
        	_internal_AUTHORID = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set TITLE(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_TITLE == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_TITLE;               
        if (oldValue !== value)
        {
        	_internal_TITLE = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set BOOKDESCRIPTION(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_BOOKDESCRIPTION == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_BOOKDESCRIPTION;               
        if (oldValue !== value)
        {
        	_internal_BOOKDESCRIPTION = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set BOOKIMAGE(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_BOOKIMAGE == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_BOOKIMAGE;               
        if (oldValue !== value)
        {
        	_internal_BOOKIMAGE = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set THUMBNAILIMAGE(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_THUMBNAILIMAGE == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_THUMBNAILIMAGE;               
        if (oldValue !== value)
        {
        	_internal_THUMBNAILIMAGE = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ISSPOTLIGHT(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ISSPOTLIGHT == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ISSPOTLIGHT;               
        if (oldValue !== value)
        {
        	_internal_ISSPOTLIGHT = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set GENRE(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_GENRE == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_GENRE;               
        if (oldValue !== value)
        {
        	_internal_GENRE = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    

    /**
     * data property setter listeners
     */   

   model_internal function setterListenerAnyConstraint(value:Event):void
   {
        if (model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }        
   }   

    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();    
        var validationFailureMessages:Array = new Array();    

		if (_model.isTITLEAvailable && _internal_TITLE == null)
		{
			violatedConsts.push("TITLEIsRequired");
			validationFailureMessages.push("TITLE is required");
		}
		if (_model.isBOOKDESCRIPTIONAvailable && _internal_BOOKDESCRIPTION == null)
		{
			violatedConsts.push("BOOKDESCRIPTIONIsRequired");
			validationFailureMessages.push("BOOKDESCRIPTION is required");
		}
		if (_model.isBOOKIMAGEAvailable && _internal_BOOKIMAGE == null)
		{
			violatedConsts.push("BOOKIMAGEIsRequired");
			validationFailureMessages.push("BOOKIMAGE is required");
		}
		if (_model.isTHUMBNAILIMAGEAvailable && _internal_THUMBNAILIMAGE == null)
		{
			violatedConsts.push("THUMBNAILIMAGEIsRequired");
			validationFailureMessages.push("THUMBNAILIMAGE is required");
		}
		if (_model.isISSPOTLIGHTAvailable && _internal_ISSPOTLIGHT == null)
		{
			violatedConsts.push("ISSPOTLIGHTIsRequired");
			validationFailureMessages.push("ISSPOTLIGHT is required");
		}
		if (_model.isGENREAvailable && _internal_GENRE == null)
		{
			violatedConsts.push("GENREIsRequired");
			validationFailureMessages.push("GENRE is required");
		}

		var styleValidity:Boolean = true;
	
	
	
	
	
	
	
	
    
        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && styleValidity;
    }  

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
       	var oldValue:Boolean = model_internal::_isValid;               
        if (oldValue !== value)
        {
        	model_internal::_isValid = value;
        	_model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }        
    }

    /**
     * derived property getters
     */

    [Transient] 
	[Bindable(event="propertyChange")] 
    public function get _model() : _BOOKSEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _BOOKSEntityMetadata) : void       
    {
    	var oldValue : _BOOKSEntityMetadata = model_internal::_dminternal_model;               
        if (oldValue !== value)
        {
        	model_internal::_dminternal_model = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }     
    }      

    /**
     * methods
     */  


    /**
     *  services
     */                  
     private var _managingService:IFiberManagingService;
    
     public function set managingService(managingService:IFiberManagingService):void
     {
         _managingService = managingService;
     }                      
     
    model_internal function set invalidConstraints_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_invalidConstraints;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;   
			_model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);   
        }     	             
    }             
    
     model_internal function set validationFailureMessages_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_validationFailureMessages;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;   
			_model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);   
        }     	             
    }        
     
     // Individual isAvailable functions     
	// fields, getters, and setters for primitive representations of complex id properties

}

}
