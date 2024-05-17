package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Autor;
import application.repository.AutorRepository;

@Controller
@RequestMapping("/autor")
public class AutorController {
    @Autowired
    private AutorRepository autorRepo;

    @RequestMapping("/list")
    public String list(Model ui) {

        ui.addAttribute("autores", autorRepo.findAll());

        return "/autores/list";
    }

    @RequestMapping("/insert")
    public String insert() {
        return "/autores/insert";
    }

    
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("nome") String nome) {

        Autor autor = new Autor();
        autor.setNome(nome);

        autorRepo.save(autor);
        
        return "redirect:/autores/list";
    }

    @RequestMapping("/update/{id}")
    public String update(@PathVariable long id, Model ui){
        Optional<Autor> resultado = autorRepo.findById(id);

        if (resultado.isPresent()) {
            ui.addAttribute("autor", resultado.get());
            return "/autores/update";
        }
        return "redirect:/autores/list";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") long id,
        @RequestParam("nome") String nome) {
        
        Optional<Autor> resultado = autorRepo.findById(id);

        if(resultado.isPresent()){
            resultado.get().setNome(nome);
            

            autorRepo.save(resultado.get());
        }
        
        return "redirect:/autores/list";
    }

    @RequestMapping("/delete/{id}")
    public String delete(Model ui, @PathVariable long id){
        Optional<Autor> resultado = autorRepo.findById(id);

        if (resultado.isPresent()) {
            ui.addAttribute("autor", resultado.get());
            return "/autores/delete";
        }
        return "redirect:/autores/list";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") long id) {
        autorRepo.deleteById(id);

        return "redirect:/autores/list";
    }
}
