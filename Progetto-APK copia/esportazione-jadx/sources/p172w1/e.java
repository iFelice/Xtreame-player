package p172w1;

import Z3.C;
import android.text.Layout;
import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import p000a.r;
import p117p0.AbstractC3170h;
import p117p0.InterfaceC3172j;
import p117p0.M;
import p117p0.x;
import p126q1.d;
import p126q1.f;
import p126q1.l;
import p126q1.m;
import p148t.a;
import p190y4.k;
import z4.AbstractC3238b;
import z4.L;
import z4.j0;
import z4.n0;
import z4.q0;
import z4.r0;

/* JADX INFO: loaded from: classes.dex */
public final class e implements m {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final Pattern f30936H = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final Pattern f30937I = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Pattern f30938J = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Pattern f30939K = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Pattern f30940L = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Pattern f30941M = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Pattern f30942N = Pattern.compile("^(\\d+) (\\d+)$");

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final d f30943O = new d(30.0f, 1, 1);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final XmlPullParserFactory f30944G;

    public e() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.f30944G = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e8) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e8);
        }
    }

    public static g d(g gVar) {
        return gVar == null ? new g() : gVar;
    }

    public static boolean e(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    public static Layout.Alignment f(String str) {
        String strH0 = k.h0(str);
        strH0.getClass();
        switch (strH0) {
            case "center":
                return Layout.Alignment.ALIGN_CENTER;
            case "end":
            case "right":
                return Layout.Alignment.ALIGN_OPPOSITE;
            case "left":
            case "start":
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    public static int h(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return 15;
        }
        Matcher matcher = f30942N.matcher(attributeValue);
        if (!matcher.matches()) {
            x.f("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
        boolean z7 = true;
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i8 = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            int i9 = Integer.parseInt(strGroup2);
            if (i8 == 0 || i9 == 0) {
                z7 = false;
            }
            H1.c("Invalid cell resolution " + i8 + " " + i9, z7);
            return i9;
        } catch (NumberFormatException unused) {
            x.f("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
    }

    public static void i(String str, g gVar) throws f {
        Matcher matcher;
        String str2 = M.f28050a;
        String[] strArrSplit = str.split("\\s+", -1);
        int length = strArrSplit.length;
        Pattern pattern = f30938J;
        if (length == 1) {
            matcher = pattern.matcher(str);
        } else {
            if (strArrSplit.length != 2) {
                throw new f(r.h(new StringBuilder("Invalid number of entries for fontSize: "), strArrSplit.length, "."));
            }
            matcher = pattern.matcher(strArrSplit[1]);
            x.f("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new f(r.g("Invalid expression for fontSize: '", str, "'."));
        }
        String strGroup = matcher.group(3);
        strGroup.getClass();
        strGroup.hashCode();
        switch (strGroup) {
            case "%":
                gVar.f30964j = 3;
                break;
            case "em":
                gVar.f30964j = 2;
                break;
            case "px":
                gVar.f30964j = 1;
                break;
            default:
                throw new f(r.g("Invalid unit for fontSize: '", strGroup, "'."));
        }
        String strGroup2 = matcher.group(1);
        strGroup2.getClass();
        gVar.f30965k = Float.parseFloat(strGroup2);
    }

    public static d j(XmlPullParser xmlPullParser) {
        float f8;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i8 = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String str = M.f28050a;
            String[] strArrSplit = attributeValue2.split(" ", -1);
            H1.c("frameRateMultiplier doesn't have 2 parts", strArrSplit.length == 2);
            f8 = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
        } else {
            f8 = 1.0f;
        }
        d dVar = f30943O;
        int i9 = dVar.f30934b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i9 = Integer.parseInt(attributeValue3);
        }
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        return new d(i8 * f8, i9, attributeValue4 != null ? Integer.parseInt(attributeValue4) : dVar.f30935c);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0218  */
    /* JADX WARN: Code duplicated, block: B:82:0x01cd  */
    public static void k(XmlPullParser xmlPullParser, HashMap map, int i8, N.r rVar, HashMap map2, HashMap map3) throws XmlPullParserException, IOException {
        String strB;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        int i9;
        int i10;
        f fVar;
        float f13;
        float f14;
        String strB2;
        g gVar;
        String strB3;
        g gVar2;
        String[] strArrSplit;
        do {
            xmlPullParser.next();
            if (C.f(xmlPullParser, "style")) {
                String strB4 = C.b(xmlPullParser, "style");
                g gVarM = m(xmlPullParser, new g());
                if (strB4 != null) {
                    String strTrim = strB4.trim();
                    if (strTrim.isEmpty()) {
                        strArrSplit = new String[0];
                    } else {
                        String str = M.f28050a;
                        strArrSplit = strTrim.split("\\s+", -1);
                    }
                    for (String str2 : strArrSplit) {
                        gVarM.a((g) map.get(str2));
                    }
                }
                String str3 = gVarM.f30966l;
                if (str3 != null) {
                    map.put(str3, gVarM);
                }
            } else if (C.f(xmlPullParser, "region")) {
                String strB5 = C.b(xmlPullParser, "id");
                if (strB5 != null) {
                    String strB6 = C.b(xmlPullParser, "origin");
                    if (strB6 == null && (strB3 = C.b(xmlPullParser, "style")) != null && (gVar2 = (g) map.get(strB3)) != null) {
                        strB6 = gVar2.f30974t;
                    }
                    Pattern pattern = f30941M;
                    Pattern pattern2 = f30940L;
                    if (strB6 != null) {
                        Matcher matcher = pattern2.matcher(strB6);
                        Matcher matcher2 = pattern.matcher(strB6);
                        if (matcher.matches()) {
                            try {
                                String strGroup = matcher.group(1);
                                strGroup.getClass();
                                f9 = Float.parseFloat(strGroup) / 100.0f;
                                String strGroup2 = matcher.group(2);
                                strGroup2.getClass();
                                f8 = Float.parseFloat(strGroup2) / 100.0f;
                            } catch (NumberFormatException unused) {
                                x.f("TtmlParser", "Ignoring region with malformed origin: ".concat(strB6));
                            }
                        } else if (!matcher2.matches()) {
                            x.f("TtmlParser", "Ignoring region with unsupported origin: ".concat(strB6));
                        } else if (rVar == null) {
                            x.f("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strB6));
                        } else {
                            try {
                                String strGroup3 = matcher2.group(1);
                                strGroup3.getClass();
                                int i11 = Integer.parseInt(strGroup3);
                                String strGroup4 = matcher2.group(2);
                                strGroup4.getClass();
                                int i12 = Integer.parseInt(strGroup4);
                                float f15 = i11 / rVar.f4919H;
                                f8 = i12 / rVar.f4920I;
                                f9 = f15;
                            } catch (NumberFormatException unused2) {
                                x.f("TtmlParser", "Ignoring region with malformed origin: ".concat(strB6));
                            }
                        }
                        fVar = null;
                    } else {
                        f8 = 0.0f;
                        f9 = 0.0f;
                    }
                    String strB7 = C.b(xmlPullParser, "extent");
                    if (strB7 == null && (strB2 = C.b(xmlPullParser, "style")) != null && (gVar = (g) map.get(strB2)) != null) {
                        strB7 = gVar.f30975u;
                    }
                    if (strB7 != null) {
                        Matcher matcher3 = pattern2.matcher(strB7);
                        Matcher matcher4 = pattern.matcher(strB7);
                        if (matcher3.matches()) {
                            try {
                                String strGroup5 = matcher3.group(1);
                                strGroup5.getClass();
                                f13 = Float.parseFloat(strGroup5) / 100.0f;
                                String strGroup6 = matcher3.group(2);
                                strGroup6.getClass();
                                f14 = Float.parseFloat(strGroup6) / 100.0f;
                            } catch (NumberFormatException unused3) {
                                U2.w("Ignoring region with malformed extent: ", strB6, "TtmlParser");
                                fVar = null;
                            }
                        } else {
                            if (!matcher4.matches()) {
                                U2.w("Ignoring region with unsupported extent: ", strB6, "TtmlParser");
                            } else if (rVar == null) {
                                U2.w("Ignoring region with missing tts:extent: ", strB6, "TtmlParser");
                            } else {
                                try {
                                    String strGroup7 = matcher4.group(1);
                                    strGroup7.getClass();
                                    int i13 = Integer.parseInt(strGroup7);
                                    String strGroup8 = matcher4.group(2);
                                    strGroup8.getClass();
                                    int i14 = Integer.parseInt(strGroup8);
                                    float f16 = i13 / rVar.f4919H;
                                    f14 = i14 / rVar.f4920I;
                                    f13 = f16;
                                } catch (NumberFormatException unused4) {
                                    U2.w("Ignoring region with malformed extent: ", strB6, "TtmlParser");
                                    fVar = null;
                                }
                            }
                            fVar = null;
                        }
                        f11 = f14;
                        f10 = f13;
                    } else {
                        f10 = 1.0f;
                        f11 = 1.0f;
                    }
                    String strB8 = C.b(xmlPullParser, "displayAlign");
                    if (strB8 != null) {
                        String strH0 = k.h0(strB8);
                        strH0.getClass();
                        if (strH0.equals("center")) {
                            f12 = (f11 / 2.0f) + f8;
                            i9 = 1;
                        } else if (strH0.equals("after")) {
                            f12 = f8 + f11;
                            i9 = 2;
                        } else {
                            f12 = f8;
                            i9 = 0;
                        }
                    } else {
                        f12 = f8;
                        i9 = 0;
                    }
                    float f17 = 1.0f / i8;
                    String strB9 = C.b(xmlPullParser, "writingMode");
                    if (strB9 != null) {
                        String strH1 = k.h0(strB9);
                        strH1.getClass();
                        strH1.hashCode();
                        switch (strH1) {
                            case "tb":
                            case "tblr":
                                i10 = 2;
                                break;
                            case "tbrl":
                                i10 = 1;
                                break;
                            default:
                                i10 = Integer.MIN_VALUE;
                                break;
                        }
                    } else {
                        i10 = Integer.MIN_VALUE;
                    }
                    fVar = new f(strB5, f9, f12, 0, i9, f10, f11, 1, f17, i10);
                } else {
                    fVar = null;
                }
                if (fVar != null) {
                    map2.put(fVar.f30945a, fVar);
                }
            } else if (C.f(xmlPullParser, "metadata")) {
                do {
                    xmlPullParser.next();
                    if (C.f(xmlPullParser, "image") && (strB = C.b(xmlPullParser, "id")) != null) {
                        map3.put(strB, xmlPullParser.nextText());
                    }
                } while (!C.c(xmlPullParser, "metadata"));
            }
        } while (!C.c(xmlPullParser, "head"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:6:0x0039  */
    /* JADX WARN: Code duplicated, block: B:71:0x0105  */
    public static c l(XmlPullParser xmlPullParser, c cVar, HashMap map, d dVar) throws f {
        long j8;
        long j9;
        String[] strArrSplit;
        int attributeCount = xmlPullParser.getAttributeCount();
        g gVarM = m(xmlPullParser, null);
        String[] strArr = null;
        String strSubstring = null;
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        long jN = -9223372036854775807L;
        long jN2 = -9223372036854775807L;
        long jN3 = -9223372036854775807L;
        for (int i8 = 0; i8 < attributeCount; i8++) {
            String attributeName = xmlPullParser.getAttributeName(i8);
            String attributeValue = xmlPullParser.getAttributeValue(i8);
            attributeName.getClass();
            switch (attributeName) {
                case "region":
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        break;
                    } else {
                        break;
                    }
                    break;
                case "dur":
                    jN3 = n(attributeValue, dVar);
                    break;
                case "end":
                    jN2 = n(attributeValue, dVar);
                    break;
                case "begin":
                    jN = n(attributeValue, dVar);
                    break;
                case "style":
                    String strTrim = attributeValue.trim();
                    if (strTrim.isEmpty()) {
                        strArrSplit = new String[0];
                    } else {
                        String str2 = M.f28050a;
                        strArrSplit = strTrim.split("\\s+", -1);
                    }
                    if (strArrSplit.length > 0) {
                        strArr = strArrSplit;
                        break;
                    } else {
                        break;
                    }
                    break;
                case "backgroundImage":
                    if (attributeValue.startsWith(MqttTopic.MULTI_LEVEL_WILDCARD)) {
                        strSubstring = attributeValue.substring(1);
                        break;
                    }
                default:
                    break;
            }
        }
        if (cVar != null) {
            long j10 = cVar.f30923d;
            j8 = -9223372036854775807L;
            if (j10 != -9223372036854775807L) {
                if (jN != -9223372036854775807L) {
                    jN += j10;
                }
                if (jN2 != -9223372036854775807L) {
                    jN2 += j10;
                }
            }
        } else {
            j8 = -9223372036854775807L;
        }
        if (jN2 != j8) {
            j9 = jN2;
        } else if (jN3 != j8) {
            j9 = jN + jN3;
        } else if (cVar != null) {
            long j11 = cVar.f30924e;
            if (j11 != j8) {
                j9 = j11;
            } else {
                j9 = jN2;
            }
        } else {
            j9 = jN2;
        }
        return new c(xmlPullParser.getName(), null, jN, j9, gVarM, strArr, str, strSubstring, cVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:117:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:153:0x025d  */
    /* JADX WARN: Code duplicated, block: B:155:0x0262  */
    /* JADX WARN: Code duplicated, block: B:161:0x0272  */
    /* JADX WARN: Code duplicated, block: B:163:0x027a  */
    /* JADX WARN: Code duplicated, block: B:164:0x027c  */
    /* JADX WARN: Code duplicated, block: B:166:0x0282  */
    /* JADX WARN: Code duplicated, block: B:168:0x0285 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:169:0x0287  */
    /* JADX WARN: Code duplicated, block: B:170:0x0289  */
    /* JADX WARN: Code duplicated, block: B:171:0x028b  */
    /* JADX WARN: Code duplicated, block: B:6:0x0024  */
    public static g m(XmlPullParser xmlPullParser, g gVar) {
        byte b8;
        String str;
        int iHashCode;
        int i8;
        b bVar;
        int attributeCount = xmlPullParser.getAttributeCount();
        g gVarD = gVar;
        for (int i9 = 0; i9 < attributeCount; i9++) {
            String attributeValue = xmlPullParser.getAttributeValue(i9);
            String attributeName = xmlPullParser.getAttributeName(i9);
            attributeName.getClass();
            byte b9 = 5;
            int i10 = -1;
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals("fontStyle")) {
                        b9 = 0;
                    } else {
                        b9 = -1;
                    }
                    break;
                case -1289044182:
                    if (attributeName.equals("extent")) {
                        b9 = 1;
                    } else {
                        b9 = -1;
                    }
                    break;
                case -1224696685:
                    if (attributeName.equals("fontFamily")) {
                        b9 = 2;
                    } else {
                        b9 = -1;
                    }
                    break;
                case -1065511464:
                    if (attributeName.equals("textAlign")) {
                        b9 = 3;
                    } else {
                        b9 = -1;
                    }
                    break;
                case -1008619738:
                    if (attributeName.equals("origin")) {
                        b9 = 4;
                    } else {
                        b9 = -1;
                    }
                    break;
                case -879295043:
                    if (!attributeName.equals("textDecoration")) {
                        b9 = -1;
                    }
                    break;
                case -734428249:
                    if (attributeName.equals("fontWeight")) {
                        b9 = 6;
                    } else {
                        b9 = -1;
                    }
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        b9 = 7;
                    } else {
                        b9 = -1;
                    }
                    break;
                case 3511770:
                    if (attributeName.equals("ruby")) {
                        b9 = 8;
                    } else {
                        b9 = -1;
                    }
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        b9 = 9;
                    } else {
                        b9 = -1;
                    }
                    break;
                case 109403361:
                    if (attributeName.equals("shear")) {
                        b9 = 10;
                    } else {
                        b9 = -1;
                    }
                    break;
                case 110138194:
                    if (attributeName.equals("textCombine")) {
                        b9 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                    } else {
                        b9 = -1;
                    }
                    break;
                case 365601008:
                    if (attributeName.equals("fontSize")) {
                        b9 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                    } else {
                        b9 = -1;
                    }
                    break;
                case 921125321:
                    if (attributeName.equals("textEmphasis")) {
                        b9 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                    } else {
                        b9 = -1;
                    }
                    break;
                case 1115953443:
                    if (attributeName.equals("rubyPosition")) {
                        b9 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                    } else {
                        b9 = -1;
                    }
                    break;
                case 1287124693:
                    if (attributeName.equals("backgroundColor")) {
                        b9 = 15;
                    } else {
                        b9 = -1;
                    }
                    break;
                case 1754920356:
                    if (attributeName.equals("multiRowAlign")) {
                        b9 = 16;
                    } else {
                        b9 = -1;
                    }
                    break;
                default:
                    b9 = -1;
                    break;
            }
            switch (b9) {
                case 0:
                    gVarD = d(gVarD);
                    gVarD.f30963i = "italic".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    break;
                case 1:
                    gVarD = d(gVarD);
                    gVarD.f30975u = attributeValue;
                    break;
                case 2:
                    gVarD = d(gVarD);
                    gVarD.f30955a = attributeValue;
                    break;
                case 3:
                    gVarD = d(gVarD);
                    gVarD.f30969o = f(attributeValue);
                    break;
                case 4:
                    gVarD = d(gVarD);
                    gVarD.f30974t = attributeValue;
                    break;
                case 5:
                    String strH0 = k.h0(attributeValue);
                    strH0.getClass();
                    strH0.hashCode();
                    switch (strH0) {
                        case "nounderline":
                            gVarD = d(gVarD);
                            gVarD.f30961g = 0;
                            break;
                        case "underline":
                            gVarD = d(gVarD);
                            gVarD.f30961g = 1;
                            break;
                        case "nolinethrough":
                            gVarD = d(gVarD);
                            gVarD.f30960f = 0;
                            break;
                        case "linethrough":
                            gVarD = d(gVarD);
                            gVarD.f30960f = 1;
                            break;
                    }
                    break;
                case 6:
                    gVarD = d(gVarD);
                    gVarD.f30962h = "bold".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    break;
                case 7:
                    if ("style".equals(xmlPullParser.getName())) {
                        gVarD = d(gVarD);
                        gVarD.f30966l = attributeValue;
                    }
                    break;
                case 8:
                    String strH1 = k.h0(attributeValue);
                    strH1.getClass();
                    strH1.hashCode();
                    switch (strH1) {
                        case "baseContainer":
                        case "base":
                            gVarD = d(gVarD);
                            gVarD.f30967m = 2;
                            break;
                        case "container":
                            gVarD = d(gVarD);
                            gVarD.f30967m = 1;
                            break;
                        case "delimiter":
                            gVarD = d(gVarD);
                            gVarD.f30967m = 4;
                            break;
                        case "textContainer":
                        case "text":
                            gVarD = d(gVarD);
                            gVarD.f30967m = 3;
                            break;
                    }
                    break;
                case 9:
                    gVarD = d(gVarD);
                    try {
                        gVarD.f30956b = AbstractC3170h.a(attributeValue, false);
                        gVarD.f30957c = true;
                    } catch (IllegalArgumentException unused) {
                        U2.w("Failed parsing color value: ", attributeValue, "TtmlParser");
                    }
                    break;
                case 10:
                    g gVarD2 = d(gVarD);
                    Matcher matcher = f30939K.matcher(attributeValue);
                    float fMin = Float.MAX_VALUE;
                    if (matcher.matches()) {
                        try {
                            String strGroup = matcher.group(1);
                            strGroup.getClass();
                            fMin = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup)));
                        } catch (NumberFormatException e8) {
                            x.g("TtmlParser", "Failed to parse shear: " + attributeValue, e8);
                        }
                    } else {
                        U2.w("Invalid value for shear: ", attributeValue, "TtmlParser");
                    }
                    gVarD2.f30973s = fMin;
                    gVarD = gVarD2;
                    break;
                case 11:
                    String strH2 = k.h0(attributeValue);
                    strH2.getClass();
                    if (strH2.equals("all")) {
                        gVarD = d(gVarD);
                        gVarD.f30971q = 1;
                    } else if (strH2.equals("none")) {
                        gVarD = d(gVarD);
                        gVarD.f30971q = 0;
                    }
                    break;
                case 12:
                    try {
                        gVarD = d(gVarD);
                        i(attributeValue, gVarD);
                    } catch (f unused2) {
                        U2.w("Failed parsing fontSize value: ", attributeValue, "TtmlParser");
                    }
                    break;
                case 13:
                    gVarD = d(gVarD);
                    Pattern pattern = b.f30912d;
                    b bVar2 = null;
                    if (attributeValue != null) {
                        String strH3 = k.h0(attributeValue.trim());
                        if (!strH3.isEmpty()) {
                            String[] strArrSplit = TextUtils.split(strH3, b.f30912d);
                            int length = strArrSplit.length;
                            L lQ = length != 0 ? length != 1 ? L.q(strArrSplit.length, (Object[]) strArrSplit.clone()) : new r0(strArrSplit[0]) : j0.f31869P;
                            String str2 = (String) k.F(q0.A(b.f30916h, lQ), "outside");
                            int iHashCode2 = str2.hashCode();
                            if (iHashCode2 != -1392885889) {
                                if (iHashCode2 != -1106037339) {
                                    if (iHashCode2 == 92734940 && str2.equals("after")) {
                                        b8 = 0;
                                    } else {
                                        b8 = -1;
                                    }
                                } else if (str2.equals("outside")) {
                                    b8 = 1;
                                } else {
                                    b8 = -1;
                                }
                            } else if (str2.equals("before")) {
                                b8 = 2;
                            } else {
                                b8 = -1;
                            }
                            int i11 = b8 != 0 ? b8 != 1 ? 1 : -2 : 2;
                            n0 n0VarA = q0.A(b.f30913e, lQ);
                            if (n0VarA.isEmpty()) {
                                n0 n0VarA2 = q0.A(b.f30915g, lQ);
                                n0 n0VarA3 = q0.A(b.f30914f, lQ);
                                if (n0VarA2.isEmpty() && n0VarA3.isEmpty()) {
                                    bVar = new b(-1, 0, i11);
                                } else {
                                    String str3 = (String) k.F(n0VarA2, "filled");
                                    int iHashCode3 = str3.hashCode();
                                    if (iHashCode3 != -1274499742) {
                                        int i12 = (iHashCode3 == 3417674 && str3.equals("open")) ? 2 : 1;
                                        str = (String) k.F(n0VarA3, "circle");
                                        iHashCode = str.hashCode();
                                        if (iHashCode != -1360216880) {
                                            if (iHashCode != -905816648) {
                                                if (iHashCode == 99657 && str.equals("dot")) {
                                                    i10 = 0;
                                                }
                                            } else if (str.equals("sesame")) {
                                                i10 = 1;
                                            }
                                        } else if (str.equals("circle")) {
                                            i10 = 2;
                                        }
                                        if (i10 != 0) {
                                            i8 = 2;
                                        } else if (i10 != 1) {
                                            i8 = 1;
                                        } else {
                                            i8 = 3;
                                        }
                                        bVar = new b(i8, i12, i11);
                                    } else {
                                        str3.equals("filled");
                                    }
                                    str = (String) k.F(n0VarA3, "circle");
                                    iHashCode = str.hashCode();
                                    if (iHashCode != -1360216880) {
                                        if (iHashCode != -905816648) {
                                            if (iHashCode == 99657) {
                                                i10 = 0;
                                            }
                                        } else if (str.equals("sesame")) {
                                            i10 = 1;
                                        }
                                    } else if (str.equals("circle")) {
                                        i10 = 2;
                                    }
                                    if (i10 != 0) {
                                        i8 = 2;
                                    } else if (i10 != 1) {
                                        i8 = 1;
                                    } else {
                                        i8 = 3;
                                    }
                                    bVar = new b(i8, i12, i11);
                                }
                            } else {
                                String str4 = (String) ((AbstractC3238b) n0VarA.iterator()).next();
                                int iHashCode4 = str4.hashCode();
                                if (iHashCode4 == 3005871) {
                                    str4.equals("auto");
                                } else if (iHashCode4 == 3387192 && str4.equals("none")) {
                                    i10 = 0;
                                }
                                bVar = new b(i10, 0, i11);
                            }
                            bVar2 = bVar;
                        }
                    }
                    gVarD.f30972r = bVar2;
                    break;
                case 14:
                    String strH4 = k.h0(attributeValue);
                    strH4.getClass();
                    if (strH4.equals("before")) {
                        gVarD = d(gVarD);
                        gVarD.f30968n = 1;
                    } else if (strH4.equals("after")) {
                        gVarD = d(gVarD);
                        gVarD.f30968n = 2;
                    }
                    break;
                case 15:
                    gVarD = d(gVarD);
                    try {
                        gVarD.f30958d = AbstractC3170h.a(attributeValue, false);
                        gVarD.f30959e = true;
                    } catch (IllegalArgumentException unused3) {
                        U2.w("Failed parsing background value: ", attributeValue, "TtmlParser");
                    }
                    break;
                case 16:
                    gVarD = d(gVarD);
                    gVarD.f30970p = f(attributeValue);
                    break;
            }
        }
        return gVarD;
    }

    public static long n(String str, d dVar) throws f {
        double d6;
        double d8;
        Matcher matcher = f30936H.matcher(str);
        if (matcher.matches()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            double d9 = Long.parseLong(strGroup) * 3600;
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            double d10 = d9 + (Long.parseLong(strGroup2) * 60);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            double d11 = d10 + Long.parseLong(strGroup3);
            String strGroup4 = matcher.group(4);
            double d12 = d11 + (strGroup4 != null ? Double.parseDouble(strGroup4) : 0.0d);
            String strGroup5 = matcher.group(5);
            double d13 = d12 + (strGroup5 != null ? Long.parseLong(strGroup5) / dVar.f30933a : 0.0d);
            String strGroup6 = matcher.group(6);
            return (long) ((d13 + (strGroup6 != null ? (Long.parseLong(strGroup6) / ((double) dVar.f30934b)) / ((double) dVar.f30933a) : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = f30937I.matcher(str);
        if (!matcher2.matches()) {
            throw new f(a.c("Malformed time expression: ", str));
        }
        String strGroup7 = matcher2.group(1);
        strGroup7.getClass();
        double d14 = Double.parseDouble(strGroup7);
        String strGroup8 = matcher2.group(2);
        strGroup8.getClass();
        strGroup8.hashCode();
        switch (strGroup8) {
            case "f":
                d6 = dVar.f30933a;
                d14 /= d6;
                return (long) (d14 * 1000000.0d);
            case "h":
                d8 = 3600.0d;
                break;
            case "m":
                d8 = 60.0d;
                break;
            case "t":
                d6 = dVar.f30935c;
                d14 /= d6;
                return (long) (d14 * 1000000.0d);
            case "ms":
                d6 = 1000.0d;
                d14 /= d6;
                return (long) (d14 * 1000000.0d);
            default:
                return (long) (d14 * 1000000.0d);
        }
        d14 *= d8;
        return (long) (d14 * 1000000.0d);
    }

    public static N.r o(XmlPullParser xmlPullParser) {
        String strB = C.b(xmlPullParser, "extent");
        if (strB == null) {
            return null;
        }
        Matcher matcher = f30941M.matcher(strB);
        if (!matcher.matches()) {
            x.f("TtmlParser", "Ignoring non-pixel tts extent: ".concat(strB));
            return null;
        }
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i8 = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            return new N.r(i8, Integer.parseInt(strGroup2), 3, 0);
        } catch (NumberFormatException unused) {
            x.f("TtmlParser", "Ignoring malformed tts extent: ".concat(strB));
            return null;
        }
    }

    @Override // p126q1.m
    public final void b(byte[] bArr, int i8, int i9, l lVar, InterfaceC3172j interfaceC3172j) {
        c.v(c(i8, bArr, i9), lVar, interfaceC3172j);
    }

    @Override // p126q1.m
    public final d c(int i8, byte[] bArr, int i9) {
        d dVar;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f30944G.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put(HttpUrl.FRAGMENT_ENCODE_SET, new f(HttpUrl.FRAGMENT_ENCODE_SET, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
            N.r rVarO = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, i8, i9), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            d dVarJ = f30943O;
            int iH = 15;
            h hVar = null;
            int i10 = 0;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                c cVar = (c) arrayDeque.peek();
                if (i10 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            dVarJ = j(xmlPullParserNewPullParser);
                            iH = h(xmlPullParserNewPullParser);
                            rVarO = o(xmlPullParserNewPullParser);
                        }
                        N.r rVar = rVarO;
                        d dVar2 = dVarJ;
                        int i11 = iH;
                        if (e(name)) {
                            if ("head".equals(name)) {
                                dVar = dVar2;
                                k(xmlPullParserNewPullParser, map, i11, rVar, map2, map3);
                            } else {
                                dVar = dVar2;
                                try {
                                    c cVarL = l(xmlPullParserNewPullParser, cVar, map2, dVar);
                                    arrayDeque.push(cVarL);
                                    if (cVar != null) {
                                        if (cVar.f30932m == null) {
                                            cVar.f30932m = new ArrayList();
                                        }
                                        cVar.f30932m.add(cVarL);
                                    }
                                } catch (f e8) {
                                    x.g("TtmlParser", "Suppressing parser error", e8);
                                    i10++;
                                }
                            }
                            dVarJ = dVar;
                        } else {
                            x.e("TtmlParser", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            i10++;
                            dVarJ = dVar2;
                        }
                        rVarO = rVar;
                        iH = i11;
                    } else if (eventType == 4) {
                        cVar.getClass();
                        c cVarA = c.a(xmlPullParserNewPullParser.getText());
                        if (cVar.f30932m == null) {
                            cVar.f30932m = new ArrayList();
                        }
                        cVar.f30932m.add(cVarA);
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals("tt")) {
                            c cVar2 = (c) arrayDeque.peek();
                            cVar2.getClass();
                            hVar = new h(cVar2, map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i10++;
                } else if (eventType == 3) {
                    i10--;
                }
                xmlPullParserNewPullParser.next();
            }
            hVar.getClass();
            return hVar;
        } catch (IOException e9) {
            throw new IllegalStateException("Unexpected error when reading input.", e9);
        } catch (XmlPullParserException e10) {
            throw new IllegalStateException("Unable to decode source", e10);
        }
    }

    @Override // p126q1.m
    public final int g() {
        return 1;
    }

    @Override // p126q1.m
    public final /* synthetic */ void a() {
    }
}
