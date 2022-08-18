import React,{Component} from 'react';
import LastProduct from './LastProduct'


class LastProductInDb extends Component{
    constructor(){
        super()
        this.state= {
            productsList: []
        }
    }
    
    componentDidMount(){
  
        fetch('/api/products')
        .then(response =>{
        return response.json()
        })
        .then(products =>{
        this.setState({productsList: products.last})
        })
        .catch(error => console.log(error))
        }
    render(){
        return (
            <React.Fragment>     
            <div className="card shadow mb-4">
                <div className="card-header py-3">
                    <h5 className="m-0 font-weight-bold text-gray-800">Last product in Database</h5>
                </div> 
                <div className="col-lg-6 mb-4"> 
                <div className="card-body"> 
                {
                        this.state.productsList.map((product)=>{
                            return  <LastProduct {...product}  />
                        })
                        }     
                    </div> 
                </div> 
            </div>     
                </React.Fragment>
      )
  }
  

}
export default LastProductInDb;