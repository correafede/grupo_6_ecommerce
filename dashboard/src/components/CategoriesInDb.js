import React,{Component} from 'react';
import Category  from './Category';

class Categories extends Component{
  constructor(){
      super()
      this.state= {
          categoryList: []
      }
  }
  componentDidMount(){

      fetch('/api/products/categories')
      .then(response =>{
      return response.json()
      })
      .then(categories =>{
      this.setState({categoryList:  categories.categories.categories
    })
      })
      .catch(error => console.log(error))
      }
  render(){
      return (
          <React.Fragment>
                  {/*<!-- Categories in DB -->*/}
                  <div className="col-lg-6 mb-4">						
                      <div className="card shadow mb-4">
                          <div className="card-header py-3">
                            <h6 className="m-0 font-weight-bold text-gray-800">Categories in Database</h6>

                          </div>
                          <div className="card-body fondoCaja">
                              <div className="row">
                                  {
                                    
                                    this.state.categoryList.map((category,index)=>{
                                        return  <Category {...category}  key={index} />
                                    })
                                  }

                              </div>
                          </div>
                      </div>
                  </div>
          </React.Fragment>
      )
  }
  

}
export default Categories;