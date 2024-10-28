package PtuHelp.dao;

import java.util.List;
import PtuHelp.model.Keyboard;

public interface KeyboardDao {
    List<Keyboard> getKeyboardsByMbtiType(String mbtiType);
}
