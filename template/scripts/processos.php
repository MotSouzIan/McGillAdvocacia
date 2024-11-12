</div>
                    <div class="container-fluid py-2">
                        <div class="row">
                            <div>
                                <form id="myForm" class="row g-3" method="post"
                                    action="../includes/_scripts/repository/processos/save.php">
                                    <div class="col-md-4">
                                        <label for="inputData" class="form-label">Data</label>
                                        <div class="input-group input-group-outline">
                                            <input type="date" class="form-control" name="data" id="inputData" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="inputHora" class="form-label">Hora</label>
                                        <div class="input-group input-group-outline">
                                            <input type="time" class="form-control" name="hora" id="inputHora" required>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <label for="tipoSelect" class="form-label">Tipo</label>
                                        <div class="input-group input-group-outline">
                                            <select class="form-select" name="tipo" id="tipoSelect" required>
                                                <option value="" disabled selected>Selecione o tipo de processo</option>
                                                <option value="Empresario">Empresário</option>
                                                <option value="Civil">Civil</option>
                                                <option value="Penal">Penal</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <label for="inputDescricao" class="form-label">Descrição</label>
                                        <div class="input-group input-group-outline">
                                            <input type="text" class="form-control" name="descricao" id="inputDescricao"
                                                required>
                                        </div>
                                    </div>