package PtuHelp.service;

import java.util.List;
import PtuHelp.model.Keyboard;

public interface RecommendationService {
    List<Keyboard> getRecommendedKeyboards(int userId);
}
