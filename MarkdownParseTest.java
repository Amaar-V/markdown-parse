import static org.junit.Assert.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.junit.*;

public class MarkdownParseTest {
    @Test
    public void tester() throws IOException {
        ArrayList<String> expected = new ArrayList<>();
        expected.add("https://something.com");
        expected.add("some-page.html");
        List<String> list = List.of("test2.md", "test3.md", "test4.md", "test-file.md");
        for (String string : list) {
            Path fileName = Path.of(string);
	        String contents = Files.readString(fileName);
            ArrayList<String> links = MarkdownParse.getLinks(contents);
            assertEquals(expected, links);
        }
    }
}