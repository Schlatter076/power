package loyer.client;

import java.awt.EventQueue;
import java.util.List;

import loyer.db.ProductTypeTools;
import loyer.db.ProductTypeTools.ProductType;
import loyer.gui.LogInFrame;
import loyer.properties.Tables;

public class LogIn extends LogInFrame {

  private static List<ProductType> list = null;
  static {
    list = ProductTypeTools.getAllByDB();
    
  }//*/
  
  public LogIn() {
    textField.setText(list.get(0).getName());  //设置默认机种
  }
  @Override
  public void logInEvent() {
    if(!isDataView) {
      
      switch (textField.getText()) {
      case "KM073PWR基板":
        isDataView = true;
        frame.dispose();
        DataView.getDataView(Tables.KM073SMT_HAVE, list.get(0).getName());
        break;
      case "KM073PWR基板(无CN6)":
        isDataView = true;
        frame.dispose();
        DataView.getDataView(Tables.KM073SMT_NO, list.get(1).getName());
        break;
      case "KM073PWR完成品":
        isDataView = true;
        frame.dispose();
        DataView.getDataView(Tables.KM073UNIT_HAVE, list.get(2).getName());
        break;
      case "KM073PWR完成品(无CN6)":
        isDataView = true;
        frame.dispose();
        DataView.getDataView(Tables.KM073UNIT_NO, list.get(3).getName());
        break;
      case "KM033PWR基板":
        isDataView = true;
        frame.dispose();
        DataView.getDataView(Tables.KM033SMT, list.get(4).getName());
        break;
      case "KM033PWR完成品":
        isDataView = true;
        frame.dispose();
        DataView.getDataView(Tables.KM033UNIT, list.get(5).getName());
        break;
      case "KM017PWR基板":
        isDataView = true;
        frame.dispose();
        DataView.getDataView(Tables.KM017SMT, list.get(6).getName());
        break;
      case "KM017PWR完成品":
        isDataView = true;
        frame.dispose();
        DataView.getDataView(Tables.KM017UNIT, list.get(7).getName());
        break;
      default:
        break;
      }
    }
  }
  @Override
  public void chooseEvent() {
    textField.setText(list.get(typeCount % list.size()).getName());
    typeCount++;
  }
  
  public static void logIn() {
    EventQueue.invokeLater(new Runnable() {
      
      @Override
      public void run() {
        LogIn win = new LogIn();
        win.frame.setVisible(true);
      }
    });
  }//*/
  
}
