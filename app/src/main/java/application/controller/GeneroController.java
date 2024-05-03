package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Genero;
import application.repository.GeneroRepository;

@Controller
@RequestMapping("/genero")
public class GeneroController {
    @Autowired
    private GeneroRepository generoRepo;

    @RequestMapping("/list")
    public String list(Model ui) {
        //Livro[] livros = new Livro[2];
        //livros[0] = new Livro();
        //livros[0].setId(1);
        //livros[0].setTitulo("Livro teste 1");
        //livros[0].setGenero("G1");
        //livros[1] = new Livro();
        //livros[1].setId(2);
        //livros[1].setTitulo("Livro teste 2");
        //livros[1].setGenero("G2");

        ui.addAttribute("genero", generoRepo.findAll());

        return "/genero/list";
    }

    @RequestMapping("/insert")
    public String insert() {
        return "/genero/insert";
    }

    
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("nome") String nome) {

        Genero genero = new Genero();
        genero.setNome(nome);

        generoRepo.save(genero);
        
        return "redirect:/genero/list";
    }

    @RequestMapping("/update/{id}")
    public String update(Model ui, @PathVariable long id){
        Optional<Genero> resultado = generoRepo.findById(id);

        if (resultado.isPresent()) {
            ui.addAttribute("genero", resultado.get());
            return "/genero/update";
        }
        return "redirect:/genero/list";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") long id,
        @RequestParam("nome") String nome) {
        
        Optional<Genero> resultado = generoRepo.findById(id);

        if(resultado.isPresent()){
            resultado.get().setNome(nome);
            

            generoRepo.save(resultado.get());
        }
        
        return "redirect:/genero/list";
    }

    @RequestMapping("/delete/{id}")
    public String delete(Model ui, @PathVariable long id){
        Optional<Genero> resultado = generoRepo.findById(id);

        if (resultado.isPresent()) {
            ui.addAttribute("genero", resultado.get());
            return "/genero/delete";
        }
        return "redirect:/genero/list";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") long id) {
        generoRepo.deleteById(id);

        return "redirect:/genero/list";
    }
}
