package d7;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Xml;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import pe.hf.black20.util.OTRApp;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f24682a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f24683b = 50;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static SharedPreferences f24684c;

    static {
        new SimpleDateFormat("yyyyMMddHHmmss Z");
    }

    public static I2.c a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("pe.hf.black20", 0);
        f24684c = sharedPreferences;
        f24682a = Integer.parseInt(sharedPreferences.getString("epg_file_size", "0"));
        if (f24684c.contains("max_epg_file_size")) {
            f24683b = Integer.parseInt(f24684c.getString("max_epg_file_size", "50"));
        }
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        try {
            xmlPullParserNewPullParser.setInput(new FileInputStream(new File(String.valueOf(OTRApp.f29417G.getFilesDir()).concat("/epg.xml"))), null);
            if (xmlPullParserNewPullParser.next() == 2) {
                "tv".equals(xmlPullParserNewPullParser.getName());
            }
        } catch (IOException | XmlPullParserException unused) {
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParserNewPullParser.next() != 1) {
            try {
                if (xmlPullParserNewPullParser.getEventType() == 2 && "programme".equalsIgnoreCase(xmlPullParserNewPullParser.getName())) {
                    arrayList.add(b(xmlPullParserNewPullParser));
                }
            } catch (IOException | XmlPullParserException unused2) {
            }
        }
        I2.c cVar = new I2.c();
        cVar.f4008G = arrayList;
        return cVar;
    }

    public static g b(XmlPullParser xmlPullParser) {
        String str;
        String strNextText = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        for (int i8 = 0; i8 < xmlPullParser.getAttributeCount(); i8++) {
            try {
                String attributeName = xmlPullParser.getAttributeName(i8);
                String attributeValue = xmlPullParser.getAttributeValue(i8);
                if ("channel".equalsIgnoreCase(attributeName)) {
                    str2 = attributeValue;
                } else if ("start".equalsIgnoreCase(attributeName)) {
                    str3 = attributeValue;
                } else if ("stop".equalsIgnoreCase(attributeName)) {
                    str4 = attributeValue;
                }
            } catch (IOException | XmlPullParserException unused) {
                str = null;
            }
        }
        str = null;
        while (xmlPullParser.next() != 1) {
            try {
                String name = xmlPullParser.getName();
                if (xmlPullParser.getEventType() != 2) {
                    if ("programme".equalsIgnoreCase(name) && xmlPullParser.getEventType() == 3) {
                        break;
                    }
                } else if ("title".equalsIgnoreCase(xmlPullParser.getName())) {
                    strNextText = xmlPullParser.nextText();
                } else if ("desc".equalsIgnoreCase(name)) {
                    int i9 = f24682a;
                    int i10 = f24683b;
                    String strSubstring = HttpUrl.FRAGMENT_ENCODE_SET;
                    if (i9 <= i10) {
                        String strNextText2 = xmlPullParser.nextText();
                        if (!strNextText2.isEmpty()) {
                            strSubstring = strNextText2.length() > 101 ? strNextText2.substring(0, 100) : strNextText2;
                        }
                    }
                    str = strSubstring;
                }
            } catch (IOException | XmlPullParserException unused2) {
            }
        }
        g gVar = new g();
        gVar.f24677a = str3;
        gVar.f24678b = str4;
        gVar.f24679c = str2;
        gVar.f24680d = strNextText;
        gVar.f24681e = str;
        return gVar;
    }
}
