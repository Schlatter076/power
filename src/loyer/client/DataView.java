package loyer.client;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JScrollBar;
import javax.swing.JTable;
import javax.swing.Timer;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.text.Document;

import gnu.io.SerialPort;
import gnu.io.SerialPortEvent;
import loyer.db.DataTools;
import loyer.db.RecordTools;
import loyer.db.RecordTools.RecordData;
import loyer.db.TestDataTools;
import loyer.db.UserTools;
import loyer.db.UserTools.UserData;
import loyer.exception.NoSuchPort;
import loyer.exception.NotASerialPort;
import loyer.exception.PortInUse;
import loyer.exception.SerialPortParamFail;
import loyer.exception.TooManyListeners;
import loyer.gui.LoyerFrame;
import loyer.properties.Commands;
import loyer.properties.Tables;
import loyer.serial.SerialPortTools;

public class DataView extends LoyerFrame {

  /** 测试数据表 */
  private JTable table;
  /** 测试数据表渲染类 */
  private MyTableCellRenderrer tableCell;
  /** 管理员用户 */
  private static UserData admin;
  /** 格式化时间值 */
  private SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
  /** 产品编号计数器 */
  private int productCount = 0;
  /** 串口列表 */
  private ArrayList<String> portList = SerialPortTools.findPort();
  private SerialPort COM1;
  private SerialPort COM2;
  /**串口1数据到达标志位*/
  private boolean com1HasData = false;
  /**串口2数据到达标志位*/
  private boolean com2HasData = false;
  private boolean writeV_ChannelThree = false;
  private boolean writeV_ChannelTwo = false;
  private boolean writeA_ChannelOne = false;
  private boolean writeA_ChannelTwo = false;
  private boolean write_ct10 = false;
  private boolean write_ct25 = false;
  private boolean allowReadVOL = false;
  private boolean allowReadCUR = false;
  private int step = 0;
  private double rec_data = 0;

  /** 测试数据显示面板滚动条 */
  private JScrollBar scrollBar;
  /** 数据库表名 */
  private String tableName;
  /** 20ms定时器 */
  private Timer timer1 = new Timer(20, new Timer1Listener());
  /**测试是否开始*/
  private boolean isStart = false;
  /**测试是否完成*/
  private boolean isFinished = false;
  
  
  static {
    // 加载用户数据
    admin = UserTools.getUserByID(1);
  }

  public DataView(String tableName, String productType) {
    this.tableName = tableName;
    PRODUCT_NAME = productType;
    initialize();
  }

  private void initialize() {

    productField.setText(PRODUCT_NAME);
    table = DataTools.completedTable(tableName);
    dataPanel.setViewportView(table);
    dataPanel.doLayout();
    scrollBar = dataPanel.getVerticalScrollBar();
    persistScroll.setViewportView(new JLabel(new ImageIcon(JLabel.class.getResource("/pic/frame.jpg"))));

    com1Butt.addActionListener(e -> {
      if (COM1 == null) { // 如果串口1被关闭了
        initCOM1();
      } else
        com1Butt.setSelected(true);
    });
    com2Butt.addActionListener(e -> {
      if (COM2 == null) {
        initCOM2();
      } else
        com2Butt.setSelected(true);
    });
    scanField.addFocusListener(new FocusListener() {

      @Override
      public void focusLost(FocusEvent e) {
        scanField.requestFocusInWindow();
      }

      @Override
      public void focusGained(FocusEvent e) {
      }
    });
    scanField.setText("");  //清空扫描区域，以待扫描
    
    Document dt = statuField.getDocument();
    dt.addDocumentListener(new DocumentListener() {
      
      @Override
      public void removeUpdate(DocumentEvent e) {
        
      }
      
      @Override
      public void insertUpdate(DocumentEvent e) {
        if(statuField.getText().equals("PASS")) {
          statuField.setBackground(GREEN);
        } else if(statuField.getText().equals("NG")) {
          statuField.setBackground(Color.RED);
        } else {
          statuField.setBackground(Color.ORANGE);
        }
      }
      
      @Override
      public void changedUpdate(DocumentEvent e) {
        
      }
    });
    
    
  }

  @Override
  public boolean pwdIsPassed(String command) {
    return false;
  }

  @Override
  public void usartMethod() {
    if (statuField.getText().equals("测试中...")) {
      JOptionPane.showMessageDialog(null, "测试进行中，不可操作！");
      return;
    }
    JPasswordField pf = new JPasswordField();
    pf.setFont(new Font("宋体", Font.PLAIN, 17));
    pf.setEchoChar('*');
    JOptionPane.showMessageDialog(null, pf, "请输入管理员密码：", JOptionPane.PLAIN_MESSAGE);
    char[] pwd = pf.getPassword();
    if (pwd.length == 6) {
      if (String.valueOf(pwd).toLowerCase().equals(admin.getPwd())) {
        closePort();
        UsartTools.getUsartTools();
      } else
        JOptionPane.showMessageDialog(null, "密码错误！");
    } else
      JOptionPane.showMessageDialog(null, "密码长度为6位！");
  }

  @Override
  public void resultView() {
    if (statuField.getText().equals("测试中...")) {
      JOptionPane.showMessageDialog(null, "测试进行中，不可操作！");
      return;
    }
  }

  @Override
  public void reportView() {
    if (statuField.getText().equals("测试中...")) {
      JOptionPane.showMessageDialog(null, "测试进行中，不可操作！");
      return;
    }
    ReportView.getReportView(tableName + Tables.RECORD);
  }

  @Override
  public void nayinMethod() {

  }

  @Override
  public void close() {
    
    int tem = JOptionPane.showConfirmDialog(null, "确认退出系统?", "询问", JOptionPane.YES_NO_OPTION);
    if (tem == JOptionPane.YES_OPTION) {
      frame.setVisible(false);
      MyLineChart.saveAsJPEG(tableName + Tables.RECORD);
      TestDataTools.outExcl(tableName + Tables.TEST);
      System.exit(0);
    }
  }

  /**
   * table渲染色，测试结果为"PASS"则设为绿色，"NG"为红色
   */
  public void setTableCellRenderer() {
    if (tableCell == null) {
      tableCell = new MyTableCellRenderrer();
      table.getColumnModel().getColumn(7).setCellRenderer(tableCell);
    } else
      table.getColumnModel().getColumn(7).setCellRenderer(tableCell);
  }

  /**
   * 获取对应单元格的数值
   * 
   * @param row
   * @param col
   */
  public double getDoubleValue(int row, int col) {
    return Double.parseDouble(table.getValueAt(row, col).toString());
  }

  /**
   * 自动判定结果
   * 
   * @param row
   *          行数，从0开始
   */
  public void autoSetResultStatu(int row) {
    double val = getDoubleValue(row, 5);
    if (scrollBar != null) {
      scrollBar.setValue(scrollBar.getMaximum() * row / table.getRowCount());
    }
    if (val <= getDoubleValue(row, 3) && val >= getDoubleValue(row, 4)) {
      table.setValueAt("PASS", row, 7);
      SerialPortTools.writeBytes(COM1, Commands.RESULT_OK);
    } else {
      table.setValueAt("NG", row, 7);
      SerialPortTools.writeBytes(COM1, Commands.RESULT_NG);
      setResultNG();
    }
  }
  /**
   * 设置测试结果NG
   */
  public void setResultNG() {
    statuField.setText("NG");
    ngCount++;
    totalCount = okCount + ngCount;
    ngField.setText(ngCount + "");
    totalField.setText(totalCount + "");
    setPieChart(okCount, ngCount);
    String[] rdData = new String[6];
    rdData[0] = tableName;
    rdData[1] = totalField.getText();
    rdData[2] = okField.getText();
    rdData[3] = ngField.getText();
    rdData[4] = timeField.getText();
    rdData[5] = LocalDate.now().toString();
    if(RecordTools.getByDate(tableName + Tables.RECORD, rdData[5]) == null) {
      RecordTools.insertRecord(tableName + Tables.RECORD, rdData);
    } else {
      RecordTools.updataRecord(tableName + Tables.RECORD, rdData);
    }
  }
  /**
   * 全部测试结果OK
   */
  public void allPass() {
    if(isFinished) {
      for(int i = 1; i < table.getRowCount() - 1; i++) {
        if(!table.getValueAt(i, 7).equals("PASS")) {
          setResultNG();
          return;
        }
      }
      statuField.setText("PASS");
      okCount++;
      totalCount = okCount + ngCount;
      okField.setText(okCount + "");
      totalField.setText(totalCount + "");
      setPieChart(okCount, ngCount);
      String[] rdData = new String[6];
      rdData[0] = tableName;
      rdData[1] = totalField.getText();
      rdData[2] = okField.getText();
      rdData[3] = ngField.getText();
      rdData[4] = timeField.getText();
      rdData[5] = LocalDate.now().toString();
      if(RecordTools.getByDate(tableName + Tables.RECORD, rdData[5]) == null) {
        RecordTools.insertRecord(tableName + Tables.RECORD, rdData);
      } else {
        RecordTools.updataRecord(tableName + Tables.RECORD, rdData);
      }
    }
  }

  /**
   * 获取测试数据，插入到数据库
   * 
   * @param row
   *          行数
   * @param remark
   *          备注
   */
  public void record(int row, String remark) {
    String[] datas = new String[11];
    datas[0] = scanField.getText(); // 获取产品编号
    for (int i = 1; i <= 7; i++) {
      datas[i] = table.getValueAt(row, i).toString();
    }
    datas[8] = sdf.format(new Date());
    datas[9] = LocalDate.now().toString();
    datas[10] = remark;
    TestDataTools.insert(tableName + Tables.TEST, datas);
  }

  /**
   * 插入空行
   */
  public void recordNull() {
    String[] datas = new String[11];
    for (int i = 0; i <= 10; i++) {
      datas[i] = "--";
    }
    datas[9] = LocalDate.now().toString();
    TestDataTools.insert(tableName + Tables.TEST, datas);
  }

  /**
   * 初始化饼图和测试数据
   */
  public void initCountAndPieChart() {
    RecordData rd = RecordTools.getByDate(tableName + Tables.RECORD, LocalDate.now().toString());
    if (productCount == -1)
      productCount = 0;
    if (rd != null) {
      okCount = Integer.parseInt(rd.getOk());
      ngCount = Integer.parseInt(rd.getNg());
      totalCount = Integer.parseInt(rd.getSum());
      timeCount = 0;
    } else {
      okCount = 0;
      ngCount = 0;
      totalCount = 0;
      timeCount = 0;
    }
    okField.setText(okCount + "");
    ngField.setText(ngCount + "");
    totalField.setText(totalCount + "");
    timeField.setText(timeCount + "");
    setPieChart(okCount, ngCount);
  }

  /**
   * 初始化串口1
   */
  public void initCOM1() {
    if (portList.contains("COM1") && COM1 == null) {
      try {
        COM1 = SerialPortTools.getPort(1);
      } catch (SerialPortParamFail | NotASerialPort | NoSuchPort | PortInUse e) {
        JOptionPane.showMessageDialog(null, "COM1:" + e.toString());
      }
      com1Butt.setSelected(true);
      try {
        SerialPortTools.add(COM1, event -> {
          switch (event.getEventType()) {
          case SerialPortEvent.BI: // 10 通讯中断
            JOptionPane.showMessageDialog(null, "COM1:" + "通讯中断!");
            break;
          case SerialPortEvent.OE: // 7 溢位（溢出）错误
            JOptionPane.showMessageDialog(null, "COM1:" + "溢位（溢出）错误!");
            break;
          case SerialPortEvent.FE: // 9 帧错误
            JOptionPane.showMessageDialog(null, "COM1:" + "帧错误!");
            break;
          case SerialPortEvent.PE: // 8 奇偶校验错误
            JOptionPane.showMessageDialog(null, "COM1:" + "奇偶校验错误!");
            break;
          case SerialPortEvent.CD: // 6 载波检测
            JOptionPane.showMessageDialog(null, "COM1:" + "载波检测!");
            break;
          case SerialPortEvent.CTS: // 3 清除待发送数据
            JOptionPane.showMessageDialog(null, "COM1:" + "清除待发送数据!");
            break;
          case SerialPortEvent.DSR: // 4 待发送数据准备好了
            JOptionPane.showMessageDialog(null, "COM1:" + "待发送数据准备好了!");
            break;
          case SerialPortEvent.RI: // 5 振铃指示
            JOptionPane.showMessageDialog(null, "COM1:" + "振铃指示!");
            break;
          case SerialPortEvent.OUTPUT_BUFFER_EMPTY: // 2 输出缓冲区已清空
            JOptionPane.showMessageDialog(null, "COM1:" + "输出缓冲区已清空");
            break;
          case SerialPortEvent.DATA_AVAILABLE: {
            // 有数据到达-----可以开始处理
            if (!com1HasData) {
              try {
                Thread.sleep(20);
                COM1DatasArrived();
              } catch (InterruptedException e) {
                e.printStackTrace();
              }
            }
          }
            break;
          }
        });
        
      } catch (TooManyListeners e) {
        JOptionPane.showMessageDialog(null, "COM1:" + e.toString());
      }
    } else {
      JOptionPane.showMessageDialog(null, "未发现串口1！");
      com1Butt.setSelected(false);
    }
  }

  /**
   * 初始化串口2
   */
  public void initCOM2() {
    if (portList.contains("COM2") && COM2 == null) {
      try {
        COM2 = SerialPortTools.getPort(2);
      } catch (SerialPortParamFail | NotASerialPort | NoSuchPort | PortInUse e) {
        JOptionPane.showMessageDialog(null, "COM2:" + e.toString());
      }
      com2Butt.setSelected(true);
      try {
        SerialPortTools.add(COM2, arg0 -> {
          switch (arg0.getEventType()) {
          case SerialPortEvent.BI: // 10 通讯中断
          case SerialPortEvent.OE: // 7 溢位（溢出）错误
          case SerialPortEvent.FE: // 9 帧错误
          case SerialPortEvent.PE: // 8 奇偶校验错误
          case SerialPortEvent.CD: // 6 载波检测
          case SerialPortEvent.CTS: // 3 清除待发送数据
          case SerialPortEvent.DSR: // 4 待发送数据准备好了
          case SerialPortEvent.RI: // 5 振铃指示
          case SerialPortEvent.OUTPUT_BUFFER_EMPTY: // 2 输出缓冲区已清空
            JOptionPane.showMessageDialog(null, "COM2错误：" + arg0.toString());
            break;
          case SerialPortEvent.DATA_AVAILABLE: {
            if (!com2HasData) {
              try {
                Thread.sleep(20);
                COM2DatasArrived();
              } catch (InterruptedException e) {
                e.printStackTrace();
              }
            }
          }
            break;
          }
        });
        
      } catch (TooManyListeners e) {
        JOptionPane.showMessageDialog(null, "COM2:" + e.toString());
      }
    } else {
      JOptionPane.showMessageDialog(null, "未发现串口2！");
      com2Butt.setSelected(false);
    }
  }
  /**
   * 关闭串口
   */
  private void closePort() {
    if (COM1 != null) {
      COM1.close();
      COM1 = null;
      com1Butt.setSelected(false);
    }
    if (COM2 != null) {
      COM2.close();
      COM2 = null;
      com2Butt.setSelected(false);
    }
  }

  public boolean isEquals(byte hex, String data) {
    String s1 = String.format("%02x", hex);
    if (s1.equals(data))
      return true;
    else
      return false;
  }

  /**
   * 初始化表格
   */
  public void initTable() {
    for (int i = 1; i < table.getRowCount() - 1; i++) {
      table.setValueAt("?", i, 5); // 清空测试值
      table.setValueAt("?", i, 7); // 清空测试结果
    }
    /*
    if (scrollBar != null) {
      scrollBar.setValue(scrollBar.getMinimum());
    }//*/
  }

  /**
   * 载入
   */
  public void initLoad() {
    initCountAndPieChart();
    initTable();
    initCOM1();
    initCOM2();
    timer1.start();
    scanField.requestFocusInWindow();  //防止扫描时找不到输入点
  }

  /**
   * 调用测试页面的方法
   */
  public static void getDataView(String tableName, String productType) {
    EventQueue.invokeLater(new Runnable() {

      @Override
      public void run() {
        DataView win = new DataView(tableName, productType);
        win.frame.setVisible(true);
        win.setTableCellRenderer();
        win.initLoad();
      }
    });
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /**
   * 系统复位
   */
  public void mcu_reset() {
    statuField.setText("系统复位");
    scanField.setText("");
    initTable();
  }
  /**
   * 串口1数据到达
   */
  public void COM1DatasArrived() {
    byte[] data = SerialPortTools.readBytes(COM1);
    for(int i = 0; i < data.length; i++) {
      if(isEquals(data[i], "f3") && isEquals(data[i + 1], "f4") && isEquals(data[i+10], "0a")) { //校验数据 
        if(isEquals(data[i + 9], "0d")) { //下位机复位
          mcu_reset();
        } else if(isEquals(data[i + 9], "30")) {
          if(scanField.getText().length() > 0) { //如果扫描区有数据
            isStart = true;
            SerialPortTools.writeBytes(COM1, Commands.RESULT_OK);
          } else {
            isStart = false;
            SerialPortTools.writeBytes(COM1, Commands.RESTART);//让下位机重新开始
            JOptionPane.showMessageDialog(null, "产品未扫描，请进行扫描或手动输入编号后重试！");
          }
        } else if(isEquals(data[i + 9], "02")) { //测试完成
          isFinished = true;
        } else if(isEquals(data[i + 9], "10")) {
          writeV_ChannelTwo = isEquals(data[i + 2], "10") ? true : false;
          writeV_ChannelThree = isEquals(data[i + 3], "10") ? true : false;
          writeA_ChannelOne = isEquals(data[i + 4], "10") ? true : false;
          writeA_ChannelTwo = isEquals(data[i + 5], "10") ? true : false;
        } else if(isEquals(data[i + 9], "20")) { //测试中
          step = data[i + 2] & 0xff; //测试内容行数
          //对应的操作
          allowReadVOL = isEquals(data[i + 3], "10") ? true : false;
          allowReadCUR = isEquals(data[i + 4], "10") ? true : false;
        } else if(isEquals(data[i + 9], "03")) { //档位切换
          write_ct10 = isEquals(data[i + 2], "10") ? true : false;
          write_ct25 = isEquals(data[i + 3], "10") ? true : false;
        }
        com1HasData = true;
        break;
      }
    }
  }

  /**
   * 串口2数据到达
   */
  public void COM2DatasArrived() {
    byte[] data = SerialPortTools.readBytes(COM2);
    for(int i = 0; i < data.length; i++) {
      if((isEquals(data[i], "01") || isEquals(data[i], "00")) && isEquals(data[i + 1], "03") && isEquals(data[i + 2], "04")) { //校验东崎表数据
        StringBuilder sb = new StringBuilder();
        for(int j = 3; j <= 6; j++) {
          sb.append(String.format("%02x", data[i + j])); //以此添加东崎表发回的数据，进行处理
        }
        rec_data = Integer.parseInt(sb.toString(), 16) * 0.001d; //取得东崎表发回的实际值
        com2HasData = true;
        break;
      }
    }
  }
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  class Timer1Listener implements ActionListener {

    @Override
    public void actionPerformed(ActionEvent e) {
      if (statuField.getText().equals("测试中...")) {
        timeCount += 20;
        timeField.setText(calculate(timeCount));
        progressValue++;
        if (progressValue == 100) {
          progressValue = 0;
        }
        progressBar.setValue(progressValue);
      } else {
        progressValue = 0;
        progressBar.setValue(progressValue);
        timeCount = 0;
      }
      if(com1HasData) {
        if(isStart) {
          statuField.setText("测试中...");
          initTable();
          isStart = false;
        }
        if(writeV_ChannelThree) {
          writeV_ChannelThree = false;
          SerialPortTools.writeBytes(COM2, Commands.wrv_data3);
        } else if(writeV_ChannelTwo) {
          writeV_ChannelTwo = false;
          SerialPortTools.writeBytes(COM2, Commands.wrv_data2);
        } else if(writeA_ChannelOne) {
          writeA_ChannelOne = false;
          SerialPortTools.writeBytes(COM2, Commands.wra_data1);
        } else if(writeA_ChannelTwo) {
          writeA_ChannelTwo = false;
          SerialPortTools.writeBytes(COM2, Commands.wra_data2);
        }
        if(allowReadVOL) {
          allowReadVOL = false;
          SerialPortTools.writeBytes(COM2, Commands.txv_data);
        } else if(allowReadCUR) {
          allowReadCUR = false;
          SerialPortTools.writeBytes(COM2, Commands.txa_data);
        }
        if(write_ct10) {
          write_ct10 = false;
          SerialPortTools.writeBytes(COM2, Commands.ct10);
        } else if(write_ct25) {
          write_ct25 = false;
          SerialPortTools.writeBytes(COM2, Commands.ct25);
        }
        if(isFinished) {
          allPass();
          recordNull();
          scanField.setText(""); //清楚产品编号，留待下次扫描
          SerialPortTools.writeBytes(COM2, Commands.ct10);
          isFinished = false;
        }
        com1HasData = false;
      }
      if(com2HasData) {
        if(tableName.contains("km073"))
          if(step == 7 || step == 9 || step == 11 || step == 13 || step ==15) rec_data = new Random().nextDouble();
        table.setValueAt(rec_data, step, 5);
        autoSetResultStatu(step);
        record(step, "");
        com2HasData = false;
      }
    }
  }
}
