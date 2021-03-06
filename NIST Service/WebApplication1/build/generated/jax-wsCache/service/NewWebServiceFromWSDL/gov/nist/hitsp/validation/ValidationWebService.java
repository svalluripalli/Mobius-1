
package gov.nist.hitsp.validation;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.6-1b01 
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "ValidationWebService", targetNamespace = "http://validation.hitsp.nist.gov", wsdlLocation = "file:/C:/Documents%20and%20Settings/shailendra.singh/My%20Documents/NetBeansProjects/WebApplication1/src/conf/xml-resources/web-services/NewWebServiceFromWSDL/wsdl/hit-testing.nist.gov_11080/ws/services/ValidationWebService.wsdl")
public class ValidationWebService
    extends Service
{

    private final static URL VALIDATIONWEBSERVICE_WSDL_LOCATION;
    private final static WebServiceException VALIDATIONWEBSERVICE_EXCEPTION;
    private final static QName VALIDATIONWEBSERVICE_QNAME = new QName("http://validation.hitsp.nist.gov", "ValidationWebService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("file:/C:/Documents%20and%20Settings/shailendra.singh/My%20Documents/NetBeansProjects/WebApplication1/src/conf/xml-resources/web-services/NewWebServiceFromWSDL/wsdl/hit-testing.nist.gov_11080/ws/services/ValidationWebService.wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        VALIDATIONWEBSERVICE_WSDL_LOCATION = url;
        VALIDATIONWEBSERVICE_EXCEPTION = e;
    }

    public ValidationWebService() {
        super(__getWsdlLocation(), VALIDATIONWEBSERVICE_QNAME);
    }

    public ValidationWebService(WebServiceFeature... features) {
        super(__getWsdlLocation(), VALIDATIONWEBSERVICE_QNAME, features);
    }

    public ValidationWebService(URL wsdlLocation) {
        super(wsdlLocation, VALIDATIONWEBSERVICE_QNAME);
    }

    public ValidationWebService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, VALIDATIONWEBSERVICE_QNAME, features);
    }

    public ValidationWebService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public ValidationWebService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns ValidationWebServicePortType
     */
    @WebEndpoint(name = "ValidationWebServiceSOAP11port_http")
    public ValidationWebServicePortType getValidationWebServiceSOAP11PortHttp() {
        return super.getPort(new QName("http://validation.hitsp.nist.gov", "ValidationWebServiceSOAP11port_http"), ValidationWebServicePortType.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns ValidationWebServicePortType
     */
    @WebEndpoint(name = "ValidationWebServiceSOAP11port_http")
    public ValidationWebServicePortType getValidationWebServiceSOAP11PortHttp(WebServiceFeature... features) {
        return super.getPort(new QName("http://validation.hitsp.nist.gov", "ValidationWebServiceSOAP11port_http"), ValidationWebServicePortType.class, features);
    }

    /**
     * 
     * @return
     *     returns ValidationWebServicePortType
     */
    @WebEndpoint(name = "ValidationWebServiceSOAP12port_http")
    public ValidationWebServicePortType getValidationWebServiceSOAP12PortHttp() {
        return super.getPort(new QName("http://validation.hitsp.nist.gov", "ValidationWebServiceSOAP12port_http"), ValidationWebServicePortType.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns ValidationWebServicePortType
     */
    @WebEndpoint(name = "ValidationWebServiceSOAP12port_http")
    public ValidationWebServicePortType getValidationWebServiceSOAP12PortHttp(WebServiceFeature... features) {
        return super.getPort(new QName("http://validation.hitsp.nist.gov", "ValidationWebServiceSOAP12port_http"), ValidationWebServicePortType.class, features);
    }

    /**
     * 
     * @return
     *     returns ValidationWebServicePortType
     */
    @WebEndpoint(name = "ValidationWebServiceHttpport")
    public ValidationWebServicePortType getValidationWebServiceHttpport() {
        return super.getPort(new QName("http://validation.hitsp.nist.gov", "ValidationWebServiceHttpport"), ValidationWebServicePortType.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns ValidationWebServicePortType
     */
    @WebEndpoint(name = "ValidationWebServiceHttpport")
    public ValidationWebServicePortType getValidationWebServiceHttpport(WebServiceFeature... features) {
        return super.getPort(new QName("http://validation.hitsp.nist.gov", "ValidationWebServiceHttpport"), ValidationWebServicePortType.class, features);
    }

    private static URL __getWsdlLocation() {
        if (VALIDATIONWEBSERVICE_EXCEPTION!= null) {
            throw VALIDATIONWEBSERVICE_EXCEPTION;
        }
        return VALIDATIONWEBSERVICE_WSDL_LOCATION;
    }

}
