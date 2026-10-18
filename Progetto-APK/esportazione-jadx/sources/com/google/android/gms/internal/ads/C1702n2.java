package com.google.android.gms.internal.ads;

import android.text.Layout;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.n2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1702n2 implements W1 {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final Pattern f20050H = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final Pattern f20051I = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Pattern f20052J = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Pattern f20053K = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Pattern f20054L = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Pattern f20055M = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Pattern f20056N = Pattern.compile("^(\\d+) (\\d+)$");

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final p172w1.d f20057O = new p172w1.d(30.0f, 1, 1);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final XmlPullParserFactory f20058G;

    public C1702n2() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.f20058G = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e8) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00f5  */
    public static long b(String str, p172w1.d dVar) throws U1 {
        double d6;
        double d8;
        Matcher matcher = f20050H.matcher(str);
        byte b8 = 2;
        if (matcher.matches()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            long j8 = Long.parseLong(strGroup) * 3600;
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            long j9 = Long.parseLong(strGroup2) * 60;
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            double d9 = j8 + j9;
            double d10 = Long.parseLong(strGroup3);
            String strGroup4 = matcher.group(4);
            double d11 = 0.0d;
            double d12 = strGroup4 != null ? Double.parseDouble(strGroup4) : 0.0d;
            double d13 = d9 + d10;
            String strGroup5 = matcher.group(5);
            double d14 = strGroup5 != null ? Long.parseLong(strGroup5) / dVar.f30933a : 0.0d;
            double d15 = d13 + d12;
            String strGroup6 = matcher.group(6);
            if (strGroup6 != null) {
                d11 = (Long.parseLong(strGroup6) / ((double) dVar.f30934b)) / ((double) dVar.f30933a);
            }
            return (long) ((d15 + d14 + d11) * 1000000.0d);
        }
        Matcher matcher2 = f20051I.matcher(str);
        if (!matcher2.matches()) {
            throw new U1("Malformed time expression: ".concat(String.valueOf(str)));
        }
        String strGroup7 = matcher2.group(1);
        strGroup7.getClass();
        double d16 = Double.parseDouble(strGroup7);
        String strGroup8 = matcher2.group(2);
        strGroup8.getClass();
        int iHashCode = strGroup8.hashCode();
        if (iHashCode != 102) {
            if (iHashCode != 104) {
                if (iHashCode != 109) {
                    if (iHashCode != 3494) {
                        if (iHashCode != 115) {
                            if (iHashCode == 116 && strGroup8.equals("t")) {
                                b8 = 5;
                            } else {
                                b8 = -1;
                            }
                        } else if (!strGroup8.equals("s")) {
                            b8 = -1;
                        }
                    } else if (strGroup8.equals("ms")) {
                        b8 = 3;
                    } else {
                        b8 = -1;
                    }
                } else if (strGroup8.equals("m")) {
                    b8 = 1;
                } else {
                    b8 = -1;
                }
            } else if (strGroup8.equals("h")) {
                b8 = 0;
            } else {
                b8 = -1;
            }
        } else if (strGroup8.equals("f")) {
            b8 = 4;
        } else {
            b8 = -1;
        }
        if (b8 != 0) {
            if (b8 != 1) {
                if (b8 == 3) {
                    d8 = 1000.0d;
                } else if (b8 == 4) {
                    d8 = dVar.f30933a;
                } else if (b8 == 5) {
                    d8 = dVar.f30935c;
                }
                d16 /= d8;
            } else {
                d6 = 60.0d;
            }
            return (long) (d16 * 1000000.0d);
        }
        d6 = 3600.0d;
        d16 *= d6;
        return (long) (d16 * 1000000.0d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x0042  */
    public static Layout.Alignment c(String str) {
        byte b8;
        switch (p113o3.r.m(str)) {
            case "center":
                b8 = 4;
                break;
            case "end":
                b8 = 3;
                break;
            case "left":
                b8 = 0;
                break;
            case "right":
                b8 = 2;
                break;
            case "start":
                b8 = 1;
                break;
            default:
                b8 = -1;
                break;
        }
        if (b8 == 0 || b8 == 1) {
            return Layout.Alignment.ALIGN_NORMAL;
        }
        if (b8 == 2 || b8 == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        if (b8 != 4) {
            return null;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    public static C1806p2 e(C1806p2 c1806p2) {
        return c1806p2 == null ? new C1806p2() : c1806p2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:112:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:92:0x0194  */
    public static C1806p2 f(XmlPullParser xmlPullParser, C1806p2 c1806p2) {
        Matcher matcher;
        C1598l2 c1598l2;
        int i8;
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i9 = 0; i9 < attributeCount; i9++) {
            String attributeValue = xmlPullParser.getAttributeValue(i9);
            String attributeName = xmlPullParser.getAttributeName(i9);
            byte b8 = 5;
            int i10 = 3;
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals("fontStyle")) {
                        b8 = 6;
                    } else {
                        b8 = -1;
                    }
                    break;
                case -1224696685:
                    if (attributeName.equals("fontFamily")) {
                        b8 = 3;
                    } else {
                        b8 = -1;
                    }
                    break;
                case -1065511464:
                    if (attributeName.equals("textAlign")) {
                        b8 = 7;
                    } else {
                        b8 = -1;
                    }
                    break;
                case -879295043:
                    if (attributeName.equals("textDecoration")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                    } else {
                        b8 = -1;
                    }
                    break;
                case -734428249:
                    if (!attributeName.equals("fontWeight")) {
                        b8 = -1;
                    }
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        b8 = 0;
                    } else {
                        b8 = -1;
                    }
                    break;
                case 3511770:
                    if (attributeName.equals("ruby")) {
                        b8 = 10;
                    } else {
                        b8 = -1;
                    }
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        b8 = 2;
                    } else {
                        b8 = -1;
                    }
                    break;
                case 109403361:
                    if (attributeName.equals("shear")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                    } else {
                        b8 = -1;
                    }
                    break;
                case 110138194:
                    if (attributeName.equals("textCombine")) {
                        b8 = 9;
                    } else {
                        b8 = -1;
                    }
                    break;
                case 365601008:
                    if (attributeName.equals("fontSize")) {
                        b8 = 4;
                    } else {
                        b8 = -1;
                    }
                    break;
                case 921125321:
                    if (attributeName.equals("textEmphasis")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                    } else {
                        b8 = -1;
                    }
                    break;
                case 1115953443:
                    if (attributeName.equals("rubyPosition")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                    } else {
                        b8 = -1;
                    }
                    break;
                case 1287124693:
                    if (attributeName.equals("backgroundColor")) {
                        b8 = 1;
                    } else {
                        b8 = -1;
                    }
                    break;
                case 1754920356:
                    if (attributeName.equals("multiRowAlign")) {
                        b8 = 8;
                    } else {
                        b8 = -1;
                    }
                    break;
                default:
                    b8 = -1;
                    break;
            }
            switch (b8) {
                case 0:
                    if ("style".equals(xmlPullParser.getName())) {
                        c1806p2 = e(c1806p2);
                        c1806p2.f20409l = attributeValue;
                    }
                    break;
                case 1:
                    c1806p2 = e(c1806p2);
                    try {
                        c1806p2.f20401d = AbstractC0841Ml.a(attributeValue, false);
                        c1806p2.f20402e = true;
                    } catch (IllegalArgumentException unused) {
                        p000a.r.u(attributeValue, "Failed parsing background value: ", "TtmlParser");
                    }
                    break;
                case 2:
                    c1806p2 = e(c1806p2);
                    try {
                        c1806p2.f20399b = AbstractC0841Ml.a(attributeValue, false);
                        c1806p2.f20400c = true;
                    } catch (IllegalArgumentException unused2) {
                        p000a.r.u(attributeValue, "Failed parsing color value: ", "TtmlParser");
                    }
                    break;
                case 3:
                    c1806p2 = e(c1806p2);
                    c1806p2.f20398a = attributeValue;
                    break;
                case 4:
                    try {
                        c1806p2 = e(c1806p2);
                        int i11 = Et.f13234a;
                        String[] strArrSplit = attributeValue.split("\\s+", -1);
                        int length = strArrSplit.length;
                        Pattern pattern = f20052J;
                        if (length == 1) {
                            matcher = pattern.matcher(attributeValue);
                        } else {
                            if (length != 2) {
                                throw new U1("Invalid number of entries for fontSize: " + length + ".");
                            }
                            matcher = pattern.matcher(strArrSplit[1]);
                            Zo.f("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
                        }
                        if (!matcher.matches()) {
                            throw new U1("Invalid expression for fontSize: '" + attributeValue + "'.");
                        }
                        String strGroup = matcher.group(3);
                        strGroup.getClass();
                        strGroup.hashCode();
                        switch (strGroup) {
                            case "%":
                                c1806p2.f20407j = 3;
                                break;
                            case "em":
                                c1806p2.f20407j = 2;
                                break;
                            case "px":
                                c1806p2.f20407j = 1;
                                break;
                            default:
                                throw new U1("Invalid unit for fontSize: '" + strGroup + "'.");
                        }
                        String strGroup2 = matcher.group(1);
                        strGroup2.getClass();
                        c1806p2.f20408k = Float.parseFloat(strGroup2);
                    } catch (U1 unused3) {
                        p000a.r.u(attributeValue, "Failed parsing fontSize value: ", "TtmlParser");
                    }
                    break;
                case 5:
                    c1806p2 = e(c1806p2);
                    c1806p2.f20405h = "bold".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    break;
                case 6:
                    c1806p2 = e(c1806p2);
                    c1806p2.f20406i = "italic".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    break;
                case 7:
                    c1806p2 = e(c1806p2);
                    c1806p2.f20412o = c(attributeValue);
                    break;
                case 8:
                    c1806p2 = e(c1806p2);
                    c1806p2.f20413p = c(attributeValue);
                    break;
                case 9:
                    String strM = p113o3.r.m(attributeValue);
                    strM.getClass();
                    if (strM.equals("none")) {
                        c1806p2 = e(c1806p2);
                        c1806p2.f20414q = 0;
                    } else if (strM.equals("all")) {
                        c1806p2 = e(c1806p2);
                        c1806p2.f20414q = 1;
                    }
                    break;
                case 10:
                    String strM2 = p113o3.r.m(attributeValue);
                    strM2.getClass();
                    strM2.hashCode();
                    switch (strM2) {
                        case "baseContainer":
                        case "base":
                            c1806p2 = e(c1806p2);
                            c1806p2.f20410m = 2;
                            break;
                        case "container":
                            c1806p2 = e(c1806p2);
                            c1806p2.f20410m = 1;
                            break;
                        case "delimiter":
                            c1806p2 = e(c1806p2);
                            c1806p2.f20410m = 4;
                            break;
                        case "textContainer":
                        case "text":
                            c1806p2 = e(c1806p2);
                            c1806p2.f20410m = 3;
                            break;
                    }
                    break;
                case 11:
                    String strM3 = p113o3.r.m(attributeValue);
                    strM3.getClass();
                    if (strM3.equals("after")) {
                        c1806p2 = e(c1806p2);
                        c1806p2.f20411n = 2;
                    } else if (strM3.equals("before")) {
                        c1806p2 = e(c1806p2);
                        c1806p2.f20411n = 1;
                    }
                    break;
                case 12:
                    String strM4 = p113o3.r.m(attributeValue);
                    strM4.getClass();
                    strM4.hashCode();
                    switch (strM4) {
                        case "nounderline":
                            c1806p2 = e(c1806p2);
                            c1806p2.f20404g = 0;
                            break;
                        case "underline":
                            c1806p2 = e(c1806p2);
                            c1806p2.f20404g = 1;
                            break;
                        case "nolinethrough":
                            c1806p2 = e(c1806p2);
                            c1806p2.f20403f = 0;
                            break;
                        case "linethrough":
                            c1806p2 = e(c1806p2);
                            c1806p2.f20403f = 1;
                            break;
                    }
                    break;
                case 13:
                    c1806p2 = e(c1806p2);
                    Pattern pattern2 = C1598l2.f19697d;
                    if (attributeValue == null) {
                        c1598l2 = null;
                    } else {
                        String strM5 = p113o3.r.m(attributeValue.trim());
                        if (strM5.isEmpty()) {
                            c1598l2 = null;
                        } else {
                            String[] strArrSplit2 = TextUtils.split(strM5, C1598l2.f19697d);
                            int length2 = strArrSplit2.length;
                            AbstractC2333zA abstractC2333zAU = length2 != 0 ? length2 != 1 ? AbstractC2333zA.u(length2, (Object[]) strArrSplit2.clone()) : new C1194dB(strArrSplit2[0]) : VA.f16965P;
                            String str = (String) Cw.G(AbstractC2987b.m0(C1598l2.f19701h, abstractC2333zAU), "outside");
                            str.getClass();
                            int i12 = str.equals("after") ? 2 : !str.equals("outside") ? 1 : -2;
                            YA yaM0 = AbstractC2987b.m0(C1598l2.f19698e, abstractC2333zAU);
                            if (yaM0.isEmpty()) {
                                YA yaM1 = AbstractC2987b.m0(C1598l2.f19700g, abstractC2333zAU);
                                YA yaM2 = AbstractC2987b.m0(C1598l2.f19699f, abstractC2333zAU);
                                if (yaM1.isEmpty() && yaM2.isEmpty()) {
                                    i8 = 0;
                                    i10 = -1;
                                } else {
                                    String str2 = (String) Cw.G(yaM1, "filled");
                                    i8 = (str2.hashCode() == 3417674 && str2.equals("open")) ? 2 : 1;
                                    String str3 = (String) Cw.G(yaM2, "circle");
                                    str3.getClass();
                                    if (str3.equals("dot")) {
                                        i10 = 2;
                                    } else if (!str3.equals("sesame")) {
                                        i10 = 1;
                                    }
                                }
                            } else {
                                String str4 = (String) new AA(yaM0).next();
                                if (str4.hashCode() == 3387192 && str4.equals("none")) {
                                    i8 = 0;
                                    i10 = 0;
                                } else {
                                    i8 = 0;
                                    i10 = -1;
                                }
                            }
                            c1598l2 = new C1598l2(i10, i8, i12);
                        }
                    }
                    c1806p2.f20415r = c1598l2;
                    break;
                case 14:
                    c1806p2 = e(c1806p2);
                    Matcher matcher2 = f20053K.matcher(attributeValue);
                    float fMin = Float.MAX_VALUE;
                    if (matcher2.matches()) {
                        try {
                            String strGroup3 = matcher2.group(1);
                            strGroup3.getClass();
                            fMin = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup3)));
                        } catch (NumberFormatException e8) {
                            Zo.g("TtmlParser", "Failed to parse shear: ".concat(String.valueOf(attributeValue)), e8);
                        }
                    } else {
                        p000a.r.u(attributeValue, "Invalid value for shear: ", "TtmlParser");
                    }
                    c1806p2.f20416s = fMin;
                    break;
            }
        }
        return c1806p2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:124:0x028b A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TRY_LEAVE, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x0293 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, LOOP:1: B:127:0x0293->B:258:0x0524, LOOP_START, PHI: r2 r5 r8 r9 r11 r15 r27 r30
      0x0293: PHI (r2v39 w1.d) = (r2v17 w1.d), (r2v56 w1.d) binds: [B:126:0x0291, B:258:0x0524] A[DONT_GENERATE, DONT_INLINE]
      0x0293: PHI (r5v10 java.util.HashMap) = (r5v1 java.util.HashMap), (r5v28 java.util.HashMap) binds: [B:126:0x0291, B:258:0x0524] A[DONT_GENERATE, DONT_INLINE]
      0x0293: PHI (r8v43 java.lang.String) = (r8v6 java.lang.String), (r8v60 java.lang.String) binds: [B:126:0x0291, B:258:0x0524] A[DONT_GENERATE, DONT_INLINE]
      0x0293: PHI (r9v16 java.lang.String) = (r9v6 java.lang.String), (r9v37 java.lang.String) binds: [B:126:0x0291, B:258:0x0524] A[DONT_GENERATE, DONT_INLINE]
      0x0293: PHI (r11v4 java.lang.String) = (r11v3 java.lang.String), (r11v16 java.lang.String) binds: [B:126:0x0291, B:258:0x0524] A[DONT_GENERATE, DONT_INLINE]
      0x0293: PHI (r15v22 java.lang.String) = (r15v9 java.lang.String), (r15v24 java.lang.String) binds: [B:126:0x0291, B:258:0x0524] A[DONT_GENERATE, DONT_INLINE]
      0x0293: PHI (r27v2 java.util.HashMap) = (r27v1 java.util.HashMap), (r27v3 java.util.HashMap) binds: [B:126:0x0291, B:258:0x0524] A[DONT_GENERATE, DONT_INLINE]
      0x0293: PHI (r30v7 java.util.HashMap) = (r30v1 java.util.HashMap), (r30v11 java.util.HashMap) binds: [B:126:0x0291, B:258:0x0524] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x029c A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x02ad A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x02b7 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x02bd A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x02cc A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, LOOP:2: B:136:0x02ca->B:137:0x02cc, LOOP_END, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x02de  */
    /* JADX WARN: Code duplicated, block: B:141:0x02e8 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x02f7 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TRY_LEAVE, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x0305 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TRY_ENTER, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x030b A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, LOOP:3: B:148:0x030b->B:158:0x0338, LOOP_START, PHI: r30
      0x030b: PHI (r30v9 java.util.HashMap) = (r30v7 java.util.HashMap), (r30v10 java.util.HashMap) binds: [B:147:0x0309, B:158:0x0338] A[DONT_GENERATE, DONT_INLINE], TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:150:0x0314 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:153:0x0324  */
    /* JADX WARN: Code duplicated, block: B:158:0x0338 A[LOOP:3: B:148:0x030b->B:158:0x0338, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:159:0x033b A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:161:0x0343  */
    /* JADX WARN: Code duplicated, block: B:163:0x034e A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:165:0x0356 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TRY_LEAVE, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:168:0x0372  */
    /* JADX WARN: Code duplicated, block: B:176:0x039b A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:178:0x03a3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:179:0x03a5 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TRY_LEAVE, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:181:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:190:0x03d8 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TRY_LEAVE, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:201:0x0412 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:203:0x0418 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:204:0x041a A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TRY_LEAVE, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:206:0x0423  */
    /* JADX WARN: Code duplicated, block: B:215:0x0451 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TRY_LEAVE, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:218:0x0460  */
    /* JADX WARN: Code duplicated, block: B:220:0x0468  */
    /* JADX WARN: Code duplicated, block: B:221:0x046d  */
    /* JADX WARN: Code duplicated, block: B:222:0x0477  */
    /* JADX WARN: Code duplicated, block: B:226:0x048a A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TRY_LEAVE, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:229:0x0498  */
    /* JADX WARN: Code duplicated, block: B:230:0x049a  */
    /* JADX WARN: Code duplicated, block: B:233:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:234:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:237:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:238:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:241:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:243:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:244:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:245:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:248:0x04da A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:249:0x04e5 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:251:0x04f5 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:252:0x0500 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:254:0x0511 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:258:0x0524 A[LOOP:1: B:127:0x0293->B:258:0x0524, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:259:0x0536  */
    /* JADX WARN: Code duplicated, block: B:266:0x0575 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:267:0x0577 A[PHI: r2
      0x0577: PHI (r2v36 java.lang.Object) = 
      (r2v26 java.lang.Object)
      (r2v27 java.lang.Object)
      (r2v28 java.lang.Object)
      (r2v29 java.lang.Object)
      (r2v30 java.lang.Object)
      (r2v37 java.lang.Object)
     binds: [B:289:0x05be, B:285:0x05b3, B:281:0x05a6, B:277:0x0599, B:273:0x058c, B:266:0x0575] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:268:0x0579  */
    /* JADX WARN: Code duplicated, block: B:271:0x0582  */
    /* JADX WARN: Code duplicated, block: B:272:0x0586  */
    /* JADX WARN: Code duplicated, block: B:275:0x058f  */
    /* JADX WARN: Code duplicated, block: B:276:0x0591  */
    /* JADX WARN: Code duplicated, block: B:279:0x059c  */
    /* JADX WARN: Code duplicated, block: B:280:0x059e  */
    /* JADX WARN: Code duplicated, block: B:283:0x05a9  */
    /* JADX WARN: Code duplicated, block: B:284:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:287:0x05b6  */
    /* JADX WARN: Code duplicated, block: B:288:0x05b8  */
    /* JADX WARN: Code duplicated, block: B:291:0x05c1  */
    /* JADX WARN: Code duplicated, block: B:296:0x05ce  */
    /* JADX WARN: Code duplicated, block: B:298:0x05d3 A[FALL_THROUGH, PHI: r38
      0x05d3: PHI (r38v3 java.lang.String) = (r38v1 java.lang.String), (r38v1 java.lang.String), (r38v2 java.lang.String) binds: [B:292:0x05c2, B:295:0x05cc, B:297:0x05cf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:305:0x05e5  */
    /* JADX WARN: Code duplicated, block: B:308:0x05f0 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x0609, TryCatch #6 {U1 -> 0x0609, blocks: (B:306:0x05e6, B:308:0x05f0, B:309:0x05f7), top: B:418:0x05e6 }] */
    /* JADX WARN: Code duplicated, block: B:309:0x05f7 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x0609, TRY_LEAVE, TryCatch #6 {U1 -> 0x0609, blocks: (B:306:0x05e6, B:308:0x05f0, B:309:0x05f7), top: B:418:0x05e6 }] */
    /* JADX WARN: Code duplicated, block: B:312:0x0604  */
    /* JADX WARN: Code duplicated, block: B:316:0x060b  */
    /* JADX WARN: Code duplicated, block: B:320:0x0618 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x0615, TryCatch #11 {U1 -> 0x0615, blocks: (B:325:0x0639, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:349:0x0693), top: B:426:0x0639 }] */
    /* JADX WARN: Code duplicated, block: B:321:0x0622 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x0615, TryCatch #11 {U1 -> 0x0615, blocks: (B:325:0x0639, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:349:0x0693), top: B:426:0x0639 }] */
    /* JADX WARN: Code duplicated, block: B:322:0x062c A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x0615, TryCatch #11 {U1 -> 0x0615, blocks: (B:325:0x0639, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:349:0x0693), top: B:426:0x0639 }] */
    /* JADX WARN: Code duplicated, block: B:324:0x0637  */
    /* JADX WARN: Code duplicated, block: B:330:0x064c A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x0615, TryCatch #11 {U1 -> 0x0615, blocks: (B:325:0x0639, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:349:0x0693), top: B:426:0x0639 }] */
    /* JADX WARN: Code duplicated, block: B:332:0x0659  */
    /* JADX WARN: Code duplicated, block: B:334:0x065d A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x0615, TryCatch #11 {U1 -> 0x0615, blocks: (B:325:0x0639, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:349:0x0693), top: B:426:0x0639 }] */
    /* JADX WARN: Code duplicated, block: B:335:0x0660  */
    /* JADX WARN: Code duplicated, block: B:338:0x0666 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x0615, TryCatch #11 {U1 -> 0x0615, blocks: (B:325:0x0639, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:349:0x0693), top: B:426:0x0639 }] */
    /* JADX WARN: Code duplicated, block: B:340:0x066e  */
    /* JADX WARN: Code duplicated, block: B:341:0x067a  */
    /* JADX WARN: Code duplicated, block: B:342:0x067e  */
    /* JADX WARN: Code duplicated, block: B:345:0x0688  */
    /* JADX WARN: Code duplicated, block: B:347:0x068c A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x0615, TryCatch #11 {U1 -> 0x0615, blocks: (B:325:0x0639, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:349:0x0693), top: B:426:0x0639 }] */
    /* JADX WARN: Code duplicated, block: B:348:0x0691 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:349:0x0693 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x0615, TRY_LEAVE, TryCatch #11 {U1 -> 0x0615, blocks: (B:325:0x0639, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:349:0x0693), top: B:426:0x0639 }] */
    /* JADX WARN: Code duplicated, block: B:352:0x0699 A[PHI: r10
      0x0699: PHI (r10v11 long) = (r10v10 long), (r10v12 long) binds: [B:344:0x0686, B:351:0x0697] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:358:0x06b1 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x06d1, TryCatch #15 {U1 -> 0x06d1, blocks: (B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc), top: B:434:0x06ac }] */
    /* JADX WARN: Code duplicated, block: B:360:0x06b5 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, U1 -> 0x06d1, TryCatch #15 {U1 -> 0x06d1, blocks: (B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc), top: B:434:0x06ac }] */
    /* JADX WARN: Code duplicated, block: B:410:0x0563 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:412:0x05c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:447:0x051e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:449:0x032c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x018e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0192 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x019c A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x009a, TRY_LEAVE, TryCatch #20 {IOException -> 0x0096, XmlPullParserException -> 0x009a, blocks: (B:3:0x0006, B:7:0x0062, B:9:0x006d, B:12:0x0077, B:15:0x0087, B:17:0x008f, B:24:0x00a1, B:27:0x00ad, B:31:0x00bf, B:33:0x00dc, B:35:0x00e6, B:36:0x00ea, B:38:0x00f6, B:39:0x00fa, B:69:0x0188, B:90:0x01ea, B:93:0x01fa, B:95:0x0200, B:97:0x0208, B:99:0x0210, B:101:0x0218, B:103:0x0220, B:105:0x0228, B:107:0x022e, B:109:0x0236, B:111:0x023e, B:113:0x0244, B:115:0x024a, B:117:0x0250, B:119:0x0258, B:122:0x0261, B:397:0x076c, B:124:0x028b, B:127:0x0293, B:129:0x029c, B:131:0x02ad, B:133:0x02b7, B:135:0x02c6, B:137:0x02cc, B:139:0x02e2, B:141:0x02e8, B:255:0x0518, B:134:0x02bd, B:143:0x02f7, B:146:0x0305, B:148:0x030b, B:150:0x0314, B:152:0x031a, B:154:0x0326, B:159:0x033b, B:254:0x0511, B:163:0x034e, B:165:0x0356, B:169:0x0375, B:171:0x037c, B:173:0x038a, B:188:0x03d2, B:190:0x03d8, B:194:0x03e9, B:196:0x03f0, B:198:0x03fe, B:213:0x0449, B:215:0x0451, B:224:0x0480, B:226:0x048a, B:246:0x04c5, B:200:0x0409, B:201:0x0412, B:204:0x041a, B:207:0x0424, B:209:0x042b, B:211:0x0437, B:247:0x04d1, B:248:0x04da, B:249:0x04e5, B:175:0x0393, B:176:0x039b, B:179:0x03a5, B:182:0x03ae, B:184:0x03b5, B:186:0x03c1, B:250:0x04ec, B:251:0x04f5, B:252:0x0500, B:260:0x0542, B:263:0x0563, B:294:0x05c6, B:297:0x05cf, B:369:0x06dc, B:306:0x05e6, B:308:0x05f0, B:310:0x0601, B:325:0x0639, B:309:0x05f7, B:317:0x0610, B:320:0x0618, B:321:0x0622, B:322:0x062c, B:330:0x064c, B:334:0x065d, B:338:0x0666, B:347:0x068c, B:354:0x069e, B:356:0x06ac, B:358:0x06b1, B:360:0x06b5, B:361:0x06bc, B:349:0x0693, B:73:0x0192, B:75:0x019c, B:78:0x01a7, B:80:0x01ae, B:82:0x01ba, B:84:0x01c2, B:87:0x01c9, B:43:0x0114, B:46:0x0122, B:49:0x012b, B:51:0x0132, B:53:0x0139, B:55:0x0140, B:61:0x0156, B:63:0x015d, B:68:0x0180, B:374:0x0704, B:376:0x0710, B:377:0x0717, B:381:0x0724, B:383:0x072e, B:385:0x073d, B:387:0x0747, B:391:0x075e, B:395:0x0766), top: B:444:0x0006, inners: #13, #14, #17, #19 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01a6  */
    /* JADX WARN: Failed to find 'out' block for switch in B:292:0x05c2. Please report as an issue. */
    public final C1858q2 a(int i8, byte[] bArr, int i9) {
        String str;
        String str2;
        HashMap map;
        HashMap map2;
        HashMap map3;
        ArrayDeque arrayDeque;
        p172w1.d dVar;
        C1858q2 c1858q2;
        int i10;
        HashMap map4;
        ArrayDeque arrayDeque2;
        int i11;
        p172w1.d dVar2;
        String str3;
        String str4;
        String str5;
        boolean zEquals;
        String str6;
        p172w1.d dVar3;
        HashMap map5;
        Object obj;
        String str7;
        HashMap map6;
        U1 u7;
        int attributeCount;
        String[] strArr;
        String strSubstring;
        String str8;
        int i12;
        long jB;
        long jB2;
        long jB3;
        C1650m2 c1650m2;
        long j8;
        C1650m2 c1650m3;
        long j9;
        long j10;
        C1650m2 c1650m2B;
        long j11;
        String attributeName;
        String attributeValue;
        Object obj2;
        byte b8;
        String str9;
        String strTrim;
        String[] strArrSplit;
        p172w1.d dVar4;
        HashMap map7;
        String strK;
        String strK2;
        String str10;
        String str11;
        Pattern pattern;
        Matcher matcher;
        Matcher matcher2;
        float f8;
        float f9;
        String strK3;
        Matcher matcher3;
        Matcher matcher4;
        float f10;
        float f11;
        String strK4;
        float f12;
        int i13;
        String strK5;
        int i14;
        C1754o2 c1754o2;
        String strM;
        String strM2;
        HashMap map8;
        String strK6;
        String strK7;
        C1806p2 c1806p2F;
        String strA;
        String strTrim2;
        String[] strArrSplit2;
        int length;
        int i15;
        float f13;
        int i16;
        boolean z7;
        String strK8;
        Matcher matcher5;
        String str12 = HttpUrl.FRAGMENT_ENCODE_SET;
        String str13 = "http://www.w3.org/ns/ttml#parameter";
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f20058G.newPullParser();
            HashMap map9 = new HashMap();
            HashMap map10 = new HashMap();
            HashMap map11 = new HashMap();
            map10.put(HttpUrl.FRAGMENT_ENCODE_SET, new C1754o2(HttpUrl.FRAGMENT_ENCODE_SET, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, i8, i9), null);
            ArrayDeque arrayDeque3 = new ArrayDeque();
            int eventType = xmlPullParserNewPullParser.getEventType();
            p172w1.d dVar5 = f20057O;
            C1858q2 c1858q3 = null;
            N.r rVar = null;
            p172w1.d dVar6 = dVar5;
            int i17 = 0;
            int i18 = 15;
            while (eventType != 1) {
                C1650m2 c1650m4 = (C1650m2) arrayDeque3.peek();
                if (i17 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    str = str12;
                    if (eventType == 2) {
                        boolean zEquals2 = "tt".equals(name);
                        Pattern pattern2 = f20055M;
                        c1858q3 = c1858q3;
                        if (zEquals2) {
                            String attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(str13, "frameRate");
                            int i19 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 30;
                            i11 = i17;
                            String attributeValue3 = xmlPullParserNewPullParser.getAttributeValue(str13, "frameRateMultiplier");
                            arrayDeque2 = arrayDeque3;
                            if (attributeValue3 != null) {
                                int i20 = Et.f13234a;
                                String[] strArrSplit3 = attributeValue3.split(" ", -1);
                                p113o3.r.L(strArrSplit3.length == 2, "frameRateMultiplier doesn't have 2 parts");
                                f13 = Integer.parseInt(strArrSplit3[0]) / Integer.parseInt(strArrSplit3[1]);
                            } else {
                                f13 = 1.0f;
                            }
                            int i21 = dVar5.f30934b;
                            String attributeValue4 = xmlPullParserNewPullParser.getAttributeValue(str13, "subFrameRate");
                            if (attributeValue4 != null) {
                                i21 = Integer.parseInt(attributeValue4);
                            }
                            int i22 = dVar5.f30935c;
                            dVar = dVar5;
                            String attributeValue5 = xmlPullParserNewPullParser.getAttributeValue(str13, "tickRate");
                            if (attributeValue5 != null) {
                                i22 = Integer.parseInt(attributeValue5);
                            }
                            dVar6 = new p172w1.d(i19 * f13, i21, i22);
                            String attributeValue6 = xmlPullParserNewPullParser.getAttributeValue(str13, "cellResolution");
                            if (attributeValue6 == null) {
                                str2 = str13;
                                map4 = map11;
                                dVar6 = dVar6;
                                i18 = 15;
                            } else {
                                Matcher matcher6 = f20056N.matcher(attributeValue6);
                                if (matcher6.matches()) {
                                    try {
                                        String strGroup = matcher6.group(1);
                                        strGroup.getClass();
                                        int i23 = Integer.parseInt(strGroup);
                                        str2 = str13;
                                        try {
                                            String strGroup2 = matcher6.group(2);
                                            strGroup2.getClass();
                                            int i24 = Integer.parseInt(strGroup2);
                                            if (i23 == 0) {
                                                i16 = i24;
                                                z7 = false;
                                            } else if (i24 != 0) {
                                                i16 = i24;
                                                z7 = true;
                                            } else {
                                                z7 = false;
                                                i16 = 0;
                                            }
                                            try {
                                                StringBuilder sb = new StringBuilder();
                                                map4 = map11;
                                                try {
                                                    sb.append("Invalid cell resolution ");
                                                    sb.append(i23);
                                                    sb.append(" ");
                                                    sb.append(i16);
                                                    p113o3.r.L(z7, sb.toString());
                                                    i18 = i16;
                                                } catch (NumberFormatException unused) {
                                                    Zo.f("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue6));
                                                    i18 = 15;
                                                }
                                            } catch (NumberFormatException unused2) {
                                                map4 = map11;
                                            }
                                        } catch (NumberFormatException unused3) {
                                            map4 = map11;
                                            dVar6 = dVar6;
                                            Zo.f("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue6));
                                            i18 = 15;
                                            strK8 = U4.a.k(xmlPullParserNewPullParser, "extent");
                                            if (strK8 == null) {
                                                rVar = null;
                                            } else {
                                                matcher5 = pattern2.matcher(strK8);
                                                if (matcher5.matches()) {
                                                    try {
                                                        String strGroup3 = matcher5.group(1);
                                                        strGroup3.getClass();
                                                        int i25 = Integer.parseInt(strGroup3);
                                                        String strGroup4 = matcher5.group(2);
                                                        strGroup4.getClass();
                                                        try {
                                                            rVar = new N.r(i25, Integer.parseInt(strGroup4), 5, 0);
                                                        } catch (NumberFormatException unused4) {
                                                            Zo.f("TtmlParser", "Ignoring malformed tts extent: ".concat(strK8));
                                                            rVar = null;
                                                        }
                                                    } catch (NumberFormatException unused5) {
                                                    }
                                                } else {
                                                    Zo.f("TtmlParser", "Ignoring non-pixel tts extent: ".concat(strK8));
                                                    rVar = null;
                                                }
                                            }
                                            dVar2 = dVar6;
                                            rVar = rVar;
                                            i18 = i18;
                                            str3 = "image";
                                            str4 = "style";
                                            str5 = "metadata";
                                            if (name.equals("tt")) {
                                                zEquals = "head".equals(name);
                                                str6 = "\\s+";
                                                if (zEquals) {
                                                    while (true) {
                                                        xmlPullParserNewPullParser.next();
                                                        if (U4.a.s(xmlPullParserNewPullParser, str4)) {
                                                            strK7 = U4.a.k(xmlPullParserNewPullParser, str4);
                                                            dVar4 = dVar2;
                                                            c1806p2F = f(xmlPullParserNewPullParser, new C1806p2());
                                                            if (strK7 != null) {
                                                                strTrim2 = strK7.trim();
                                                                if (strTrim2.isEmpty()) {
                                                                    strArrSplit2 = new String[0];
                                                                } else {
                                                                    int i26 = Et.f13234a;
                                                                    strArrSplit2 = strTrim2.split(str6, -1);
                                                                }
                                                                i15 = 0;
                                                                for (length = strArrSplit2.length; i15 < length; length = length) {
                                                                    c1806p2F.b((C1806p2) map9.get(strArrSplit2[i15]));
                                                                    i15++;
                                                                }
                                                            } else {
                                                                str4 = str4;
                                                            }
                                                            strA = c1806p2F.a();
                                                            if (strA != null) {
                                                                map9.put(strA, c1806p2F);
                                                            }
                                                        } else {
                                                            dVar4 = dVar2;
                                                            str4 = str4;
                                                            str6 = str6;
                                                            if (U4.a.s(xmlPullParserNewPullParser, "region")) {
                                                                map7 = map4;
                                                                strK = U4.a.k(xmlPullParserNewPullParser, "id");
                                                                if (strK == null) {
                                                                    map5 = map9;
                                                                    str10 = str3;
                                                                    map6 = map7;
                                                                    str11 = str5;
                                                                } else {
                                                                    strK2 = U4.a.k(xmlPullParserNewPullParser, "origin");
                                                                    if (strK2 != null) {
                                                                        pattern = f20054L;
                                                                        matcher = pattern.matcher(strK2);
                                                                        str10 = str3;
                                                                        matcher2 = pattern2.matcher(strK2);
                                                                        str11 = str5;
                                                                        map5 = map9;
                                                                        if (matcher.matches()) {
                                                                            map6 = map7;
                                                                            String strGroup5 = matcher.group(1);
                                                                            strGroup5.getClass();
                                                                            float f14 = Float.parseFloat(strGroup5) / 100.0f;
                                                                            String strGroup6 = matcher.group(2);
                                                                            strGroup6.getClass();
                                                                            f8 = Float.parseFloat(strGroup6) / 100.0f;
                                                                            f9 = f14;
                                                                            strK3 = U4.a.k(xmlPullParserNewPullParser, "extent");
                                                                            if (strK3 != null) {
                                                                                matcher3 = pattern.matcher(strK3);
                                                                                matcher4 = pattern2.matcher(strK3);
                                                                                if (matcher3.matches()) {
                                                                                    String strGroup7 = matcher3.group(1);
                                                                                    strGroup7.getClass();
                                                                                    float f15 = Float.parseFloat(strGroup7) / 100.0f;
                                                                                    String strGroup8 = matcher3.group(2);
                                                                                    strGroup8.getClass();
                                                                                    f11 = Float.parseFloat(strGroup8) / 100.0f;
                                                                                    f10 = f15;
                                                                                    strK4 = U4.a.k(xmlPullParserNewPullParser, "displayAlign");
                                                                                    if (strK4 != null) {
                                                                                        strM2 = p113o3.r.m(strK4);
                                                                                        strM2.getClass();
                                                                                        if (!strM2.equals("after")) {
                                                                                            f12 = f8 + f11;
                                                                                            i13 = 2;
                                                                                        } else if (strM2.equals("center")) {
                                                                                            f12 = (f11 / 2.0f) + f8;
                                                                                            i13 = 1;
                                                                                        } else {
                                                                                            f12 = f8;
                                                                                            i13 = 0;
                                                                                        }
                                                                                    } else {
                                                                                        f12 = f8;
                                                                                        i13 = 0;
                                                                                    }
                                                                                    float f16 = 1.0f / i18;
                                                                                    strK5 = U4.a.k(xmlPullParserNewPullParser, "writingMode");
                                                                                    if (strK5 != null) {
                                                                                        strM = p113o3.r.m(strK5);
                                                                                        strM.getClass();
                                                                                        switch (strM) {
                                                                                            case "tb":
                                                                                            case "tblr":
                                                                                                i14 = 2;
                                                                                                break;
                                                                                            case "tbrl":
                                                                                                i14 = 1;
                                                                                                break;
                                                                                            default:
                                                                                                i14 = Integer.MIN_VALUE;
                                                                                                break;
                                                                                        }
                                                                                    } else {
                                                                                        i14 = Integer.MIN_VALUE;
                                                                                    }
                                                                                    c1754o2 = new C1754o2(strK, f9, f12, 0, i13, f10, f11, 1, f16, i14);
                                                                                } else if (matcher4.matches()) {
                                                                                    Zo.f("TtmlParser", "Ignoring region with unsupported extent: ".concat(strK2));
                                                                                } else if (rVar == null) {
                                                                                    Zo.f("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strK2));
                                                                                } else {
                                                                                    String strGroup9 = matcher4.group(1);
                                                                                    strGroup9.getClass();
                                                                                    int i27 = Integer.parseInt(strGroup9);
                                                                                    String strGroup10 = matcher4.group(2);
                                                                                    strGroup10.getClass();
                                                                                    float f17 = Integer.parseInt(strGroup10);
                                                                                    f10 = i27 / rVar.f4919H;
                                                                                    f11 = f17 / rVar.f4920I;
                                                                                    strK4 = U4.a.k(xmlPullParserNewPullParser, "displayAlign");
                                                                                    if (strK4 != null) {
                                                                                        strM2 = p113o3.r.m(strK4);
                                                                                        strM2.getClass();
                                                                                        if (!strM2.equals("after")) {
                                                                                            f12 = f8 + f11;
                                                                                            i13 = 2;
                                                                                        } else if (strM2.equals("center")) {
                                                                                            f12 = f8;
                                                                                            i13 = 0;
                                                                                        } else {
                                                                                            f12 = (f11 / 2.0f) + f8;
                                                                                            i13 = 1;
                                                                                        }
                                                                                    } else {
                                                                                        f12 = f8;
                                                                                        i13 = 0;
                                                                                    }
                                                                                    float f18 = 1.0f / i18;
                                                                                    strK5 = U4.a.k(xmlPullParserNewPullParser, "writingMode");
                                                                                    if (strK5 != null) {
                                                                                        strM = p113o3.r.m(strK5);
                                                                                        strM.getClass();
                                                                                        switch (strM) {
                                                                                            case 3694:
                                                                                                if (!strM.equals("tb")) {
                                                                                                }
                                                                                                break;
                                                                                            case 3553396:
                                                                                                if (!strM.equals("tblr")) {
                                                                                                }
                                                                                                break;
                                                                                            case 3553576:
                                                                                                if (!strM.equals("tbrl")) {
                                                                                                }
                                                                                                break;
                                                                                            default:
                                                                                                break;
                                                                                        }
                                                                                        /*  JADX ERROR: Method code generation error
                                                                                            java.lang.NullPointerException: Switch insn not found in header
                                                                                            	at java.base/java.util.Objects.requireNonNull(Objects.java:246)
                                                                                            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                                                                                            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                                                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                                                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:383)
                                                                                            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:331)
                                                                                            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                                                                                            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:226)
                                                                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                                                                                            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                                                                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                                                                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                                                                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                                                                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                                                                                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                                                                                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
                                                                                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                                                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                                                                            	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                                                                                            	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                                                                                            	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                                                                                            	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                                                                                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                                                                                            	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                                                                                            	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                                                                                            	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
                                                                                            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
                                                                                            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
                                                                                            	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
                                                                                            	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
                                                                                            	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                                                                                            	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                                                                                            	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                                                                                            	at jadx.core.ProcessClass.process(ProcessClass.java:89)
                                                                                            	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
                                                                                            	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
                                                                                            	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
                                                                                            	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
                                                                                            */
                                                                                        /*
                                                                                            Method dump skipped, instruction units count: 2010
                                                                                            To view this dump change 'Code comments level' option to 'DEBUG'
                                                                                        */
                                                                                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1702n2.a(int, byte[], int):com.google.android.gms.internal.ads.q2");
                                                                                    }

                                                                                    @Override // com.google.android.gms.internal.ads.W1
                                                                                    public final void d(byte[] bArr, int i8, int i9, p149t0.d dVar) {
                                                                                        a7.b.o(a(i8, bArr, i9), dVar);
                                                                                    }
                                                                                }
