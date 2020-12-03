/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack1;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author hemlu
 */
@WebService(serviceName = "MYWebService")
public class MYWebService {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "showflight")
    public String showflight(@WebParam(name = "Airline") String Airline, @WebParam(name = "from") String from, @WebParam(name = "to") String to) {
        //TODO write your implementation code here:
        return " Your flight "+Airline+" is from "+from+" to "+to;
    }
}
