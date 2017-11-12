function doLogin(doc) {
	doc.getElementById("idReturnLogin").innerHTML = doc.getElementById("idLogin").value;
	doc.getElementById("idReturnPassword").innerHTML = doc.getElementById("idPassword").value;

	if ((doc.getElementById("idLogin").value === "admin") && (doc.getElementById("idPassword").value === "admin")) {
		location.href = "cadastroCliente.html";
	}
}

function doNovoUsuario() {
	location.href = "cadastroUsuario.html";
}