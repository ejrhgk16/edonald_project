@Controller
public class IndexController {
	
    @Autowired
    private BoardService s;
	
    @RequestMapping(value="/write", method=RequestMethod.GET)
    public String write() {
        return "write";
    }
	
    @RequestMapping(value="/writeAction", method=RequestMethod.POST)
    public String writeAction(
            HttpServletRequest req,@RequestParam("file") MultipartFile file,
            @RequestParam("title")String title, 
            @RequestParam("contents")String contents) throws IllegalStateException, IOException {
        String PATH = req.getSession().getServletContext().getRealPath("/") + "resources/";
        if (!file.getOriginalFilename().isEmpty()) {
            file.transferTo(new File(PATH + file.getOriginalFilename()));
        }
        s.addBoard(new Board(0, title, contents, file.getOriginalFilename()));
        return "board";
    }
}