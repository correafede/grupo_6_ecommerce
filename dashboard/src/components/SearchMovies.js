import React, {useEffect, useState, useRef} from 'react';


function SearchMovies(){

	const [movies, setMovies] = useState([])
	const [keyword, setKeyword] = useState('')
	const inputTag = useRef();

	const apiKey = '2f5c2209'; 

	useEffect(() => {
		// const endpoint = `http://www.omdbapi.com/?s=${keyword}&apikey=${apiKey}`
		fetch('/api/products')
		.then(response => response.json())
		.then(data => {
			if(!data.Error){
				setMovies(data.products)
			}else{
				setMovies([]);
			}
			
		}).catch(error => console.log(error));
	}, [keyword])


	const searchMovie  = async e => {
		e.preventDefault();
		const inputValue = inputTag.current.value;
		setKeyword(inputValue);
		inputTag.current.value = '';
	}
	

	// Credenciales de API
	 // Intenta poner cualquier cosa antes para probar

	return(
		<div className="container-fluid">
			{
				apiKey !== '' ?
				<>
					<div className="row my-4">
						<div className="col-12 col-md-6">
							{/* Buscador */}
							<form method="GET" onSubmit={searchMovie}>
								<div className="form-group">
									<label htmlFor="">Buscar por nombre:</label>
									<input ref={inputTag} type="text" className="form-control"/>
								</div>
								<button 

								className="btn btn-info">Search</button>
							</form>
						</div>
					</div>
					<div className="row">
						<div className="col-12">
							<h2>Cervezas para la palabra: {keyword}</h2>
						</div>
						{/* Listado de películas */}
						{
							keyword.length > 0 && movies.map((movie, i) => {
								return (
									<div className="col-sm-6 col-md-3 my-4" key={i}>
										<div className="card shadow mb-4">
											<div className="card-header py-3">
												<h5 className="m-0 font-weight-bold text-gray-800">{movie.Nombre}</h5>
											</div>
											<div className="card-body">
												<div className="text-center">
												
												<img 
														className="img-fluid px-3 px-sm-4 mt-3 mb-4" 
														src={`/img/products/${movie.image}`}
														alt=''
														style={{ width: '90%', height: '600px' }} 
													/>
												</div >
												<p  style={{ paddingLeft: '22%' }}>{movie.size.Nombre} / {movie.category.Nombre} / {movie.color.Nombre} </p>
												<p  style={{ paddingLeft: '42%' }}>{movie.price}</p>
											</div>
										</div>
									</div>
								)
							})
						}
					</div>
					{ movies.length === 0 && <div className="alert alert-warning text-center">No se encontraron productos</div>}
				</>
				:
				<div></div>
			}
		</div>
	)
}

export default SearchMovies;
