/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package NapakalakiGame;

import GUI.NapakalakiView;
import GUI.Dice;
import GUI.PlayerNamesCapture;
import GUI.TreasureView;
import java.util.*;

/**
 *
 * @author jomabose & danibolanos
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Napakalaki game = Napakalaki.getInstance();
        NapakalakiView napakalakiView = new NapakalakiView();
        Dice.createInstance (napakalakiView);
        napakalakiView.setNapakalaki(game);
        ArrayList<String> names = new ArrayList();
        PlayerNamesCapture namesCapture = new PlayerNamesCapture(napakalakiView, true);
        TreasureView treasureView = napakalakiView.getTreasureView();
        Treasure tesoro = new Treasure("¡Sí, mi amo!",4,TreasureKind.HELMET);
        treasureView.setTreasure(tesoro);
        names = namesCapture.getNames();
        game.initGame(names);
        napakalakiView.setVisible(true);
    }
    
}
