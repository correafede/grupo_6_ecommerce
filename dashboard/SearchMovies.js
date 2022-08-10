import React, {useEffect, useState, useRef} from 'react';


function SearchBirras(){

	const [birras, setBirras] = useState([])
	const [keyword, setKeyword] = useState('')
	const inputTag = useRef();

	useEffect(() => {
		fetch('/api/products')
		.then(response => response.json())
		.then(data => {
			if(!data.Error){
				setBirras(data.products)
			}else{
				setBirras([]);
			}
			
		}).catch(error => console.log(error));
	}, [keyword])


	const searchBirra  = async e => {
		e.preventDefault();
		const inputValue = inputTag.current.value;
		setKeyword(inputValue);
		inputTag.current.value = '';
	}
	

	return(
		<div className="container-fluid">
			
				<>
					<div className="row my-4">
						<div className="col-12 col-md-6">
							{/* Buscador */}
							<form method="GET" onSubmit={searchBirra}>
								<div className="form-group">
									<label htmlFor="">Buscar por título:</label>
									<input ref={inputTag} type="text" className="form-control" />
								</div>
								<button 

								className="btn btn-info">Search</button>
							</form>
						</div>
					</div>
					<div className="row">
						<div className="col-12">
							<h2>Películas para la palabra: {keyword}</h2>
						</div>

						{
							birras.length > 0 && birras.map((birra, i) => {
								return (
									<div className="col-sm-6 col-md-3 my-4" key={i}>
										<div className="card shadow mb-4">
											<div className="card-header py-3">
												<h5 className="m-0 font-weight-bold text-gray-800">{birra.Nombre}</h5>
											</div>
											<div className="card-body">
												<div className="text-center">
												</div>
											</div>
										</div>
									</div>
								)
							})
						}
					</div>
					{ birras.length === 0 && <div className="alert alert-warning text-center">No se encontraron películas</div>}
				</>
		</div>
	)
}

export default SearchBirras;
