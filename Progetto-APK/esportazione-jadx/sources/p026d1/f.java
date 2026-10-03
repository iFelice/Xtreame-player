package p026d1;

import Z3.C;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import p046f6.c;
import p094m0.P;
import z4.E;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f24604a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f24605b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f24606c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    public static c a(String str) throws XmlPullParserException, IOException {
        long j8;
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.next();
        if (!C.f(xmlPullParserNewPullParser, "x:xmpmeta")) {
            throw P.a("Couldn't find xmp metadata", null);
        }
        F f8 = H.f31804H;
        d0 d0VarB = d0.f31844K;
        long j9 = -9223372036854775807L;
        loop0: do {
            xmlPullParserNewPullParser.next();
            if (C.f(xmlPullParserNewPullParser, "rdf:Description")) {
                String[] strArr = f24604a;
                int i8 = 0;
                for (int i9 = 0; i9 < 4; i9++) {
                    String strB = C.b(xmlPullParserNewPullParser, strArr[i9]);
                    if (strB != null) {
                        if (Integer.parseInt(strB) != 1) {
                            break loop0;
                        }
                        String[] strArr2 = f24605b;
                        int i10 = 0;
                        while (true) {
                            if (i10 < 4) {
                                String strB2 = C.b(xmlPullParserNewPullParser, strArr2[i10]);
                                if (strB2 != null) {
                                    j8 = Long.parseLong(strB2);
                                    if (j8 != -1) {
                                        break;
                                    }
                                    break;
                                }
                                i10++;
                            }
                            j8 = -9223372036854775807L;
                            break;
                        }
                        String[] strArr3 = f24606c;
                        while (true) {
                            if (i8 >= 2) {
                                F f9 = H.f31804H;
                                d0VarB = d0.f31844K;
                                break;
                            }
                            String strB3 = C.b(xmlPullParserNewPullParser, strArr3[i8]);
                            if (strB3 != null) {
                                d0VarB = H.y(new b("image/jpeg", 0L, 0L), new b("video/mp4", Long.parseLong(strB3), 0L));
                                break;
                            }
                            i8++;
                        }
                        j9 = j8;
                    }
                }
                return null;
            }
            if (C.f(xmlPullParserNewPullParser, "Container:Directory")) {
                d0VarB = b(xmlPullParserNewPullParser, "Container", "Item");
            } else if (C.f(xmlPullParserNewPullParser, "GContainer:Directory")) {
                d0VarB = b(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
            }
        } while (!C.c(xmlPullParserNewPullParser, "x:xmpmeta"));
        if (d0VarB.isEmpty()) {
            return null;
        }
        return new c(j9, d0VarB);
    }

    public static d0 b(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        E eQ = H.q();
        String strConcat = str.concat(":Item");
        String strConcat2 = str.concat(":Directory");
        do {
            xmlPullParser.next();
            if (C.f(xmlPullParser, strConcat)) {
                String strConcat3 = str2.concat(":Mime");
                String strConcat4 = str2.concat(":Semantic");
                String strConcat5 = str2.concat(":Length");
                String strConcat6 = str2.concat(":Padding");
                String strB = C.b(xmlPullParser, strConcat3);
                String strB2 = C.b(xmlPullParser, strConcat4);
                String strB3 = C.b(xmlPullParser, strConcat5);
                String strB4 = C.b(xmlPullParser, strConcat6);
                if (strB == null || strB2 == null) {
                    return d0.f31844K;
                }
                eQ.g0(new b(strB, strB3 != null ? Long.parseLong(strB3) : 0L, strB4 != null ? Long.parseLong(strB4) : 0L));
            }
        } while (!C.c(xmlPullParser, strConcat2));
        return eQ.m0();
    }
}
