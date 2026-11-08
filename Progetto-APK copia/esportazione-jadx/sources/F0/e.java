package F0;

import B0.w0;
import Z3.C;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import android.util.Xml;
import com.google.android.gms.internal.measurement.H1;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.interfaces.IMediaList;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;
import p094m0.AbstractC3124g;
import p094m0.C3130m;
import p094m0.C3131n;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.C3139w;
import p094m0.O;
import p094m0.P;
import p117p0.M;
import p117p0.x;
import p141s0.C3186k;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class e extends DefaultHandler implements S0.o {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final Pattern f3036H = Pattern.compile("(\\d+)(?:/(\\d+))?");

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final Pattern f3037I = Pattern.compile("CC([1-4])=.*");

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Pattern f3038J = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final int[] f3039K = {2, 1, 2, 2, 2, 2, 1, 2, 2, 1, 1, 1, 1, 2, 1, 1, 2, 2, 2};

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final int[] f3040L = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final XmlPullParserFactory f3041G;

    public e() {
        try {
            this.f3041G = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e8) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e8);
        }
    }

    public static long a(ArrayList arrayList, long j8, long j9, int i8, long j10) {
        int i9;
        if (i8 >= 0) {
            i9 = i8 + 1;
        } else {
            String str = M.f28050a;
            i9 = (int) ((((j10 - j8) + j9) - 1) / j9);
        }
        for (int i10 = 0; i10 < i9; i10++) {
            arrayList.add(new q(j8, j9));
            j8 += j9;
        }
        return j8;
    }

    public static void b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (C.e(xmlPullParser)) {
            int i8 = 1;
            while (i8 != 0) {
                xmlPullParser.next();
                if (C.e(xmlPullParser)) {
                    i8++;
                } else if (xmlPullParser.getEventType() == 3) {
                    i8--;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:49:0x0093 A[PHI: r13
      0x0093: PHI (r13v23 int) = (r13v3 int), (r13v5 int), (r13v26 int) binds: [B:119:0x0192, B:114:0x0187, B:47:0x008f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:60:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    public static int c(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        int iK;
        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue == null) {
            attributeValue = null;
        }
        attributeValue.getClass();
        int iK2 = -1;
        switch (attributeValue) {
            case "urn:dts:dash:audio_channel_configuration:2012":
            case "tag:dts.com,2014:dash:audio_channel_configuration:2012":
                iK = k(xmlPullParser, "value", -1);
                if (iK > 0 && iK < 33) {
                    iK2 = iK;
                    break;
                }
                break;
            case "tag:dolby.com,2015:dash:audio_channel_configuration:2015":
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
                if (attributeValue2 != null && attributeValue2.length() == 6) {
                    int i8 = Integer.parseInt(attributeValue2, 16);
                    if ((8388608 & i8) == 0) {
                        iK = 0;
                        while (true) {
                            if (r4 < r1.length) {
                                iK += ((i8 >> r4) & 1) * f3039K[r4];
                            } else if (iK != 0) {
                                iK2 = iK;
                            }
                        }
                    } else {
                        String[] strArrD0 = M.d0(str);
                        if (strArrD0.length != 0) {
                            List listB = p190y4.q.a('.').b(p190y4.k.h0(strArrD0[0].trim()));
                            if (listB.size() == 4 && ((String) listB.get(0)).equals("ac-4")) {
                                String str2 = (String) listB.get(3);
                                str2.getClass();
                                if (str2.equals("03")) {
                                    iK2 = 18;
                                } else if (str2.equals("04")) {
                                    iK2 = 21;
                                }
                            }
                        }
                    }
                    break;
                }
                break;
            case "urn:mpeg:dash:23003:3:audio_channel_configuration:2011":
                iK2 = k(xmlPullParser, "value", -1);
                break;
            case "tag:dolby.com,2014:dash:audio_channel_configuration:2011":
            case "urn:dolby:dash:audio_channel_configuration:2011":
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "value");
                if (attributeValue3 != null) {
                    String strH0 = p190y4.k.h0(attributeValue3);
                    strH0.getClass();
                    switch (strH0) {
                        case "4000":
                            iK2 = 1;
                            break;
                        case "a000":
                            iK2 = 2;
                            break;
                        case "f800":
                            iK2 = 5;
                            break;
                        case "f801":
                            iK2 = 6;
                            break;
                        case "fa01":
                            iK2 = 8;
                            break;
                    }
                }
                break;
            case "urn:mpeg:mpegB:cicp:ChannelConfiguration":
                int iK3 = k(xmlPullParser, "value", -1);
                if (iK3 >= 0) {
                    int[] iArr = f3040L;
                    if (iK3 < iArr.length) {
                        iK2 = iArr[iK3];
                    }
                    break;
                }
                break;
            case "tag:dts.com,2018:uhd:audio_channel_configuration":
                String attributeValue4 = xmlPullParser.getAttributeValue(null, "value");
                if (attributeValue4 != null && (iK = Integer.bitCount(Integer.parseInt(attributeValue4, 16))) != 0) {
                    iK2 = iK;
                    break;
                }
                break;
        }
        do {
            xmlPullParser.next();
        } while (!C.c(xmlPullParser, "AudioChannelConfiguration"));
        return iK2;
    }

    public static long d(XmlPullParser xmlPullParser, long j8) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j8;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return (long) (Float.parseFloat(attributeValue) * 1000000.0f);
    }

    public static ArrayList e(XmlPullParser xmlPullParser, List list, boolean z7) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int i8 = attributeValue != null ? Integer.parseInt(attributeValue) : z7 ? 1 : Integer.MIN_VALUE;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        int i9 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 1;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String text = HttpUrl.FRAGMENT_ENCODE_SET;
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                text = xmlPullParser.getText();
            } else {
                b(xmlPullParser);
            }
        } while (!C.c(xmlPullParser, "BaseURL"));
        if (text != null && Q3.b.m(text)[0] != -1) {
            if (attributeValue3 == null) {
                attributeValue3 = text;
            }
            return p113o3.r.f(new b(i8, i9, text, attributeValue3));
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            b bVar = (b) list.get(i10);
            String strU = Q3.b.u(bVar.f3010a, text);
            String str = attributeValue3 == null ? strU : attributeValue3;
            if (z7) {
                i8 = bVar.f3012c;
                i9 = bVar.f3013d;
                str = bVar.f3011b;
            }
            arrayList.add(new b(i8, i9, strU, str));
        }
        return arrayList;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:52:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:6:0x001d  */
    /* JADX WARN: Code duplicated, block: B:81:0x013c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x013e  */
    /* JADX WARN: Code duplicated, block: B:89:0x0161  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v4, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v9 */
    public static Pair f(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String attributeValue;
        UUID uuid;
        UUID uuid2;
        ?? text;
        ?? B7;
        UUID uuid3;
        String attributeValue2;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue3 != null) {
            String strH0 = p190y4.k.h0(attributeValue3);
            strH0.getClass();
            switch (strH0) {
                case "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e":
                    uuid = AbstractC3124g.f26854c;
                    attributeValue = null;
                    uuid2 = null;
                    text = uuid2;
                    B7 = uuid2;
                    break;
                case "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95":
                    uuid = AbstractC3124g.f26856e;
                    attributeValue = null;
                    uuid2 = null;
                    text = uuid2;
                    B7 = uuid2;
                    break;
                case "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed":
                    uuid = AbstractC3124g.f26855d;
                    attributeValue = null;
                    uuid2 = null;
                    text = uuid2;
                    B7 = uuid2;
                    break;
                case "urn:mpeg:dash:mp4protection:2011":
                    attributeValue = xmlPullParser.getAttributeValue(null, "value");
                    int attributeCount = xmlPullParser.getAttributeCount();
                    int i8 = 0;
                    while (true) {
                        if (i8 >= attributeCount) {
                            attributeValue2 = null;
                        } else {
                            String attributeName = xmlPullParser.getAttributeName(i8);
                            int iIndexOf = attributeName.indexOf(58);
                            if (iIndexOf != -1) {
                                attributeName = attributeName.substring(iIndexOf + 1);
                            }
                            if (attributeName.equals("default_KID")) {
                                attributeValue2 = xmlPullParser.getAttributeValue(i8);
                            } else {
                                i8++;
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(attributeValue2) && !"00000000-0000-0000-0000-000000000000".equals(attributeValue2)) {
                        String[] strArrSplit = attributeValue2.split("\\s+");
                        UUID[] uuidArr = new UUID[strArrSplit.length];
                        for (int i9 = 0; i9 < strArrSplit.length; i9++) {
                            uuidArr[i9] = UUID.fromString(strArrSplit[i9]);
                        }
                        uuid = AbstractC3124g.f26853b;
                        text = 0;
                        B7 = E3.f.b(uuid, uuidArr, null);
                        break;
                    } else {
                        x.f("MpdParser", "Ignoring <ContentProtection> with schemeIdUri=\"urn:mpeg:dash:mp4protection:2011\" (ClearKey) due to missing required default_KID attribute.");
                        uuid = null;
                        uuid2 = uuid;
                        text = uuid2;
                        B7 = uuid2;
                        break;
                    }
                    break;
                default:
                    attributeValue = null;
                    uuid = null;
                    uuid2 = uuid;
                    text = uuid2;
                    B7 = uuid2;
                    break;
            }
        } else {
            attributeValue = null;
            uuid = null;
            uuid2 = uuid;
            text = uuid2;
            B7 = uuid2;
        }
        do {
            xmlPullParser.next();
            if ((C.f(xmlPullParser, "clearkey:Laurl") || C.f(xmlPullParser, "dashif:Laurl")) && xmlPullParser.next() == 4) {
                B7 = B7;
                text = xmlPullParser.getText();
            } else if (C.f(xmlPullParser, "ms:laurl")) {
                B7 = B7;
                text = xmlPullParser.getAttributeValue(null, "licenseUrl");
            } else if (B7 == 0 && C.e(xmlPullParser)) {
                String name = xmlPullParser.getName();
                int iIndexOf2 = name.indexOf(58);
                if (iIndexOf2 != -1) {
                    name = name.substring(iIndexOf2 + 1);
                }
                if (name.equals("pssh") && xmlPullParser.next() == 4) {
                    byte[] bArrDecode = Base64.decode(xmlPullParser.getText(), 0);
                    w0 w0VarW = E3.f.w(bArrDecode);
                    UUID uuid4 = w0VarW == null ? null : (UUID) w0VarW.f1121I;
                    if (uuid4 == null) {
                        x.f("MpdParser", "Skipping malformed cenc:pssh data");
                        uuid = uuid4;
                        B7 = 0;
                        text = text;
                    } else {
                        UUID uuid5 = uuid4;
                        B7 = bArrDecode;
                        uuid = uuid5;
                        text = text;
                    }
                } else if (B7 == 0) {
                    uuid3 = AbstractC3124g.f26856e;
                    if (!uuid3.equals(uuid)) {
                        b(xmlPullParser);
                        B7 = B7;
                        text = text;
                    } else {
                        b(xmlPullParser);
                        B7 = B7;
                        text = text;
                    }
                } else {
                    b(xmlPullParser);
                    B7 = B7;
                    text = text;
                }
            } else if (B7 == 0) {
                uuid3 = AbstractC3124g.f26856e;
                if (!uuid3.equals(uuid) && C.f(xmlPullParser, "mspr:pro") && xmlPullParser.next() == 4) {
                    B7 = E3.f.b(uuid3, null, Base64.decode(xmlPullParser.getText(), 0));
                    text = text;
                } else {
                    b(xmlPullParser);
                    B7 = B7;
                    text = text;
                }
            } else {
                b(xmlPullParser);
                B7 = B7;
                text = text;
            }
        } while (!C.c(xmlPullParser, "ContentProtection"));
        return Pair.create(attributeValue, uuid != null ? new C3130m(uuid, text, "video/mp4", B7) : null);
    }

    public static int g(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        if ("text".equals(attributeValue)) {
            return 3;
        }
        return "image".equals(attributeValue) ? 4 : -1;
    }

    public static f h(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue == null) {
            attributeValue = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue2 == null) {
            attributeValue2 = null;
        }
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "id");
        String str2 = attributeValue3 != null ? attributeValue3 : null;
        do {
            xmlPullParser.next();
        } while (!C.c(xmlPullParser, str));
        return new f(attributeValue, attributeValue2, str2);
    }

    public static long i(XmlPullParser xmlPullParser, String str, long j8) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j8;
        }
        Matcher matcher = M.f28054e.matcher(attributeValue);
        if (!matcher.matches()) {
            return (long) (Double.parseDouble(attributeValue) * 3600.0d * 1000.0d);
        }
        boolean zIsEmpty = true ^ TextUtils.isEmpty(matcher.group(1));
        String strGroup = matcher.group(3);
        double d6 = strGroup != null ? Double.parseDouble(strGroup) * 3.1556908E7d : 0.0d;
        String strGroup2 = matcher.group(5);
        double d8 = d6 + (strGroup2 != null ? Double.parseDouble(strGroup2) * 2629739.0d : 0.0d);
        String strGroup3 = matcher.group(7);
        double d9 = d8 + (strGroup3 != null ? Double.parseDouble(strGroup3) * 86400.0d : 0.0d);
        String strGroup4 = matcher.group(10);
        double d10 = d9 + (strGroup4 != null ? Double.parseDouble(strGroup4) * 3600.0d : 0.0d);
        String strGroup5 = matcher.group(12);
        double d11 = d10 + (strGroup5 != null ? Double.parseDouble(strGroup5) * 60.0d : 0.0d);
        String strGroup6 = matcher.group(14);
        long j9 = (long) ((d11 + (strGroup6 != null ? Double.parseDouble(strGroup6) : 0.0d)) * 1000.0d);
        return zIsEmpty ? -j9 : j9;
    }

    public static float j(XmlPullParser xmlPullParser, float f8) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue == null) {
            return f8;
        }
        Matcher matcher = f3036H.matcher(attributeValue);
        if (!matcher.matches()) {
            return f8;
        }
        int i8 = Integer.parseInt(matcher.group(1));
        String strGroup = matcher.group(2);
        return !TextUtils.isEmpty(strGroup) ? i8 / Integer.parseInt(strGroup) : i8;
    }

    public static int k(XmlPullParser xmlPullParser, String str, int i8) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i8 : Integer.parseInt(attributeValue);
    }

    public static long l(XmlPullParser xmlPullParser, String str, long j8) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j8 : Long.parseLong(attributeValue);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:243:0x0939  */
    /* JADX WARN: Code duplicated, block: B:245:0x0940  */
    /* JADX WARN: Code duplicated, block: B:247:0x0946  */
    /* JADX WARN: Code duplicated, block: B:248:0x094b  */
    /* JADX WARN: Code duplicated, block: B:250:0x0951  */
    /* JADX WARN: Code duplicated, block: B:256:0x0966  */
    /* JADX WARN: Code duplicated, block: B:258:0x0972  */
    /* JADX WARN: Code duplicated, block: B:260:0x0976  */
    /* JADX WARN: Code duplicated, block: B:263:0x097f  */
    /* JADX WARN: Code duplicated, block: B:266:0x098a  */
    /* JADX WARN: Code duplicated, block: B:268:0x099c  */
    /* JADX WARN: Code duplicated, block: B:270:0x09a4  */
    /* JADX WARN: Code duplicated, block: B:279:0x09be  */
    /* JADX WARN: Code duplicated, block: B:280:0x09c2 A[PHI: r10
      0x09c2: PHI (r10v35 java.lang.String) = (r10v34 java.lang.String), (r10v42 java.lang.String) binds: [B:262:0x097d, B:278:0x09bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:283:0x09cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:284:0x09ce  */
    /* JADX WARN: Code duplicated, block: B:285:0x09d1  */
    /* JADX WARN: Code duplicated, block: B:290:0x09e1  */
    /* JADX WARN: Code duplicated, block: B:292:0x09f1  */
    /* JADX WARN: Code duplicated, block: B:294:0x09f5  */
    /* JADX WARN: Code duplicated, block: B:295:0x09f7  */
    /* JADX WARN: Code duplicated, block: B:306:0x0a19  */
    /* JADX WARN: Code duplicated, block: B:308:0x0a27  */
    /* JADX WARN: Code duplicated, block: B:313:0x0a39  */
    /* JADX WARN: Code duplicated, block: B:315:0x0a51  */
    /* JADX WARN: Code duplicated, block: B:318:0x0a59  */
    /* JADX WARN: Code duplicated, block: B:320:0x0a63 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:321:0x0a65  */
    /* JADX WARN: Code duplicated, block: B:322:0x0a67  */
    /* JADX WARN: Code duplicated, block: B:324:0x0a6e  */
    /* JADX WARN: Code duplicated, block: B:325:0x0a70  */
    /* JADX WARN: Code duplicated, block: B:328:0x0a79  */
    /* JADX WARN: Code duplicated, block: B:329:0x0a7b  */
    /* JADX WARN: Code duplicated, block: B:332:0x0a84  */
    /* JADX WARN: Code duplicated, block: B:333:0x0a86  */
    /* JADX WARN: Code duplicated, block: B:336:0x0a8f  */
    /* JADX WARN: Code duplicated, block: B:337:0x0a91  */
    /* JADX WARN: Code duplicated, block: B:340:0x0a9a  */
    /* JADX WARN: Code duplicated, block: B:341:0x0a9c  */
    /* JADX WARN: Code duplicated, block: B:344:0x0aa5  */
    /* JADX WARN: Code duplicated, block: B:347:0x0aaa  */
    /* JADX WARN: Code duplicated, block: B:348:0x0aac  */
    /* JADX WARN: Code duplicated, block: B:349:0x0aaf  */
    /* JADX WARN: Code duplicated, block: B:350:0x0ab1  */
    /* JADX WARN: Code duplicated, block: B:351:0x0ab4  */
    /* JADX WARN: Code duplicated, block: B:356:0x0ad8  */
    /* JADX WARN: Code duplicated, block: B:358:0x0ae8  */
    /* JADX WARN: Code duplicated, block: B:362:0x0af6  */
    /* JADX WARN: Code duplicated, block: B:364:0x0afa  */
    /* JADX WARN: Code duplicated, block: B:369:0x0b23  */
    /* JADX WARN: Code duplicated, block: B:374:0x0b4d  */
    /* JADX WARN: Code duplicated, block: B:375:0x0b56  */
    /* JADX WARN: Code duplicated, block: B:378:0x0b5b  */
    /* JADX WARN: Code duplicated, block: B:379:0x0b64  */
    /* JADX WARN: Code duplicated, block: B:382:0x0b6d  */
    /* JADX WARN: Code duplicated, block: B:383:0x0b7b  */
    /* JADX WARN: Code duplicated, block: B:385:0x0b85  */
    /* JADX WARN: Code duplicated, block: B:386:0x0b8d  */
    /* JADX WARN: Code duplicated, block: B:388:0x0b93  */
    /* JADX WARN: Code duplicated, block: B:390:0x0b9d  */
    /* JADX WARN: Code duplicated, block: B:393:0x0ba4  */
    /* JADX WARN: Code duplicated, block: B:395:0x0bb4  */
    /* JADX WARN: Code duplicated, block: B:401:0x0bd9  */
    /* JADX WARN: Code duplicated, block: B:403:0x0bdc  */
    /* JADX WARN: Code duplicated, block: B:405:0x0be4  */
    /* JADX WARN: Code duplicated, block: B:408:0x0beb  */
    /* JADX WARN: Code duplicated, block: B:410:0x0bfb  */
    /* JADX WARN: Code duplicated, block: B:416:0x0c20  */
    /* JADX WARN: Code duplicated, block: B:418:0x0c23  */
    /* JADX WARN: Code duplicated, block: B:420:0x0c27  */
    /* JADX WARN: Code duplicated, block: B:422:0x0c2d  */
    /* JADX WARN: Code duplicated, block: B:425:0x0c38  */
    /* JADX WARN: Code duplicated, block: B:426:0x0c3b  */
    /* JADX WARN: Code duplicated, block: B:429:0x0c56  */
    /* JADX WARN: Code duplicated, block: B:430:0x0c59  */
    /* JADX WARN: Code duplicated, block: B:433:0x0c77  */
    /* JADX WARN: Code duplicated, block: B:435:0x0c7b  */
    /* JADX WARN: Code duplicated, block: B:437:0x0c7e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:438:0x0c80  */
    /* JADX WARN: Code duplicated, block: B:439:0x0c82  */
    /* JADX WARN: Code duplicated, block: B:442:0x0ca6 A[LOOP:11: B:199:0x06bc->B:442:0x0ca6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:475:0x0e56  */
    /* JADX WARN: Code duplicated, block: B:480:0x0e71  */
    /* JADX WARN: Code duplicated, block: B:483:0x0e7b  */
    /* JADX WARN: Code duplicated, block: B:486:0x0e8a  */
    /* JADX WARN: Code duplicated, block: B:489:0x0e91  */
    /* JADX WARN: Code duplicated, block: B:498:0x0ec1  */
    /* JADX WARN: Code duplicated, block: B:501:0x0ec8  */
    /* JADX WARN: Code duplicated, block: B:507:0x0ef0  */
    /* JADX WARN: Code duplicated, block: B:511:0x0f00  */
    /* JADX WARN: Code duplicated, block: B:514:0x0f0d  */
    /* JADX WARN: Code duplicated, block: B:517:0x0f14  */
    /* JADX WARN: Code duplicated, block: B:528:0x0f3f  */
    /* JADX WARN: Code duplicated, block: B:531:0x0f61  */
    /* JADX WARN: Code duplicated, block: B:532:0x0f79  */
    /* JADX WARN: Code duplicated, block: B:534:0x0f7d  */
    /* JADX WARN: Code duplicated, block: B:540:0x0fd9 A[LOOP:5: B:127:0x03e1->B:540:0x0fd9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:642:0x0b09 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:646:0x0fa2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:653:0x0e46 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:657:0x0eb4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:665:0x0933 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:667:0x09b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:671:0x0a0f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:673:0x0a0a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:676:0x0a2e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:678:0x0b27 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:682:0x0c23 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:686:0x0c23 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v74 */
    /* JADX WARN: Type inference failed for: r13v1, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r13v16, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r13v18, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v33 */
    /* JADX WARN: Type inference failed for: r13v36 */
    /* JADX WARN: Type inference failed for: r13v4, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r13v40 */
    /* JADX WARN: Type inference failed for: r13v42 */
    /* JADX WARN: Type inference failed for: r13v43 */
    /* JADX WARN: Type inference failed for: r13v44 */
    /* JADX WARN: Type inference failed for: r13v45 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v17, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r15v18 */
    /* JADX WARN: Type inference failed for: r15v19 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v20 */
    /* JADX WARN: Type inference failed for: r15v32 */
    /* JADX WARN: Type inference failed for: r15v38 */
    /* JADX WARN: Type inference failed for: r15v39 */
    /* JADX WARN: Type inference failed for: r15v40 */
    /* JADX WARN: Type inference failed for: r15v41, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r15v43 */
    /* JADX WARN: Type inference failed for: r15v44, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r15v46 */
    /* JADX WARN: Type inference failed for: r15v47 */
    /* JADX WARN: Type inference failed for: r15v48, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r15v49 */
    /* JADX WARN: Type inference failed for: r15v50 */
    /* JADX WARN: Type inference failed for: r15v51 */
    /* JADX WARN: Type inference failed for: r15v52 */
    /* JADX WARN: Type inference failed for: r15v53 */
    /* JADX WARN: Type inference failed for: r15v54 */
    /* JADX WARN: Type inference failed for: r15v55 */
    /* JADX WARN: Type inference failed for: r15v56 */
    /* JADX WARN: Type inference failed for: r15v57 */
    /* JADX WARN: Type inference failed for: r15v58 */
    /* JADX WARN: Type inference failed for: r15v59 */
    /* JADX WARN: Type inference failed for: r15v60 */
    /* JADX WARN: Type inference failed for: r15v61 */
    /* JADX WARN: Type inference failed for: r15v62 */
    /* JADX WARN: Type inference failed for: r15v63 */
    /* JADX WARN: Type inference failed for: r15v64 */
    /* JADX WARN: Type inference failed for: r15v65 */
    /* JADX WARN: Type inference failed for: r15v66 */
    /* JADX WARN: Type inference failed for: r15v67 */
    /* JADX WARN: Type inference failed for: r15v68 */
    /* JADX WARN: Type inference failed for: r15v69 */
    /* JADX WARN: Type inference failed for: r15v7, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r2v87 */
    /* JADX WARN: Type inference failed for: r2v88 */
    /* JADX WARN: Type inference failed for: r2v89 */
    /* JADX WARN: Type inference failed for: r2v90, types: [java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r2v92 */
    /* JADX WARN: Type inference failed for: r2v94 */
    /* JADX WARN: Type inference failed for: r2v95 */
    /* JADX WARN: Type inference failed for: r3v116 */
    /* JADX WARN: Type inference failed for: r3v117 */
    /* JADX WARN: Type inference failed for: r3v118 */
    /* JADX WARN: Type inference failed for: r3v126 */
    /* JADX WARN: Type inference failed for: r3v127 */
    /* JADX WARN: Type inference failed for: r3v128 */
    /* JADX WARN: Type inference failed for: r3v129 */
    /* JADX WARN: Type inference failed for: r44v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r45v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r46v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r47v15 */
    /* JADX WARN: Type inference failed for: r47v16, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r47v17 */
    /* JADX WARN: Type inference failed for: r48v16 */
    /* JADX WARN: Type inference failed for: r48v17, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r48v18 */
    /* JADX WARN: Type inference failed for: r7v51 */
    /* JADX WARN: Type inference failed for: r7v52 */
    /* JADX WARN: Type inference failed for: r7v54 */
    /* JADX WARN: Type inference failed for: r7v55 */
    /* JADX WARN: Type inference failed for: r7v56 */
    /* JADX WARN: Type inference failed for: r7v57 */
    /* JADX WARN: Type inference failed for: r7v58 */
    /* JADX WARN: Type inference failed for: r8v51 */
    /* JADX WARN: Type inference failed for: r8v52 */
    /* JADX WARN: Type inference failed for: r8v54 */
    /* JADX WARN: Type inference failed for: r8v58 */
    /* JADX WARN: Type inference failed for: r8v59 */
    /* JADX WARN: Type inference failed for: r8v60 */
    /* JADX WARN: Type inference failed for: r8v61 */
    public static c m(XmlPullParser xmlPullParser, Uri uri) throws XmlPullParserException, IOException {
        boolean z7;
        boolean z8;
        ?? r15;
        long j8;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str;
        ArrayList arrayList3;
        long j9;
        String str2;
        String str3;
        String str4;
        String str5;
        ArrayList arrayList4;
        String str6;
        String str7;
        long j10;
        long j11;
        String str8;
        long j12;
        ?? r16;
        ?? r17;
        ?? r18;
        long jD;
        String str9;
        String str10;
        String str11;
        ArrayList arrayList5;
        ?? r19;
        ?? r110;
        ArrayList arrayList6;
        String str12;
        int i8;
        String str13;
        String str14;
        int i9;
        ArrayList arrayList7;
        ArrayList arrayList8;
        String str15;
        String str16;
        int i10;
        int i11;
        String str17;
        long j13;
        ArrayList arrayList9;
        String str18;
        String str19;
        String str20;
        float f8;
        ArrayList arrayList10;
        int i12;
        ArrayList arrayList11;
        ArrayList arrayList12;
        ArrayList arrayList13;
        char c8;
        ArrayList arrayList14;
        String str21;
        ArrayList arrayList15;
        String str22;
        String str23;
        ArrayList arrayList16;
        ArrayList arrayList17;
        ArrayList arrayList18;
        int i13;
        String str24;
        String strJ;
        String strE;
        String str25;
        int i14;
        int i15;
        String str26;
        ArrayList arrayList19;
        int iO;
        int i16;
        int i17;
        int i18;
        ArrayList arrayList20;
        int i19;
        Pair pairCreate;
        C3135s c3135s;
        int iIntValue;
        int iIntValue2;
        int i20;
        int i21;
        int i22;
        f fVar;
        int i23;
        String str27;
        int i24;
        int i25;
        f fVar2;
        int i26;
        String str28;
        s rVar;
        ArrayList arrayList21;
        int i27;
        int i28;
        boolean z9;
        ?? r111;
        f fVar3;
        String str29;
        int i29;
        f fVar4;
        boolean zB;
        String str30;
        byte b8;
        int iO2;
        f fVar5;
        f fVar6;
        String str31;
        int i30;
        String str32;
        int i31;
        ?? r112;
        ArrayList arrayList22;
        int i32;
        ArrayList arrayList23;
        C3135s c3135sA;
        String str33;
        String str34;
        ArrayList arrayList24;
        ArrayList arrayList25;
        String str35;
        ArrayList arrayList26;
        C3136t c3136t;
        s sVar;
        boolean z10;
        long j14;
        H h8;
        List list;
        List list2;
        m kVar;
        int i33;
        String str36;
        int i34;
        C3130m c3130m;
        int size;
        C3130m c3130m2;
        int i35;
        C3130m c3130m3;
        C3130m c3130m4;
        ?? r113;
        long jL;
        ?? r7;
        ?? r114;
        ?? r8;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        String[] strArrSplit = new String[0];
        ?? r10 = 0;
        String attributeValue = xmlPullParser2.getAttributeValue(null, "profiles");
        if (attributeValue != null) {
            strArrSplit = attributeValue.split(",");
        }
        int length = strArrSplit.length;
        int i36 = 0;
        while (true) {
            if (i36 >= length) {
                z7 = false;
                break;
            }
            if (strArrSplit[i36].startsWith("urn:dvb:dash:profile:dvb-dash:")) {
                z7 = true;
                break;
            }
            i36++;
        }
        String attributeValue2 = xmlPullParser2.getAttributeValue(null, "availabilityStartTime");
        long j15 = -9223372036854775807L;
        long jU = attributeValue2 == null ? -9223372036854775807L : M.U(attributeValue2);
        long jI = i(xmlPullParser2, "mediaPresentationDuration", -9223372036854775807L);
        long jI2 = i(xmlPullParser2, "minBufferTime", -9223372036854775807L);
        boolean zEquals = "dynamic".equals(xmlPullParser2.getAttributeValue(null, "type"));
        long jI3 = zEquals ? i(xmlPullParser2, "minimumUpdatePeriod", -9223372036854775807L) : -9223372036854775807L;
        long jI4 = zEquals ? i(xmlPullParser2, "timeShiftBufferDepth", -9223372036854775807L) : -9223372036854775807L;
        long jI5 = zEquals ? i(xmlPullParser2, "suggestedPresentationDelay", -9223372036854775807L) : -9223372036854775807L;
        String attributeValue3 = xmlPullParser2.getAttributeValue(null, "publishTime");
        long jU2 = attributeValue3 == null ? -9223372036854775807L : M.U(attributeValue3);
        long jD2 = zEquals ? 0L : -9223372036854775807L;
        ArrayList arrayListF = p113o3.r.f(new b(z7 ? 1 : Integer.MIN_VALUE, 1, uri.toString(), uri.toString()));
        ArrayList arrayList27 = new ArrayList();
        ArrayList arrayList28 = new ArrayList();
        i iVar = null;
        v vVar = null;
        Uri uriW = null;
        p094m0.C c9 = null;
        long j16 = zEquals ? -9223372036854775807L : 0L;
        boolean z11 = false;
        boolean z12 = false;
        ?? r13 = xmlPullParser2;
        while (true) {
            xmlPullParser.next();
            String str37 = "BaseURL";
            if (C.f(r13, "BaseURL")) {
                if (!z11) {
                    jD2 = d(r13, jD2);
                    z11 = true;
                }
                arrayList28.addAll(e(r13, arrayListF, z7));
                arrayList28 = arrayList28;
                arrayListF = arrayListF;
                arrayList27 = arrayList27;
                r8 = r10;
                z7 = z7;
                r114 = r13;
                j8 = j15;
                j16 = j16;
            } else {
                String str38 = "lang";
                if (C.f(r13, "ProgramInformation")) {
                    String attributeValue4 = r13.getAttributeValue(r10, "moreInformationURL");
                    ?? r47 = attributeValue4 == null ? r10 : attributeValue4;
                    String attributeValue5 = r13.getAttributeValue(r10, "lang");
                    ?? r48 = attributeValue5 == null ? r10 : attributeValue5;
                    ?? NextText = r10;
                    ?? NextText2 = NextText;
                    ?? NextText3 = NextText2;
                    do {
                        xmlPullParser.next();
                        if (C.f(r13, "Title")) {
                            NextText = xmlPullParser.nextText();
                            NextText2 = NextText2;
                            NextText3 = NextText3;
                        } else if (C.f(r13, "Source")) {
                            NextText = NextText;
                            NextText2 = xmlPullParser.nextText();
                            NextText3 = NextText3;
                        } else if (C.f(r13, "Copyright")) {
                            NextText = NextText;
                            NextText2 = NextText2;
                            NextText3 = xmlPullParser.nextText();
                        } else {
                            b(xmlPullParser);
                            NextText = NextText;
                            NextText2 = NextText2;
                            NextText3 = NextText3;
                        }
                    } while (!C.c(r13, "ProgramInformation"));
                    iVar = new i(NextText, NextText2, NextText3, r47, r48);
                } else {
                    String str39 = "schemeIdUri";
                    if (C.f(r13, "UTCTiming")) {
                        vVar = new v(r13.getAttributeValue(r10, "schemeIdUri"), r13.getAttributeValue(r10, "value"));
                    } else if (C.f(r13, "Location")) {
                        uriW = Q3.b.w(uri.toString(), xmlPullParser.nextText());
                    } else if (C.f(r13, "ServiceDescription")) {
                        float f9 = -3.4028235E38f;
                        long j17 = -9223372036854775807L;
                        float f10 = -3.4028235E38f;
                        long j18 = -9223372036854775807L;
                        long jL2 = -9223372036854775807L;
                        while (true) {
                            xmlPullParser.next();
                            long j19 = jD2;
                            if (C.f(r13, "Latency")) {
                                long jL3 = l(r13, "target", -9223372036854775807L);
                                jL = l(r13, "min", -9223372036854775807L);
                                jL2 = l(r13, "max", -9223372036854775807L);
                                j17 = jL3;
                            } else {
                                if (C.f(r13, "PlaybackRate")) {
                                    String attributeValue6 = r13.getAttributeValue(null, "min");
                                    f9 = attributeValue6 == null ? -3.4028235E38f : Float.parseFloat(attributeValue6);
                                    String attributeValue7 = r13.getAttributeValue(null, "max");
                                    f10 = attributeValue7 == null ? -3.4028235E38f : Float.parseFloat(attributeValue7);
                                }
                                jL = j18;
                            }
                            long j20 = jL2;
                            if (C.c(r13, "ServiceDescription")) {
                                p094m0.C c10 = new p094m0.C();
                                c10.f26665a = j17;
                                c10.f26666b = jL;
                                c10.f26667c = j20;
                                c10.f26668d = f9;
                                c10.f26669e = f10;
                                arrayList28 = arrayList28;
                                c9 = c10;
                                arrayListF = arrayListF;
                                arrayList27 = arrayList27;
                                jD2 = j19;
                                r7 = 0;
                                r114 = r13;
                                j8 = -9223372036854775807L;
                                r8 = r7;
                            } else {
                                j18 = jL;
                                jL2 = j20;
                                arrayListF = arrayListF;
                                arrayList27 = arrayList27;
                                jD2 = j19;
                            }
                        }
                    } else {
                        long j21 = jD2;
                        ArrayList arrayList29 = arrayListF;
                        ArrayList arrayList30 = arrayList27;
                        String str40 = "Period";
                        if (!C.f(r13, "Period") || z12) {
                            arrayList28 = arrayList28;
                            arrayListF = arrayList29;
                            arrayList27 = arrayList30;
                            j21 = j21;
                            z8 = false;
                            z7 = z7;
                            r15 = r13;
                            j8 = -9223372036854775807L;
                            b(xmlPullParser);
                            j16 = j16;
                        } else {
                            ArrayList arrayList31 = !arrayList28.isEmpty() ? arrayList28 : arrayList29;
                            String str41 = "id";
                            String attributeValue8 = r13.getAttributeValue(null, "id");
                            long jI6 = i(r13, "start", j16);
                            long j22 = jU != -9223372036854775807L ? jU + jI6 : -9223372036854775807L;
                            long j23 = j16;
                            long jI7 = i(r13, "duration", -9223372036854775807L);
                            ArrayList arrayList32 = new ArrayList();
                            String str42 = "duration";
                            ArrayList arrayList33 = new ArrayList();
                            ArrayList arrayList34 = new ArrayList();
                            long j24 = -9223372036854775807L;
                            String str43 = "value";
                            arrayListF = arrayList29;
                            long jD3 = j21;
                            s sVarS = null;
                            boolean z13 = false;
                            ?? r14 = r13;
                            while (true) {
                                xmlPullParser.next();
                                if (C.f(r14, str37)) {
                                    if (!z13) {
                                        jD3 = d(r14, jD3);
                                        z13 = true;
                                    }
                                    arrayList34.addAll(e(r14, arrayList31, z7));
                                    arrayList28 = arrayList28;
                                    str37 = str37;
                                    arrayList2 = arrayList31;
                                    str6 = str41;
                                    str7 = str40;
                                    arrayList = arrayList30;
                                    arrayList3 = arrayList34;
                                    arrayList4 = arrayList32;
                                    str5 = str42;
                                    j21 = j21;
                                    str2 = str43;
                                    str3 = str39;
                                    str4 = str38;
                                    z7 = z7;
                                    r113 = r14;
                                    j8 = -9223372036854775807L;
                                } else {
                                    ArrayList arrayList35 = arrayList32;
                                    arrayList = arrayList30;
                                    String str44 = "SegmentTemplate";
                                    if (C.f(r14, "AdaptationSet")) {
                                        String str45 = "AdaptationSet";
                                        arrayList28 = arrayList28;
                                        ArrayList arrayList36 = !arrayList34.isEmpty() ? arrayList34 : arrayList31;
                                        long jL4 = l(r14, str41, -1L);
                                        int iG = g(xmlPullParser);
                                        String attributeValue9 = r14.getAttributeValue(null, "mimeType");
                                        arrayList3 = arrayList34;
                                        j9 = jD3;
                                        String attributeValue10 = r14.getAttributeValue(null, "codecs");
                                        String attributeValue11 = r14.getAttributeValue(null, "scte214:supplementalCodecs");
                                        str = str40;
                                        r14.getAttributeValue(null, "scte214:supplementalProfiles");
                                        arrayList2 = arrayList31;
                                        String str46 = str39;
                                        int iK = k(r14, "width", -1);
                                        String str47 = "SegmentList";
                                        String str48 = "SegmentBase";
                                        int iK2 = k(r14, "height", -1);
                                        float fJ = j(r14, -1.0f);
                                        String str49 = "height";
                                        int i37 = iK2;
                                        int iK3 = k(r14, "audioSamplingRate", -1);
                                        String attributeValue12 = r14.getAttributeValue(null, str38);
                                        String str50 = "audioSamplingRate";
                                        String attributeValue13 = r14.getAttributeValue(null, "label");
                                        ArrayList arrayList37 = new ArrayList();
                                        ArrayList arrayList38 = new ArrayList();
                                        String str51 = attributeValue13;
                                        ArrayList arrayList39 = new ArrayList();
                                        ArrayList arrayList40 = new ArrayList();
                                        int i38 = iK3;
                                        ArrayList arrayList41 = new ArrayList();
                                        String str52 = "width";
                                        ArrayList arrayList42 = new ArrayList();
                                        int i39 = iK;
                                        ArrayList arrayList43 = new ArrayList();
                                        String str53 = "scte214:supplementalProfiles";
                                        ArrayList arrayList44 = new ArrayList();
                                        ArrayList arrayList45 = new ArrayList();
                                        ArrayList arrayList46 = arrayList42;
                                        String str54 = "mimeType";
                                        String str55 = "scte214:supplementalCodecs";
                                        String str56 = "codecs";
                                        s sVarS2 = sVarS;
                                        long jD4 = j24;
                                        int i40 = iG;
                                        long j25 = j9;
                                        String str57 = attributeValue12;
                                        String str58 = null;
                                        int iC = -1;
                                        boolean z14 = false;
                                        ?? r115 = r14;
                                        while (true) {
                                            xmlPullParser.next();
                                            if (C.f(r115, str37)) {
                                                if (z14) {
                                                    jD = j25;
                                                } else {
                                                    jD = d(r115, j25);
                                                    z14 = true;
                                                }
                                                arrayList45.addAll(e(r115, arrayList36, z7));
                                            } else {
                                                jD = j25;
                                                if (C.f(r115, "ContentProtection")) {
                                                    Pair pairF = f(xmlPullParser);
                                                    Object obj = pairF.first;
                                                    if (obj != null) {
                                                        str58 = (String) obj;
                                                    }
                                                    Object obj2 = pairF.second;
                                                    if (obj2 != null) {
                                                        arrayList38.add((C3130m) obj2);
                                                    }
                                                } else {
                                                    if (C.f(r115, "ContentComponent")) {
                                                        String attributeValue14 = r115.getAttributeValue(null, str38);
                                                        if (str57 == null) {
                                                            str57 = attributeValue14;
                                                        } else if (attributeValue14 != null) {
                                                            H1.i(str57.equals(attributeValue14));
                                                        }
                                                        int iG2 = g(xmlPullParser);
                                                        if (i40 == -1) {
                                                            i40 = iG2;
                                                        } else if (iG2 != -1) {
                                                            H1.i(i40 == iG2);
                                                        }
                                                    } else {
                                                        if (C.f(r115, "Role")) {
                                                            arrayList41.add(h(r115, "Role"));
                                                            arrayList36 = arrayList36;
                                                        } else {
                                                            String str59 = "AudioChannelConfiguration";
                                                            if (C.f(r115, "AudioChannelConfiguration")) {
                                                                iC = c(r115, attributeValue10);
                                                                arrayList40 = arrayList40;
                                                                str41 = str41;
                                                                arrayList38 = arrayList38;
                                                                str9 = str57;
                                                                j21 = j21;
                                                                str43 = str43;
                                                                str44 = str44;
                                                                str45 = str45;
                                                                j9 = j9;
                                                                str = str;
                                                                str46 = str46;
                                                                str47 = str47;
                                                                str49 = str49;
                                                                str51 = str51;
                                                                arrayList39 = arrayList39;
                                                                i38 = i38;
                                                                str52 = str52;
                                                                i39 = i39;
                                                                str53 = str53;
                                                                arrayList44 = arrayList44;
                                                                str55 = str55;
                                                                str56 = str56;
                                                                str54 = str54;
                                                                arrayList5 = arrayList46;
                                                                str37 = str37;
                                                                arrayList45 = arrayList45;
                                                                arrayList43 = arrayList43;
                                                                attributeValue10 = attributeValue10;
                                                                z7 = z7;
                                                                arrayList41 = arrayList41;
                                                                fJ = fJ;
                                                                str50 = str50;
                                                                arrayList37 = arrayList37;
                                                                str10 = str38;
                                                                r111 = r115;
                                                                str11 = str48;
                                                            } else {
                                                                arrayList36 = arrayList36;
                                                                if (C.f(r115, "Accessibility")) {
                                                                    arrayList40.add(h(r115, "Accessibility"));
                                                                } else {
                                                                    if (C.f(r115, "EssentialProperty")) {
                                                                        ArrayList arrayList47 = arrayList46;
                                                                        arrayList47.add(h(r115, "EssentialProperty"));
                                                                        str37 = str37;
                                                                        arrayList40 = arrayList40;
                                                                        str41 = str41;
                                                                        arrayList38 = arrayList38;
                                                                        str9 = str57;
                                                                        j21 = j21;
                                                                        str43 = str43;
                                                                        str44 = str44;
                                                                        str45 = str45;
                                                                        j9 = j9;
                                                                        str = str;
                                                                        str46 = str46;
                                                                        str47 = str47;
                                                                        str49 = str49;
                                                                        str51 = str51;
                                                                        i38 = i38;
                                                                        str52 = str52;
                                                                        i39 = i39;
                                                                        str53 = str53;
                                                                        arrayList44 = arrayList44;
                                                                        str55 = str55;
                                                                        str56 = str56;
                                                                        str54 = str54;
                                                                        jD4 = jD4;
                                                                        arrayList5 = arrayList47;
                                                                        arrayList45 = arrayList45;
                                                                        arrayList43 = arrayList43;
                                                                        attributeValue10 = attributeValue10;
                                                                        z7 = z7;
                                                                        arrayList41 = arrayList41;
                                                                        fJ = fJ;
                                                                        arrayList37 = arrayList37;
                                                                        arrayList39 = arrayList39;
                                                                        str10 = str38;
                                                                        i40 = i40;
                                                                        r112 = r115;
                                                                        str11 = str48;
                                                                        str50 = str50;
                                                                    } else {
                                                                        str9 = str57;
                                                                        ArrayList arrayList48 = arrayList46;
                                                                        String str60 = "ContentProtection";
                                                                        ArrayList arrayList49 = arrayList48;
                                                                        String str61 = "SupplementalProperty";
                                                                        if (C.f(r115, "SupplementalProperty")) {
                                                                            arrayList43.add(h(r115, "SupplementalProperty"));
                                                                            arrayList5 = arrayList49;
                                                                            str10 = str38;
                                                                            i40 = i40;
                                                                            r112 = r115;
                                                                            str11 = str48;
                                                                        } else {
                                                                            ArrayList arrayList50 = arrayList41;
                                                                            Object obj3 = "Representation";
                                                                            String str62 = "InbandEventStream";
                                                                            if (C.f(r115, "Representation")) {
                                                                                if (arrayList45.isEmpty()) {
                                                                                    arrayList6 = arrayList36;
                                                                                    str12 = null;
                                                                                } else {
                                                                                    str12 = null;
                                                                                    arrayList6 = arrayList45;
                                                                                }
                                                                                String attributeValue15 = r115.getAttributeValue(str12, str41);
                                                                                String str63 = "EssentialProperty";
                                                                                int iK4 = k(r115, "bandwidth", -1);
                                                                                String str64 = str54;
                                                                                ArrayList arrayList51 = arrayList40;
                                                                                String attributeValue16 = r115.getAttributeValue(null, str64);
                                                                                String str65 = attributeValue16 == null ? attributeValue9 : attributeValue16;
                                                                                String str66 = str56;
                                                                                String attributeValue17 = r115.getAttributeValue(null, str66);
                                                                                str56 = str66;
                                                                                String str67 = attributeValue17 == null ? attributeValue10 : attributeValue17;
                                                                                String str68 = str55;
                                                                                String str69 = str38;
                                                                                String attributeValue18 = r115.getAttributeValue(null, str68);
                                                                                String str70 = attributeValue18 == null ? attributeValue11 : attributeValue18;
                                                                                String str71 = str53;
                                                                                ArrayList arrayList52 = arrayList45;
                                                                                r115.getAttributeValue(null, str71);
                                                                                str54 = str64;
                                                                                String str72 = str52;
                                                                                String str73 = str71;
                                                                                int i41 = i39;
                                                                                ArrayList arrayList53 = arrayList38;
                                                                                int iK5 = k(r115, str72, i41);
                                                                                String str74 = str49;
                                                                                int i42 = iK4;
                                                                                int i43 = i37;
                                                                                String str75 = str68;
                                                                                int iK6 = k(r115, str74, i43);
                                                                                String str76 = str72;
                                                                                float f11 = fJ;
                                                                                String str77 = str74;
                                                                                float fJ2 = j(r115, f11);
                                                                                float f12 = f11;
                                                                                String str78 = str50;
                                                                                float f13 = fJ2;
                                                                                int i44 = i38;
                                                                                int i45 = i43;
                                                                                int iK7 = k(r115, str78, i44);
                                                                                int i46 = i44;
                                                                                ArrayList arrayList54 = new ArrayList();
                                                                                ArrayList arrayList55 = new ArrayList();
                                                                                ArrayList arrayList56 = new ArrayList(arrayList49);
                                                                                ArrayList arrayList57 = new ArrayList(arrayList43);
                                                                                ArrayList arrayList58 = new ArrayList();
                                                                                String str79 = null;
                                                                                int i47 = iK6;
                                                                                int i48 = i40;
                                                                                int iC2 = iC;
                                                                                s sVarS3 = sVarS2;
                                                                                long jD5 = jD4;
                                                                                long jD6 = jD;
                                                                                boolean z15 = false;
                                                                                ?? r116 = r115;
                                                                                while (true) {
                                                                                    xmlPullParser.next();
                                                                                    if (C.f(r116, str37)) {
                                                                                        if (!z15) {
                                                                                            jD6 = d(r116, jD6);
                                                                                            z15 = true;
                                                                                        }
                                                                                        arrayList58.addAll(e(r116, arrayList6, z7));
                                                                                    } else if (C.f(r116, str59)) {
                                                                                        iC2 = c(r116, str67);
                                                                                    } else {
                                                                                        String str80 = str48;
                                                                                        if (C.f(r116, str80)) {
                                                                                            str48 = str80;
                                                                                            sVarS3 = q(r116, (r) sVarS3);
                                                                                        } else {
                                                                                            String str81 = str47;
                                                                                            if (C.f(r116, str81)) {
                                                                                                jD5 = d(r116, jD5);
                                                                                                arrayList9 = arrayList6;
                                                                                                String str82 = str63;
                                                                                                str18 = str80;
                                                                                                j21 = j21;
                                                                                                arrayList5 = arrayList49;
                                                                                                String str83 = str45;
                                                                                                str52 = str76;
                                                                                                str17 = str59;
                                                                                                str14 = str83;
                                                                                                str13 = str67;
                                                                                                str16 = str60;
                                                                                                str37 = str37;
                                                                                                str41 = str41;
                                                                                                str51 = str51;
                                                                                                arrayList7 = arrayList39;
                                                                                                fJ = f12;
                                                                                                str50 = str78;
                                                                                                i39 = i41;
                                                                                                str = str;
                                                                                                str46 = str46;
                                                                                                str53 = str73;
                                                                                                arrayList45 = arrayList52;
                                                                                                arrayList8 = arrayList44;
                                                                                                arrayList43 = arrayList43;
                                                                                                str43 = str43;
                                                                                                j9 = j9;
                                                                                                str55 = str75;
                                                                                                str15 = str69;
                                                                                                i10 = i48;
                                                                                                i11 = i47;
                                                                                                j13 = jD6;
                                                                                                i8 = iK7;
                                                                                                z7 = z7;
                                                                                                i9 = i42;
                                                                                                i37 = i45;
                                                                                                attributeValue10 = attributeValue10;
                                                                                                sVarS3 = r(xmlPullParser, (o) sVarS3, j22, jI7, jD6, jD5, jI4);
                                                                                                str23 = str82;
                                                                                                str61 = str61;
                                                                                                str20 = str81;
                                                                                                str19 = str44;
                                                                                                str49 = str77;
                                                                                                f8 = f13;
                                                                                                arrayList10 = arrayList37;
                                                                                                arrayList38 = arrayList53;
                                                                                                str22 = str62;
                                                                                                i12 = iK5;
                                                                                                i38 = i46;
                                                                                                arrayList15 = arrayList54;
                                                                                                arrayList16 = arrayList55;
                                                                                                arrayList17 = arrayList56;
                                                                                                arrayList18 = arrayList57;
                                                                                                i13 = iC2;
                                                                                                c8 = 0;
                                                                                                arrayList14 = arrayList58;
                                                                                            } else {
                                                                                                arrayList5 = arrayList49;
                                                                                                str41 = str41;
                                                                                                i39 = i41;
                                                                                                i8 = iK7;
                                                                                                str13 = str67;
                                                                                                j21 = j21;
                                                                                                str43 = str43;
                                                                                                str14 = str45;
                                                                                                j9 = j9;
                                                                                                str = str;
                                                                                                str46 = str46;
                                                                                                i9 = i42;
                                                                                                str55 = str75;
                                                                                                str51 = str51;
                                                                                                arrayList7 = arrayList39;
                                                                                                i37 = i45;
                                                                                                str53 = str73;
                                                                                                arrayList45 = arrayList52;
                                                                                                arrayList8 = arrayList44;
                                                                                                str15 = str69;
                                                                                                str16 = str60;
                                                                                                attributeValue10 = attributeValue10;
                                                                                                str52 = str76;
                                                                                                fJ = f12;
                                                                                                i10 = i48;
                                                                                                i11 = i47;
                                                                                                str17 = str59;
                                                                                                str37 = str37;
                                                                                                str50 = str78;
                                                                                                arrayList43 = arrayList43;
                                                                                                j13 = jD6;
                                                                                                z7 = z7;
                                                                                                String str84 = str44;
                                                                                                long j26 = jD5;
                                                                                                arrayList9 = arrayList6;
                                                                                                String str85 = str63;
                                                                                                str18 = str80;
                                                                                                if (C.f(r116, str84)) {
                                                                                                    jD5 = d(r116, j26);
                                                                                                    str19 = str84;
                                                                                                    str20 = str81;
                                                                                                    str49 = str77;
                                                                                                    f8 = f13;
                                                                                                    arrayList10 = arrayList37;
                                                                                                    arrayList38 = arrayList53;
                                                                                                    i12 = iK5;
                                                                                                    i38 = i46;
                                                                                                    arrayList11 = arrayList55;
                                                                                                    arrayList12 = arrayList56;
                                                                                                    arrayList13 = arrayList57;
                                                                                                    c8 = 0;
                                                                                                    arrayList14 = arrayList58;
                                                                                                    str21 = str85;
                                                                                                    arrayList15 = arrayList54;
                                                                                                    sVarS3 = s(xmlPullParser, (p) sVarS3, arrayList43, j22, jI7, j13, jD5, jI4);
                                                                                                } else {
                                                                                                    str19 = str84;
                                                                                                    str20 = str81;
                                                                                                    str49 = str77;
                                                                                                    f8 = f13;
                                                                                                    arrayList10 = arrayList37;
                                                                                                    arrayList38 = arrayList53;
                                                                                                    i12 = iK5;
                                                                                                    i38 = i46;
                                                                                                    arrayList11 = arrayList55;
                                                                                                    arrayList12 = arrayList56;
                                                                                                    arrayList13 = arrayList57;
                                                                                                    c8 = 0;
                                                                                                    arrayList14 = arrayList58;
                                                                                                    str21 = str85;
                                                                                                    arrayList15 = arrayList54;
                                                                                                    if (C.f(r116, str16)) {
                                                                                                        Pair pairF2 = f(xmlPullParser);
                                                                                                        Object obj4 = pairF2.first;
                                                                                                        if (obj4 != null) {
                                                                                                            str79 = (String) obj4;
                                                                                                        }
                                                                                                        Object obj5 = pairF2.second;
                                                                                                        if (obj5 != null) {
                                                                                                            arrayList15.add((C3130m) obj5);
                                                                                                        }
                                                                                                        jD5 = j26;
                                                                                                    } else {
                                                                                                        str22 = str62;
                                                                                                        if (C.f(r116, str22)) {
                                                                                                            arrayList16 = arrayList11;
                                                                                                            arrayList16.add(h(r116, str22));
                                                                                                            str23 = str21;
                                                                                                            arrayList17 = arrayList12;
                                                                                                        } else {
                                                                                                            str23 = str21;
                                                                                                            arrayList16 = arrayList11;
                                                                                                            if (C.f(r116, str23)) {
                                                                                                                arrayList17 = arrayList12;
                                                                                                                arrayList17.add(h(r116, str23));
                                                                                                            } else {
                                                                                                                str61 = str61;
                                                                                                                arrayList17 = arrayList12;
                                                                                                                if (C.f(r116, str61)) {
                                                                                                                    arrayList18 = arrayList13;
                                                                                                                    arrayList18.add(h(r116, str61));
                                                                                                                } else {
                                                                                                                    arrayList18 = arrayList13;
                                                                                                                    b(xmlPullParser);
                                                                                                                }
                                                                                                            }
                                                                                                            jD5 = j26;
                                                                                                            i13 = iC2;
                                                                                                        }
                                                                                                        arrayList18 = arrayList13;
                                                                                                        jD5 = j26;
                                                                                                        i13 = iC2;
                                                                                                    }
                                                                                                }
                                                                                                str61 = str61;
                                                                                                str23 = str21;
                                                                                                str22 = str62;
                                                                                                i13 = iC2;
                                                                                                arrayList16 = arrayList11;
                                                                                                arrayList17 = arrayList12;
                                                                                                arrayList18 = arrayList13;
                                                                                            }
                                                                                        }
                                                                                        if (C.c(r116, obj3)) {
                                                                                            if (O.k(str65)) {
                                                                                                strJ = O.b(str13);
                                                                                            } else {
                                                                                                if (O.o(str65)) {
                                                                                                    strJ = O.j(str13);
                                                                                                } else if (O.n(str65) && !O.m(str65)) {
                                                                                                    str24 = str65;
                                                                                                    if ("application/mp4".equals(str24)) {
                                                                                                        strE = O.e(str13);
                                                                                                        if ("text/vtt".equals(strE)) {
                                                                                                            strE = "application/x-mp4-vtt";
                                                                                                        }
                                                                                                        strJ = strE;
                                                                                                    } else {
                                                                                                        strJ = null;
                                                                                                    }
                                                                                                } else {
                                                                                                    str24 = str65;
                                                                                                    strJ = str24;
                                                                                                }
                                                                                                if ("audio/eac3".equals(strJ)) {
                                                                                                    i31 = 0;
                                                                                                    while (true) {
                                                                                                        if (i31 < arrayList18.size()) {
                                                                                                            f fVar7 = (f) arrayList18.get(i31);
                                                                                                            String str86 = fVar7.f3042a;
                                                                                                            boolean zEquals2 = "tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str86);
                                                                                                            String str87 = fVar7.f3043b;
                                                                                                            if ((!zEquals2 && "JOC".equals(str87)) || ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str86) && "ec+3".equals(str87))) {
                                                                                                                strJ = "audio/eac3-joc";
                                                                                                            }
                                                                                                        } else {
                                                                                                            strJ = "audio/eac3";
                                                                                                        }
                                                                                                    }
                                                                                                    if ("audio/eac3-joc".equals(strJ)) {
                                                                                                        str25 = "ec+3";
                                                                                                    } else {
                                                                                                        str25 = str13;
                                                                                                    }
                                                                                                } else {
                                                                                                    str25 = str13;
                                                                                                }
                                                                                                if (O.l(str25, str70)) {
                                                                                                    if (str70 != 0) {
                                                                                                        str32 = str70;
                                                                                                    } else {
                                                                                                        str32 = str25;
                                                                                                    }
                                                                                                    strJ = "video/dolby-vision";
                                                                                                    str25 = str32;
                                                                                                }
                                                                                                i14 = 0;
                                                                                                i15 = 0;
                                                                                                while (true) {
                                                                                                    str26 = "urn:mpeg:dash:role:2011";
                                                                                                    if (i15 < arrayList50.size()) {
                                                                                                        ArrayList arrayList59 = arrayList50;
                                                                                                        fVar6 = (f) arrayList59.get(i15);
                                                                                                        if (!p190y4.k.B("urn:mpeg:dash:role:2011", fVar6.f3042a)) {
                                                                                                            str31 = fVar6.f3043b;
                                                                                                            if (str31 == null && (str31.equals("forced_subtitle") || str31.equals("forced-subtitle"))) {
                                                                                                                i30 = 2;
                                                                                                            } else {
                                                                                                                i30 = 0;
                                                                                                            }
                                                                                                            i14 |= i30;
                                                                                                        }
                                                                                                        i15++;
                                                                                                        arrayList50 = arrayList59;
                                                                                                    } else {
                                                                                                        arrayList19 = arrayList50;
                                                                                                        iO = 0;
                                                                                                        for (i16 = 0; i16 < arrayList19.size(); i16++) {
                                                                                                            fVar5 = (f) arrayList19.get(i16);
                                                                                                            if (p190y4.k.B("urn:mpeg:dash:role:2011", fVar5.f3042a)) {
                                                                                                                iO |= o(fVar5.f3043b);
                                                                                                            }
                                                                                                        }
                                                                                                        i17 = 0;
                                                                                                        i18 = 0;
                                                                                                        while (i18 < arrayList51.size()) {
                                                                                                            ArrayList arrayList60 = arrayList51;
                                                                                                            ArrayList arrayList61 = arrayList19;
                                                                                                            fVar4 = (f) arrayList60.get(i18);
                                                                                                            zB = p190y4.k.B(str26, fVar4.f3042a);
                                                                                                            String str88 = str26;
                                                                                                            str30 = fVar4.f3043b;
                                                                                                            if (zB) {
                                                                                                                iO2 = o(str30);
                                                                                                            } else {
                                                                                                                if (p190y4.k.B("urn:tva:metadata:cs:AudioPurposeCS:2007", fVar4.f3042a)) {
                                                                                                                    if (str30 == null) {
                                                                                                                        switch (str30.hashCode()) {
                                                                                                                            case 49:
                                                                                                                                if (str30.equals("1")) {
                                                                                                                                    b8 = 0;
                                                                                                                                } else {
                                                                                                                                    b8 = -1;
                                                                                                                                }
                                                                                                                                break;
                                                                                                                            case 50:
                                                                                                                                if (str30.equals("2")) {
                                                                                                                                    b8 = 1;
                                                                                                                                } else {
                                                                                                                                    b8 = -1;
                                                                                                                                }
                                                                                                                                break;
                                                                                                                            case 51:
                                                                                                                                if (str30.equals("3")) {
                                                                                                                                    b8 = 2;
                                                                                                                                } else {
                                                                                                                                    b8 = -1;
                                                                                                                                }
                                                                                                                                break;
                                                                                                                            case 52:
                                                                                                                                if (str30.equals("4")) {
                                                                                                                                    b8 = 3;
                                                                                                                                } else {
                                                                                                                                    b8 = -1;
                                                                                                                                }
                                                                                                                                break;
                                                                                                                            case 53:
                                                                                                                            default:
                                                                                                                                b8 = -1;
                                                                                                                                break;
                                                                                                                            case 54:
                                                                                                                                if (str30.equals("6")) {
                                                                                                                                    b8 = 4;
                                                                                                                                } else {
                                                                                                                                    b8 = -1;
                                                                                                                                }
                                                                                                                                break;
                                                                                                                        }
                                                                                                                        switch (b8) {
                                                                                                                            case 0:
                                                                                                                                iO2 = IMediaList.Event.ItemAdded;
                                                                                                                                break;
                                                                                                                            case 1:
                                                                                                                                iO2 = 2048;
                                                                                                                                break;
                                                                                                                            case 2:
                                                                                                                                iO2 = 4;
                                                                                                                                break;
                                                                                                                            case 3:
                                                                                                                                iO2 = 8;
                                                                                                                                break;
                                                                                                                            case 4:
                                                                                                                                iO2 = 1;
                                                                                                                                break;
                                                                                                                            default:
                                                                                                                                iO2 = 0;
                                                                                                                                break;
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        iO2 = 0;
                                                                                                                    }
                                                                                                                }
                                                                                                                i18++;
                                                                                                                arrayList51 = arrayList60;
                                                                                                                str26 = str88;
                                                                                                                arrayList19 = arrayList61;
                                                                                                            }
                                                                                                            i17 |= iO2;
                                                                                                            i18++;
                                                                                                            arrayList51 = arrayList60;
                                                                                                            str26 = str88;
                                                                                                            arrayList19 = arrayList61;
                                                                                                        }
                                                                                                        ArrayList arrayList62 = arrayList19;
                                                                                                        arrayList20 = arrayList51;
                                                                                                        int iP = iO | i17 | p(arrayList17) | p(arrayList18);
                                                                                                        i19 = 0;
                                                                                                        while (true) {
                                                                                                            if (i19 < arrayList17.size()) {
                                                                                                                fVar3 = (f) arrayList17.get(i19);
                                                                                                                if (!p190y4.k.B("http://dashif.org/thumbnail_tile", fVar3.f3042a) || p190y4.k.B("http://dashif.org/guidelines/thumbnail_tile", fVar3.f3042a)) {
                                                                                                                    str29 = fVar3.f3043b;
                                                                                                                    if (str29 != null) {
                                                                                                                        String str89 = M.f28050a;
                                                                                                                        String[] strArrSplit2 = str29.split("x", -1);
                                                                                                                        if (strArrSplit2.length == 2) {
                                                                                                                            try {
                                                                                                                            } catch (NumberFormatException unused) {
                                                                                                                                i29 = 1;
                                                                                                                                i19 += i29;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                    i29 = 1;
                                                                                                                } else {
                                                                                                                    i29 = 1;
                                                                                                                }
                                                                                                                i19 += i29;
                                                                                                            }
                                                                                                        }
                                                                                                        c3135s = new C3135s();
                                                                                                        c3135s.f26983a = attributeValue15;
                                                                                                        c3135s.f26995m = O.p(str24);
                                                                                                        c3135s.f26996n = O.p(strJ);
                                                                                                        c3135s.f26992j = str25;
                                                                                                        c3135s.f26991i = i9;
                                                                                                        c3135s.f26987e = i14;
                                                                                                        c3135s.f26988f = iP;
                                                                                                        c3135s.f26986d = str9;
                                                                                                        if (pairCreate != null) {
                                                                                                            iIntValue = ((Integer) pairCreate.first).intValue();
                                                                                                        } else {
                                                                                                            iIntValue = -1;
                                                                                                        }
                                                                                                        c3135s.f26980M = iIntValue;
                                                                                                        if (pairCreate != null) {
                                                                                                            iIntValue2 = ((Integer) pairCreate.second).intValue();
                                                                                                        } else {
                                                                                                            iIntValue2 = -1;
                                                                                                        }
                                                                                                        c3135s.f26981N = iIntValue2;
                                                                                                        if (O.o(strJ)) {
                                                                                                            c3135s.f27003u = i12;
                                                                                                            c3135s.f27004v = i11;
                                                                                                            c3135s.f27007y = f8;
                                                                                                        } else {
                                                                                                            i20 = i11;
                                                                                                            i21 = i12;
                                                                                                            if (O.k(strJ)) {
                                                                                                                c3135s.f26973F = i13;
                                                                                                                c3135s.f26974G = i8;
                                                                                                            } else if (O.n(strJ)) {
                                                                                                                if ("application/cea-608".equals(strJ)) {
                                                                                                                    i25 = 0;
                                                                                                                    while (true) {
                                                                                                                        if (i25 < arrayList20.size()) {
                                                                                                                            fVar2 = (f) arrayList20.get(i25);
                                                                                                                            if ("urn:scte:dash:cc:cea-608:2015".equals(fVar2.f3042a) || (str28 = fVar2.f3043b) == null) {
                                                                                                                                i26 = 1;
                                                                                                                            } else {
                                                                                                                                Matcher matcher = f3037I.matcher(str28);
                                                                                                                                if (matcher.matches()) {
                                                                                                                                    i24 = Integer.parseInt(matcher.group(1));
                                                                                                                                } else {
                                                                                                                                    i26 = 1;
                                                                                                                                    x.f("MpdParser", "Unable to parse CEA-608 channel number from: ".concat(str28));
                                                                                                                                }
                                                                                                                            }
                                                                                                                            i25 += i26;
                                                                                                                        } else {
                                                                                                                            i24 = -1;
                                                                                                                        }
                                                                                                                    }
                                                                                                                } else if ("application/cea-708".equals(strJ)) {
                                                                                                                    i22 = 0;
                                                                                                                    while (true) {
                                                                                                                        if (i22 < arrayList20.size()) {
                                                                                                                            fVar = (f) arrayList20.get(i22);
                                                                                                                            if ("urn:scte:dash:cc:cea-708:2015".equals(fVar.f3042a) || (str27 = fVar.f3043b) == null) {
                                                                                                                                i23 = 1;
                                                                                                                            } else {
                                                                                                                                Matcher matcher2 = f3038J.matcher(str27);
                                                                                                                                if (matcher2.matches()) {
                                                                                                                                    i24 = Integer.parseInt(matcher2.group(1));
                                                                                                                                } else {
                                                                                                                                    i23 = 1;
                                                                                                                                    x.f("MpdParser", "Unable to parse CEA-708 service block number from: ".concat(str27));
                                                                                                                                }
                                                                                                                            }
                                                                                                                            i22 += i23;
                                                                                                                        } else {
                                                                                                                            i24 = -1;
                                                                                                                        }
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    i24 = -1;
                                                                                                                }
                                                                                                                c3135s.f26978K = i24;
                                                                                                            } else if (O.m(strJ)) {
                                                                                                                c3135s.f27003u = i21;
                                                                                                                c3135s.f27004v = i20;
                                                                                                            }
                                                                                                        }
                                                                                                        C3136t c3136t2 = new C3136t(c3135s);
                                                                                                        if (sVarS3 != null) {
                                                                                                            rVar = sVarS3;
                                                                                                        } else {
                                                                                                            rVar = new r(null, 1L, 0L, 0L, 0L);
                                                                                                        }
                                                                                                        if (arrayList14.isEmpty()) {
                                                                                                            arrayList21 = arrayList9;
                                                                                                        } else {
                                                                                                            arrayList21 = arrayList14;
                                                                                                        }
                                                                                                        d dVar = new d(c3136t2, arrayList21, rVar, str79, arrayList15, arrayList16, arrayList17, arrayList18);
                                                                                                        i27 = O.i(c3136t2.f27041o);
                                                                                                        i28 = i10;
                                                                                                        if (i28 == -1) {
                                                                                                            i28 = i27;
                                                                                                        } else if (i27 != -1) {
                                                                                                            if (i28 == i27) {
                                                                                                                z9 = true;
                                                                                                            } else {
                                                                                                                z9 = false;
                                                                                                            }
                                                                                                            H1.i(z9);
                                                                                                        }
                                                                                                        ArrayList arrayList63 = arrayList8;
                                                                                                        arrayList63.add(dVar);
                                                                                                        r111 = xmlPullParser;
                                                                                                        arrayList44 = arrayList63;
                                                                                                        arrayList40 = arrayList20;
                                                                                                        str9 = str9;
                                                                                                        arrayList41 = arrayList62;
                                                                                                        str11 = str18;
                                                                                                        str45 = str14;
                                                                                                        arrayList39 = arrayList7;
                                                                                                        str10 = str15;
                                                                                                        str44 = str19;
                                                                                                        str47 = str20;
                                                                                                        arrayList37 = arrayList10;
                                                                                                        i40 = i28;
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            str24 = str65;
                                                                                            if ("audio/eac3".equals(strJ)) {
                                                                                                i31 = 0;
                                                                                                while (true) {
                                                                                                    if (i31 < arrayList18.size()) {
                                                                                                        f fVar8 = (f) arrayList18.get(i31);
                                                                                                        String str810 = fVar8.f3042a;
                                                                                                        boolean zEquals3 = "tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str810);
                                                                                                        String str811 = fVar8.f3043b;
                                                                                                        i31 = !zEquals3 ? i31 + 1 : i31 + 1;
                                                                                                        strJ = "audio/eac3-joc";
                                                                                                    } else {
                                                                                                        strJ = "audio/eac3";
                                                                                                    }
                                                                                                }
                                                                                                if ("audio/eac3-joc".equals(strJ)) {
                                                                                                    str25 = "ec+3";
                                                                                                } else {
                                                                                                    str25 = str13;
                                                                                                }
                                                                                            } else {
                                                                                                str25 = str13;
                                                                                            }
                                                                                            if (O.l(str25, str70)) {
                                                                                                if (str70 != 0) {
                                                                                                    str32 = str70;
                                                                                                } else {
                                                                                                    str32 = str25;
                                                                                                }
                                                                                                strJ = "video/dolby-vision";
                                                                                                str25 = str32;
                                                                                            }
                                                                                            i14 = 0;
                                                                                            i15 = 0;
                                                                                            while (true) {
                                                                                                str26 = "urn:mpeg:dash:role:2011";
                                                                                                if (i15 < arrayList50.size()) {
                                                                                                    ArrayList arrayList510 = arrayList50;
                                                                                                    fVar6 = (f) arrayList510.get(i15);
                                                                                                    if (!p190y4.k.B("urn:mpeg:dash:role:2011", fVar6.f3042a)) {
                                                                                                        str31 = fVar6.f3043b;
                                                                                                        if (str31 == null) {
                                                                                                            i30 = 0;
                                                                                                        } else {
                                                                                                            i30 = 2;
                                                                                                        }
                                                                                                        i14 |= i30;
                                                                                                    }
                                                                                                    i15++;
                                                                                                    arrayList50 = arrayList510;
                                                                                                } else {
                                                                                                    arrayList19 = arrayList50;
                                                                                                    iO = 0;
                                                                                                    while (i16 < arrayList19.size()) {
                                                                                                        fVar5 = (f) arrayList19.get(i16);
                                                                                                        if (p190y4.k.B("urn:mpeg:dash:role:2011", fVar5.f3042a)) {
                                                                                                            iO |= o(fVar5.f3043b);
                                                                                                        }
                                                                                                    }
                                                                                                    i17 = 0;
                                                                                                    i18 = 0;
                                                                                                    while (i18 < arrayList51.size()) {
                                                                                                        ArrayList arrayList64 = arrayList51;
                                                                                                        ArrayList arrayList65 = arrayList19;
                                                                                                        fVar4 = (f) arrayList64.get(i18);
                                                                                                        zB = p190y4.k.B(str26, fVar4.f3042a);
                                                                                                        String str812 = str26;
                                                                                                        str30 = fVar4.f3043b;
                                                                                                        if (zB) {
                                                                                                            iO2 = o(str30);
                                                                                                        } else {
                                                                                                            if (p190y4.k.B("urn:tva:metadata:cs:AudioPurposeCS:2007", fVar4.f3042a)) {
                                                                                                                if (str30 == null) {
                                                                                                                    switch (str30.hashCode()) {
                                                                                                                        case 49:
                                                                                                                            if (str30.equals("1")) {
                                                                                                                                b8 = -1;
                                                                                                                            } else {
                                                                                                                                b8 = 0;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 50:
                                                                                                                            if (str30.equals("2")) {
                                                                                                                                b8 = -1;
                                                                                                                            } else {
                                                                                                                                b8 = 1;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 51:
                                                                                                                            if (str30.equals("3")) {
                                                                                                                                b8 = -1;
                                                                                                                            } else {
                                                                                                                                b8 = 2;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 52:
                                                                                                                            if (str30.equals("4")) {
                                                                                                                                b8 = -1;
                                                                                                                            } else {
                                                                                                                                b8 = 3;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 53:
                                                                                                                        default:
                                                                                                                            b8 = -1;
                                                                                                                            break;
                                                                                                                        case 54:
                                                                                                                            if (str30.equals("6")) {
                                                                                                                                b8 = -1;
                                                                                                                            } else {
                                                                                                                                b8 = 4;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                    }
                                                                                                                    switch (b8) {
                                                                                                                        case 0:
                                                                                                                            iO2 = IMediaList.Event.ItemAdded;
                                                                                                                            break;
                                                                                                                        case 1:
                                                                                                                            iO2 = 2048;
                                                                                                                            break;
                                                                                                                        case 2:
                                                                                                                            iO2 = 4;
                                                                                                                            break;
                                                                                                                        case 3:
                                                                                                                            iO2 = 8;
                                                                                                                            break;
                                                                                                                        case 4:
                                                                                                                            iO2 = 1;
                                                                                                                            break;
                                                                                                                        default:
                                                                                                                            iO2 = 0;
                                                                                                                            break;
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    iO2 = 0;
                                                                                                                }
                                                                                                            }
                                                                                                            i18++;
                                                                                                            arrayList51 = arrayList64;
                                                                                                            str26 = str812;
                                                                                                            arrayList19 = arrayList65;
                                                                                                        }
                                                                                                        i17 |= iO2;
                                                                                                        i18++;
                                                                                                        arrayList51 = arrayList64;
                                                                                                        str26 = str812;
                                                                                                        arrayList19 = arrayList65;
                                                                                                    }
                                                                                                    ArrayList arrayList66 = arrayList19;
                                                                                                    arrayList20 = arrayList51;
                                                                                                    int iP2 = iO | i17 | p(arrayList17) | p(arrayList18);
                                                                                                    i19 = 0;
                                                                                                    while (true) {
                                                                                                        if (i19 < arrayList17.size()) {
                                                                                                            fVar3 = (f) arrayList17.get(i19);
                                                                                                            if (p190y4.k.B("http://dashif.org/thumbnail_tile", fVar3.f3042a)) {
                                                                                                                str29 = fVar3.f3043b;
                                                                                                                if (str29 != null) {
                                                                                                                    String str813 = M.f28050a;
                                                                                                                    String[] strArrSplit3 = str29.split("x", -1);
                                                                                                                    pairCreate = strArrSplit3.length == 2 ? Pair.create(Integer.valueOf(Integer.parseInt(strArrSplit3[c8])), Integer.valueOf(Integer.parseInt(strArrSplit3[1]))) : null;
                                                                                                                }
                                                                                                                i29 = 1;
                                                                                                            } else {
                                                                                                                str29 = fVar3.f3043b;
                                                                                                                if (str29 != null) {
                                                                                                                    String str814 = M.f28050a;
                                                                                                                    String[] strArrSplit4 = str29.split("x", -1);
                                                                                                                    if (strArrSplit4.length == 2) {
                                                                                                                    }
                                                                                                                }
                                                                                                                i29 = 1;
                                                                                                            }
                                                                                                            i19 += i29;
                                                                                                        }
                                                                                                    }
                                                                                                    c3135s = new C3135s();
                                                                                                    c3135s.f26983a = attributeValue15;
                                                                                                    c3135s.f26995m = O.p(str24);
                                                                                                    c3135s.f26996n = O.p(strJ);
                                                                                                    c3135s.f26992j = str25;
                                                                                                    c3135s.f26991i = i9;
                                                                                                    c3135s.f26987e = i14;
                                                                                                    c3135s.f26988f = iP2;
                                                                                                    c3135s.f26986d = str9;
                                                                                                    if (pairCreate != null) {
                                                                                                        iIntValue = ((Integer) pairCreate.first).intValue();
                                                                                                    } else {
                                                                                                        iIntValue = -1;
                                                                                                    }
                                                                                                    c3135s.f26980M = iIntValue;
                                                                                                    if (pairCreate != null) {
                                                                                                        iIntValue2 = ((Integer) pairCreate.second).intValue();
                                                                                                    } else {
                                                                                                        iIntValue2 = -1;
                                                                                                    }
                                                                                                    c3135s.f26981N = iIntValue2;
                                                                                                    if (O.o(strJ)) {
                                                                                                        c3135s.f27003u = i12;
                                                                                                        c3135s.f27004v = i11;
                                                                                                        c3135s.f27007y = f8;
                                                                                                    } else {
                                                                                                        i20 = i11;
                                                                                                        i21 = i12;
                                                                                                        if (O.k(strJ)) {
                                                                                                            c3135s.f26973F = i13;
                                                                                                            c3135s.f26974G = i8;
                                                                                                        } else if (O.n(strJ)) {
                                                                                                            if ("application/cea-608".equals(strJ)) {
                                                                                                                i25 = 0;
                                                                                                                while (true) {
                                                                                                                    if (i25 < arrayList20.size()) {
                                                                                                                        fVar2 = (f) arrayList20.get(i25);
                                                                                                                        if ("urn:scte:dash:cc:cea-608:2015".equals(fVar2.f3042a)) {
                                                                                                                            i26 = 1;
                                                                                                                        } else {
                                                                                                                            i26 = 1;
                                                                                                                        }
                                                                                                                        i25 += i26;
                                                                                                                    } else {
                                                                                                                        i24 = -1;
                                                                                                                    }
                                                                                                                }
                                                                                                            } else if ("application/cea-708".equals(strJ)) {
                                                                                                                i22 = 0;
                                                                                                                while (true) {
                                                                                                                    if (i22 < arrayList20.size()) {
                                                                                                                        fVar = (f) arrayList20.get(i22);
                                                                                                                        if ("urn:scte:dash:cc:cea-708:2015".equals(fVar.f3042a)) {
                                                                                                                            i23 = 1;
                                                                                                                        } else {
                                                                                                                            i23 = 1;
                                                                                                                        }
                                                                                                                        i22 += i23;
                                                                                                                    } else {
                                                                                                                        i24 = -1;
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                i24 = -1;
                                                                                                            }
                                                                                                            c3135s.f26978K = i24;
                                                                                                        } else if (O.m(strJ)) {
                                                                                                            c3135s.f27003u = i21;
                                                                                                            c3135s.f27004v = i20;
                                                                                                        }
                                                                                                    }
                                                                                                    C3136t c3136t3 = new C3136t(c3135s);
                                                                                                    if (sVarS3 != null) {
                                                                                                        rVar = sVarS3;
                                                                                                    } else {
                                                                                                        rVar = new r(null, 1L, 0L, 0L, 0L);
                                                                                                    }
                                                                                                    if (arrayList14.isEmpty()) {
                                                                                                        arrayList21 = arrayList14;
                                                                                                    } else {
                                                                                                        arrayList21 = arrayList9;
                                                                                                    }
                                                                                                    d dVar2 = new d(c3136t3, arrayList21, rVar, str79, arrayList15, arrayList16, arrayList17, arrayList18);
                                                                                                    i27 = O.i(c3136t3.f27041o);
                                                                                                    i28 = i10;
                                                                                                    if (i28 == -1) {
                                                                                                        i28 = i27;
                                                                                                    } else if (i27 != -1) {
                                                                                                        if (i28 == i27) {
                                                                                                            z9 = true;
                                                                                                        } else {
                                                                                                            z9 = false;
                                                                                                        }
                                                                                                        H1.i(z9);
                                                                                                    }
                                                                                                    ArrayList arrayList67 = arrayList8;
                                                                                                    arrayList67.add(dVar2);
                                                                                                    r111 = xmlPullParser;
                                                                                                    arrayList44 = arrayList67;
                                                                                                    arrayList40 = arrayList20;
                                                                                                    str9 = str9;
                                                                                                    arrayList41 = arrayList66;
                                                                                                    str11 = str18;
                                                                                                    str45 = str14;
                                                                                                    arrayList39 = arrayList7;
                                                                                                    str10 = str15;
                                                                                                    str44 = str19;
                                                                                                    str47 = str20;
                                                                                                    arrayList37 = arrayList10;
                                                                                                    i40 = i28;
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            r116 = xmlPullParser;
                                                                                            iC2 = i13;
                                                                                            obj3 = obj3;
                                                                                            str62 = str22;
                                                                                            arrayList55 = arrayList16;
                                                                                            str61 = str61;
                                                                                            arrayList56 = arrayList17;
                                                                                            arrayList57 = arrayList18;
                                                                                            arrayList54 = arrayList15;
                                                                                            str73 = str53;
                                                                                            i41 = i39;
                                                                                            z7 = z7;
                                                                                            str77 = str49;
                                                                                            i46 = i38;
                                                                                            jD6 = j13;
                                                                                            arrayList43 = arrayList43;
                                                                                            arrayList52 = arrayList45;
                                                                                            arrayList49 = arrayList5;
                                                                                            arrayList6 = arrayList9;
                                                                                            attributeValue10 = attributeValue10;
                                                                                            i45 = i37;
                                                                                            arrayList58 = arrayList14;
                                                                                            f12 = fJ;
                                                                                            str78 = str50;
                                                                                            str48 = str18;
                                                                                            str59 = str17;
                                                                                            j21 = j21;
                                                                                            str41 = str41;
                                                                                            str51 = str51;
                                                                                            arrayList39 = arrayList7;
                                                                                            str46 = str46;
                                                                                            str = str;
                                                                                            arrayList44 = arrayList8;
                                                                                            i48 = i10;
                                                                                            str69 = str15;
                                                                                            i47 = i11;
                                                                                            i42 = i9;
                                                                                            iK7 = i8;
                                                                                            str44 = str19;
                                                                                            str47 = str20;
                                                                                            arrayList37 = arrayList10;
                                                                                            arrayList53 = arrayList38;
                                                                                            iK5 = i12;
                                                                                            f13 = f8;
                                                                                            str63 = str23;
                                                                                            j9 = j9;
                                                                                            str75 = str55;
                                                                                            str76 = str52;
                                                                                            str37 = str37;
                                                                                            str45 = str14;
                                                                                            str43 = str43;
                                                                                            str60 = str16;
                                                                                            str67 = str13;
                                                                                        }
                                                                                    }
                                                                                    str41 = str41;
                                                                                    i39 = i41;
                                                                                    i8 = iK7;
                                                                                    str13 = str67;
                                                                                    str61 = str61;
                                                                                    j21 = j21;
                                                                                    str43 = str43;
                                                                                    str19 = str44;
                                                                                    str14 = str45;
                                                                                    j9 = j9;
                                                                                    str = str;
                                                                                    str46 = str46;
                                                                                    str20 = str47;
                                                                                    str49 = str77;
                                                                                    i9 = i42;
                                                                                    str55 = str75;
                                                                                    f8 = f13;
                                                                                    arrayList10 = arrayList37;
                                                                                    str51 = str51;
                                                                                    arrayList7 = arrayList39;
                                                                                    i37 = i45;
                                                                                    str53 = str73;
                                                                                    arrayList38 = arrayList53;
                                                                                    arrayList45 = arrayList52;
                                                                                    arrayList8 = arrayList44;
                                                                                    str15 = str69;
                                                                                    str16 = str60;
                                                                                    attributeValue10 = attributeValue10;
                                                                                    i12 = iK5;
                                                                                    str52 = str76;
                                                                                    fJ = f12;
                                                                                    i38 = i46;
                                                                                    arrayList17 = arrayList56;
                                                                                    i10 = i48;
                                                                                    i11 = i47;
                                                                                    i13 = iC2;
                                                                                    c8 = 0;
                                                                                    str17 = str59;
                                                                                    arrayList5 = arrayList49;
                                                                                    str37 = str37;
                                                                                    str50 = str78;
                                                                                    arrayList43 = arrayList43;
                                                                                    j13 = jD6;
                                                                                    z7 = z7;
                                                                                    arrayList14 = arrayList58;
                                                                                    str22 = str62;
                                                                                    str23 = str63;
                                                                                    arrayList16 = arrayList55;
                                                                                    arrayList18 = arrayList57;
                                                                                    str18 = str48;
                                                                                    arrayList9 = arrayList6;
                                                                                    arrayList15 = arrayList54;
                                                                                    if (C.c(r116, obj3)) {
                                                                                        if (O.k(str65)) {
                                                                                            strJ = O.b(str13);
                                                                                        } else {
                                                                                            if (O.o(str65)) {
                                                                                                strJ = O.j(str13);
                                                                                            } else if (O.n(str65)) {
                                                                                                str24 = str65;
                                                                                                strJ = str24;
                                                                                            } else {
                                                                                                str24 = str65;
                                                                                                if ("application/mp4".equals(str24)) {
                                                                                                    strE = O.e(str13);
                                                                                                    if ("text/vtt".equals(strE)) {
                                                                                                        strE = "application/x-mp4-vtt";
                                                                                                    }
                                                                                                    strJ = strE;
                                                                                                } else {
                                                                                                    strJ = null;
                                                                                                }
                                                                                            }
                                                                                            if ("audio/eac3".equals(strJ)) {
                                                                                                i31 = 0;
                                                                                                while (true) {
                                                                                                    if (i31 < arrayList18.size()) {
                                                                                                        f fVar9 = (f) arrayList18.get(i31);
                                                                                                        String str815 = fVar9.f3042a;
                                                                                                        boolean zEquals4 = "tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str815);
                                                                                                        String str816 = fVar9.f3043b;
                                                                                                        if (!zEquals4) {
                                                                                                        }
                                                                                                        strJ = "audio/eac3-joc";
                                                                                                    } else {
                                                                                                        strJ = "audio/eac3";
                                                                                                    }
                                                                                                }
                                                                                                if ("audio/eac3-joc".equals(strJ)) {
                                                                                                    str25 = "ec+3";
                                                                                                } else {
                                                                                                    str25 = str13;
                                                                                                }
                                                                                            } else {
                                                                                                str25 = str13;
                                                                                            }
                                                                                            if (O.l(str25, str70)) {
                                                                                                if (str70 != 0) {
                                                                                                    str32 = str70;
                                                                                                } else {
                                                                                                    str32 = str25;
                                                                                                }
                                                                                                strJ = "video/dolby-vision";
                                                                                                str25 = str32;
                                                                                            }
                                                                                            i14 = 0;
                                                                                            i15 = 0;
                                                                                            while (true) {
                                                                                                str26 = "urn:mpeg:dash:role:2011";
                                                                                                if (i15 < arrayList50.size()) {
                                                                                                    ArrayList arrayList511 = arrayList50;
                                                                                                    fVar6 = (f) arrayList511.get(i15);
                                                                                                    if (!p190y4.k.B("urn:mpeg:dash:role:2011", fVar6.f3042a)) {
                                                                                                        str31 = fVar6.f3043b;
                                                                                                        if (str31 == null) {
                                                                                                            i30 = 0;
                                                                                                        } else {
                                                                                                            i30 = 2;
                                                                                                        }
                                                                                                        i14 |= i30;
                                                                                                    }
                                                                                                    i15++;
                                                                                                    arrayList50 = arrayList511;
                                                                                                } else {
                                                                                                    arrayList19 = arrayList50;
                                                                                                    iO = 0;
                                                                                                    while (i16 < arrayList19.size()) {
                                                                                                        fVar5 = (f) arrayList19.get(i16);
                                                                                                        if (p190y4.k.B("urn:mpeg:dash:role:2011", fVar5.f3042a)) {
                                                                                                            iO |= o(fVar5.f3043b);
                                                                                                        }
                                                                                                    }
                                                                                                    i17 = 0;
                                                                                                    i18 = 0;
                                                                                                    while (i18 < arrayList51.size()) {
                                                                                                        ArrayList arrayList68 = arrayList51;
                                                                                                        ArrayList arrayList69 = arrayList19;
                                                                                                        fVar4 = (f) arrayList68.get(i18);
                                                                                                        zB = p190y4.k.B(str26, fVar4.f3042a);
                                                                                                        String str817 = str26;
                                                                                                        str30 = fVar4.f3043b;
                                                                                                        if (zB) {
                                                                                                            iO2 = o(str30);
                                                                                                        } else {
                                                                                                            if (p190y4.k.B("urn:tva:metadata:cs:AudioPurposeCS:2007", fVar4.f3042a)) {
                                                                                                                if (str30 == null) {
                                                                                                                    switch (str30.hashCode()) {
                                                                                                                        case 49:
                                                                                                                            if (str30.equals("1")) {
                                                                                                                                b8 = -1;
                                                                                                                            } else {
                                                                                                                                b8 = 0;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 50:
                                                                                                                            if (str30.equals("2")) {
                                                                                                                                b8 = -1;
                                                                                                                            } else {
                                                                                                                                b8 = 1;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 51:
                                                                                                                            if (str30.equals("3")) {
                                                                                                                                b8 = -1;
                                                                                                                            } else {
                                                                                                                                b8 = 2;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 52:
                                                                                                                            if (str30.equals("4")) {
                                                                                                                                b8 = -1;
                                                                                                                            } else {
                                                                                                                                b8 = 3;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 53:
                                                                                                                        default:
                                                                                                                            b8 = -1;
                                                                                                                            break;
                                                                                                                        case 54:
                                                                                                                            if (str30.equals("6")) {
                                                                                                                                b8 = -1;
                                                                                                                            } else {
                                                                                                                                b8 = 4;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                    }
                                                                                                                    switch (b8) {
                                                                                                                        case 0:
                                                                                                                            iO2 = IMediaList.Event.ItemAdded;
                                                                                                                            break;
                                                                                                                        case 1:
                                                                                                                            iO2 = 2048;
                                                                                                                            break;
                                                                                                                        case 2:
                                                                                                                            iO2 = 4;
                                                                                                                            break;
                                                                                                                        case 3:
                                                                                                                            iO2 = 8;
                                                                                                                            break;
                                                                                                                        case 4:
                                                                                                                            iO2 = 1;
                                                                                                                            break;
                                                                                                                        default:
                                                                                                                            iO2 = 0;
                                                                                                                            break;
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    iO2 = 0;
                                                                                                                }
                                                                                                            }
                                                                                                            i18++;
                                                                                                            arrayList51 = arrayList68;
                                                                                                            str26 = str817;
                                                                                                            arrayList19 = arrayList69;
                                                                                                        }
                                                                                                        i17 |= iO2;
                                                                                                        i18++;
                                                                                                        arrayList51 = arrayList68;
                                                                                                        str26 = str817;
                                                                                                        arrayList19 = arrayList69;
                                                                                                    }
                                                                                                    ArrayList arrayList610 = arrayList19;
                                                                                                    arrayList20 = arrayList51;
                                                                                                    int iP3 = iO | i17 | p(arrayList17) | p(arrayList18);
                                                                                                    i19 = 0;
                                                                                                    while (true) {
                                                                                                        if (i19 < arrayList17.size()) {
                                                                                                            fVar3 = (f) arrayList17.get(i19);
                                                                                                            if (p190y4.k.B("http://dashif.org/thumbnail_tile", fVar3.f3042a)) {
                                                                                                                str29 = fVar3.f3043b;
                                                                                                                if (str29 != null) {
                                                                                                                    String str818 = M.f28050a;
                                                                                                                    String[] strArrSplit5 = str29.split("x", -1);
                                                                                                                    if (strArrSplit5.length == 2) {
                                                                                                                    }
                                                                                                                }
                                                                                                                i29 = 1;
                                                                                                            } else {
                                                                                                                str29 = fVar3.f3043b;
                                                                                                                if (str29 != null) {
                                                                                                                    String str819 = M.f28050a;
                                                                                                                    String[] strArrSplit6 = str29.split("x", -1);
                                                                                                                    if (strArrSplit6.length == 2) {
                                                                                                                    }
                                                                                                                }
                                                                                                                i29 = 1;
                                                                                                            }
                                                                                                            i19 += i29;
                                                                                                        }
                                                                                                    }
                                                                                                    c3135s = new C3135s();
                                                                                                    c3135s.f26983a = attributeValue15;
                                                                                                    c3135s.f26995m = O.p(str24);
                                                                                                    c3135s.f26996n = O.p(strJ);
                                                                                                    c3135s.f26992j = str25;
                                                                                                    c3135s.f26991i = i9;
                                                                                                    c3135s.f26987e = i14;
                                                                                                    c3135s.f26988f = iP3;
                                                                                                    c3135s.f26986d = str9;
                                                                                                    if (pairCreate != null) {
                                                                                                        iIntValue = ((Integer) pairCreate.first).intValue();
                                                                                                    } else {
                                                                                                        iIntValue = -1;
                                                                                                    }
                                                                                                    c3135s.f26980M = iIntValue;
                                                                                                    if (pairCreate != null) {
                                                                                                        iIntValue2 = ((Integer) pairCreate.second).intValue();
                                                                                                    } else {
                                                                                                        iIntValue2 = -1;
                                                                                                    }
                                                                                                    c3135s.f26981N = iIntValue2;
                                                                                                    if (O.o(strJ)) {
                                                                                                        c3135s.f27003u = i12;
                                                                                                        c3135s.f27004v = i11;
                                                                                                        c3135s.f27007y = f8;
                                                                                                    } else {
                                                                                                        i20 = i11;
                                                                                                        i21 = i12;
                                                                                                        if (O.k(strJ)) {
                                                                                                            c3135s.f26973F = i13;
                                                                                                            c3135s.f26974G = i8;
                                                                                                        } else if (O.n(strJ)) {
                                                                                                            if ("application/cea-608".equals(strJ)) {
                                                                                                                i25 = 0;
                                                                                                                while (true) {
                                                                                                                    if (i25 < arrayList20.size()) {
                                                                                                                        fVar2 = (f) arrayList20.get(i25);
                                                                                                                        if ("urn:scte:dash:cc:cea-608:2015".equals(fVar2.f3042a)) {
                                                                                                                            i26 = 1;
                                                                                                                        } else {
                                                                                                                            i26 = 1;
                                                                                                                        }
                                                                                                                        i25 += i26;
                                                                                                                    } else {
                                                                                                                        i24 = -1;
                                                                                                                    }
                                                                                                                }
                                                                                                            } else if ("application/cea-708".equals(strJ)) {
                                                                                                                i22 = 0;
                                                                                                                while (true) {
                                                                                                                    if (i22 < arrayList20.size()) {
                                                                                                                        fVar = (f) arrayList20.get(i22);
                                                                                                                        if ("urn:scte:dash:cc:cea-708:2015".equals(fVar.f3042a)) {
                                                                                                                            i23 = 1;
                                                                                                                        } else {
                                                                                                                            i23 = 1;
                                                                                                                        }
                                                                                                                        i22 += i23;
                                                                                                                    } else {
                                                                                                                        i24 = -1;
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                i24 = -1;
                                                                                                            }
                                                                                                            c3135s.f26978K = i24;
                                                                                                        } else if (O.m(strJ)) {
                                                                                                            c3135s.f27003u = i21;
                                                                                                            c3135s.f27004v = i20;
                                                                                                        }
                                                                                                    }
                                                                                                    C3136t c3136t4 = new C3136t(c3135s);
                                                                                                    if (sVarS3 != null) {
                                                                                                        rVar = sVarS3;
                                                                                                    } else {
                                                                                                        rVar = new r(null, 1L, 0L, 0L, 0L);
                                                                                                    }
                                                                                                    if (arrayList14.isEmpty()) {
                                                                                                        arrayList21 = arrayList14;
                                                                                                    } else {
                                                                                                        arrayList21 = arrayList9;
                                                                                                    }
                                                                                                    d dVar3 = new d(c3136t4, arrayList21, rVar, str79, arrayList15, arrayList16, arrayList17, arrayList18);
                                                                                                    i27 = O.i(c3136t4.f27041o);
                                                                                                    i28 = i10;
                                                                                                    if (i28 == -1) {
                                                                                                        i28 = i27;
                                                                                                    } else if (i27 != -1) {
                                                                                                        if (i28 == i27) {
                                                                                                            z9 = true;
                                                                                                        } else {
                                                                                                            z9 = false;
                                                                                                        }
                                                                                                        H1.i(z9);
                                                                                                    }
                                                                                                    ArrayList arrayList611 = arrayList8;
                                                                                                    arrayList611.add(dVar3);
                                                                                                    r111 = xmlPullParser;
                                                                                                    arrayList44 = arrayList611;
                                                                                                    arrayList40 = arrayList20;
                                                                                                    str9 = str9;
                                                                                                    arrayList41 = arrayList610;
                                                                                                    str11 = str18;
                                                                                                    str45 = str14;
                                                                                                    arrayList39 = arrayList7;
                                                                                                    str10 = str15;
                                                                                                    str44 = str19;
                                                                                                    str47 = str20;
                                                                                                    arrayList37 = arrayList10;
                                                                                                    i40 = i28;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        str24 = str65;
                                                                                        if ("audio/eac3".equals(strJ)) {
                                                                                            i31 = 0;
                                                                                            while (true) {
                                                                                                if (i31 < arrayList18.size()) {
                                                                                                    f fVar10 = (f) arrayList18.get(i31);
                                                                                                    String str8110 = fVar10.f3042a;
                                                                                                    boolean zEquals5 = "tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str8110);
                                                                                                    String str8111 = fVar10.f3043b;
                                                                                                    if (!zEquals5) {
                                                                                                    }
                                                                                                    strJ = "audio/eac3-joc";
                                                                                                } else {
                                                                                                    strJ = "audio/eac3";
                                                                                                }
                                                                                            }
                                                                                            if ("audio/eac3-joc".equals(strJ)) {
                                                                                                str25 = "ec+3";
                                                                                            } else {
                                                                                                str25 = str13;
                                                                                            }
                                                                                        } else {
                                                                                            str25 = str13;
                                                                                        }
                                                                                        if (O.l(str25, str70)) {
                                                                                            if (str70 != 0) {
                                                                                                str32 = str70;
                                                                                            } else {
                                                                                                str32 = str25;
                                                                                            }
                                                                                            strJ = "video/dolby-vision";
                                                                                            str25 = str32;
                                                                                        }
                                                                                        i14 = 0;
                                                                                        i15 = 0;
                                                                                        while (true) {
                                                                                            str26 = "urn:mpeg:dash:role:2011";
                                                                                            if (i15 < arrayList50.size()) {
                                                                                                ArrayList arrayList512 = arrayList50;
                                                                                                fVar6 = (f) arrayList512.get(i15);
                                                                                                if (!p190y4.k.B("urn:mpeg:dash:role:2011", fVar6.f3042a)) {
                                                                                                    str31 = fVar6.f3043b;
                                                                                                    if (str31 == null) {
                                                                                                        i30 = 0;
                                                                                                    } else {
                                                                                                        i30 = 2;
                                                                                                    }
                                                                                                    i14 |= i30;
                                                                                                }
                                                                                                i15++;
                                                                                                arrayList50 = arrayList512;
                                                                                            } else {
                                                                                                arrayList19 = arrayList50;
                                                                                                iO = 0;
                                                                                                while (i16 < arrayList19.size()) {
                                                                                                    fVar5 = (f) arrayList19.get(i16);
                                                                                                    if (p190y4.k.B("urn:mpeg:dash:role:2011", fVar5.f3042a)) {
                                                                                                        iO |= o(fVar5.f3043b);
                                                                                                    }
                                                                                                }
                                                                                                i17 = 0;
                                                                                                i18 = 0;
                                                                                                while (i18 < arrayList51.size()) {
                                                                                                    ArrayList arrayList612 = arrayList51;
                                                                                                    ArrayList arrayList613 = arrayList19;
                                                                                                    fVar4 = (f) arrayList612.get(i18);
                                                                                                    zB = p190y4.k.B(str26, fVar4.f3042a);
                                                                                                    String str8112 = str26;
                                                                                                    str30 = fVar4.f3043b;
                                                                                                    if (zB) {
                                                                                                        iO2 = o(str30);
                                                                                                    } else {
                                                                                                        if (p190y4.k.B("urn:tva:metadata:cs:AudioPurposeCS:2007", fVar4.f3042a)) {
                                                                                                            if (str30 == null) {
                                                                                                                switch (str30.hashCode()) {
                                                                                                                    case 49:
                                                                                                                        if (str30.equals("1")) {
                                                                                                                            b8 = -1;
                                                                                                                        } else {
                                                                                                                            b8 = 0;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 50:
                                                                                                                        if (str30.equals("2")) {
                                                                                                                            b8 = -1;
                                                                                                                        } else {
                                                                                                                            b8 = 1;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 51:
                                                                                                                        if (str30.equals("3")) {
                                                                                                                            b8 = -1;
                                                                                                                        } else {
                                                                                                                            b8 = 2;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 52:
                                                                                                                        if (str30.equals("4")) {
                                                                                                                            b8 = -1;
                                                                                                                        } else {
                                                                                                                            b8 = 3;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 53:
                                                                                                                    default:
                                                                                                                        b8 = -1;
                                                                                                                        break;
                                                                                                                    case 54:
                                                                                                                        if (str30.equals("6")) {
                                                                                                                            b8 = -1;
                                                                                                                        } else {
                                                                                                                            b8 = 4;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                }
                                                                                                                switch (b8) {
                                                                                                                    case 0:
                                                                                                                        iO2 = IMediaList.Event.ItemAdded;
                                                                                                                        break;
                                                                                                                    case 1:
                                                                                                                        iO2 = 2048;
                                                                                                                        break;
                                                                                                                    case 2:
                                                                                                                        iO2 = 4;
                                                                                                                        break;
                                                                                                                    case 3:
                                                                                                                        iO2 = 8;
                                                                                                                        break;
                                                                                                                    case 4:
                                                                                                                        iO2 = 1;
                                                                                                                        break;
                                                                                                                    default:
                                                                                                                        iO2 = 0;
                                                                                                                        break;
                                                                                                                }
                                                                                                            } else {
                                                                                                                iO2 = 0;
                                                                                                            }
                                                                                                        }
                                                                                                        i18++;
                                                                                                        arrayList51 = arrayList612;
                                                                                                        str26 = str8112;
                                                                                                        arrayList19 = arrayList613;
                                                                                                    }
                                                                                                    i17 |= iO2;
                                                                                                    i18++;
                                                                                                    arrayList51 = arrayList612;
                                                                                                    str26 = str8112;
                                                                                                    arrayList19 = arrayList613;
                                                                                                }
                                                                                                ArrayList arrayList614 = arrayList19;
                                                                                                arrayList20 = arrayList51;
                                                                                                int iP4 = iO | i17 | p(arrayList17) | p(arrayList18);
                                                                                                i19 = 0;
                                                                                                while (true) {
                                                                                                    if (i19 < arrayList17.size()) {
                                                                                                        fVar3 = (f) arrayList17.get(i19);
                                                                                                        if (p190y4.k.B("http://dashif.org/thumbnail_tile", fVar3.f3042a)) {
                                                                                                            str29 = fVar3.f3043b;
                                                                                                            if (str29 != null) {
                                                                                                                String str8113 = M.f28050a;
                                                                                                                String[] strArrSplit7 = str29.split("x", -1);
                                                                                                                if (strArrSplit7.length == 2) {
                                                                                                                }
                                                                                                            }
                                                                                                            i29 = 1;
                                                                                                        } else {
                                                                                                            str29 = fVar3.f3043b;
                                                                                                            if (str29 != null) {
                                                                                                                String str8114 = M.f28050a;
                                                                                                                String[] strArrSplit8 = str29.split("x", -1);
                                                                                                                if (strArrSplit8.length == 2) {
                                                                                                                }
                                                                                                            }
                                                                                                            i29 = 1;
                                                                                                        }
                                                                                                        i19 += i29;
                                                                                                    }
                                                                                                }
                                                                                                c3135s = new C3135s();
                                                                                                c3135s.f26983a = attributeValue15;
                                                                                                c3135s.f26995m = O.p(str24);
                                                                                                c3135s.f26996n = O.p(strJ);
                                                                                                c3135s.f26992j = str25;
                                                                                                c3135s.f26991i = i9;
                                                                                                c3135s.f26987e = i14;
                                                                                                c3135s.f26988f = iP4;
                                                                                                c3135s.f26986d = str9;
                                                                                                if (pairCreate != null) {
                                                                                                    iIntValue = ((Integer) pairCreate.first).intValue();
                                                                                                } else {
                                                                                                    iIntValue = -1;
                                                                                                }
                                                                                                c3135s.f26980M = iIntValue;
                                                                                                if (pairCreate != null) {
                                                                                                    iIntValue2 = ((Integer) pairCreate.second).intValue();
                                                                                                } else {
                                                                                                    iIntValue2 = -1;
                                                                                                }
                                                                                                c3135s.f26981N = iIntValue2;
                                                                                                if (O.o(strJ)) {
                                                                                                    c3135s.f27003u = i12;
                                                                                                    c3135s.f27004v = i11;
                                                                                                    c3135s.f27007y = f8;
                                                                                                } else {
                                                                                                    i20 = i11;
                                                                                                    i21 = i12;
                                                                                                    if (O.k(strJ)) {
                                                                                                        c3135s.f26973F = i13;
                                                                                                        c3135s.f26974G = i8;
                                                                                                    } else if (O.n(strJ)) {
                                                                                                        if ("application/cea-608".equals(strJ)) {
                                                                                                            i25 = 0;
                                                                                                            while (true) {
                                                                                                                if (i25 < arrayList20.size()) {
                                                                                                                    fVar2 = (f) arrayList20.get(i25);
                                                                                                                    if ("urn:scte:dash:cc:cea-608:2015".equals(fVar2.f3042a)) {
                                                                                                                        i26 = 1;
                                                                                                                    } else {
                                                                                                                        i26 = 1;
                                                                                                                    }
                                                                                                                    i25 += i26;
                                                                                                                } else {
                                                                                                                    i24 = -1;
                                                                                                                }
                                                                                                            }
                                                                                                        } else if ("application/cea-708".equals(strJ)) {
                                                                                                            i22 = 0;
                                                                                                            while (true) {
                                                                                                                if (i22 < arrayList20.size()) {
                                                                                                                    fVar = (f) arrayList20.get(i22);
                                                                                                                    if ("urn:scte:dash:cc:cea-708:2015".equals(fVar.f3042a)) {
                                                                                                                        i23 = 1;
                                                                                                                    } else {
                                                                                                                        i23 = 1;
                                                                                                                    }
                                                                                                                    i22 += i23;
                                                                                                                } else {
                                                                                                                    i24 = -1;
                                                                                                                }
                                                                                                            }
                                                                                                        } else {
                                                                                                            i24 = -1;
                                                                                                        }
                                                                                                        c3135s.f26978K = i24;
                                                                                                    } else if (O.m(strJ)) {
                                                                                                        c3135s.f27003u = i21;
                                                                                                        c3135s.f27004v = i20;
                                                                                                    }
                                                                                                }
                                                                                                C3136t c3136t5 = new C3136t(c3135s);
                                                                                                if (sVarS3 != null) {
                                                                                                    rVar = sVarS3;
                                                                                                } else {
                                                                                                    rVar = new r(null, 1L, 0L, 0L, 0L);
                                                                                                }
                                                                                                if (arrayList14.isEmpty()) {
                                                                                                    arrayList21 = arrayList14;
                                                                                                } else {
                                                                                                    arrayList21 = arrayList9;
                                                                                                }
                                                                                                d dVar4 = new d(c3136t5, arrayList21, rVar, str79, arrayList15, arrayList16, arrayList17, arrayList18);
                                                                                                i27 = O.i(c3136t5.f27041o);
                                                                                                i28 = i10;
                                                                                                if (i28 == -1) {
                                                                                                    i28 = i27;
                                                                                                } else if (i27 != -1) {
                                                                                                    if (i28 == i27) {
                                                                                                        z9 = true;
                                                                                                    } else {
                                                                                                        z9 = false;
                                                                                                    }
                                                                                                    H1.i(z9);
                                                                                                }
                                                                                                ArrayList arrayList615 = arrayList8;
                                                                                                arrayList615.add(dVar4);
                                                                                                r111 = xmlPullParser;
                                                                                                arrayList44 = arrayList615;
                                                                                                arrayList40 = arrayList20;
                                                                                                str9 = str9;
                                                                                                arrayList41 = arrayList614;
                                                                                                str11 = str18;
                                                                                                str45 = str14;
                                                                                                arrayList39 = arrayList7;
                                                                                                str10 = str15;
                                                                                                str44 = str19;
                                                                                                str47 = str20;
                                                                                                arrayList37 = arrayList10;
                                                                                                i40 = i28;
                                                                                            }
                                                                                        }
                                                                                    } else {
                                                                                        r116 = xmlPullParser;
                                                                                        iC2 = i13;
                                                                                        obj3 = obj3;
                                                                                        str62 = str22;
                                                                                        arrayList55 = arrayList16;
                                                                                        str61 = str61;
                                                                                        arrayList56 = arrayList17;
                                                                                        arrayList57 = arrayList18;
                                                                                        arrayList54 = arrayList15;
                                                                                        str73 = str53;
                                                                                        i41 = i39;
                                                                                        z7 = z7;
                                                                                        str77 = str49;
                                                                                        i46 = i38;
                                                                                        jD6 = j13;
                                                                                        arrayList43 = arrayList43;
                                                                                        arrayList52 = arrayList45;
                                                                                        arrayList49 = arrayList5;
                                                                                        arrayList6 = arrayList9;
                                                                                        attributeValue10 = attributeValue10;
                                                                                        i45 = i37;
                                                                                        arrayList58 = arrayList14;
                                                                                        f12 = fJ;
                                                                                        str78 = str50;
                                                                                        str48 = str18;
                                                                                        str59 = str17;
                                                                                        j21 = j21;
                                                                                        str41 = str41;
                                                                                        str51 = str51;
                                                                                        arrayList39 = arrayList7;
                                                                                        str46 = str46;
                                                                                        str = str;
                                                                                        arrayList44 = arrayList8;
                                                                                        i48 = i10;
                                                                                        str69 = str15;
                                                                                        i47 = i11;
                                                                                        i42 = i9;
                                                                                        iK7 = i8;
                                                                                        str44 = str19;
                                                                                        str47 = str20;
                                                                                        arrayList37 = arrayList10;
                                                                                        arrayList53 = arrayList38;
                                                                                        iK5 = i12;
                                                                                        f13 = f8;
                                                                                        str63 = str23;
                                                                                        j9 = j9;
                                                                                        str75 = str55;
                                                                                        str76 = str52;
                                                                                        str37 = str37;
                                                                                        str45 = str14;
                                                                                        str43 = str43;
                                                                                        str60 = str16;
                                                                                        str67 = str13;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                str37 = str37;
                                                                                arrayList40 = arrayList40;
                                                                                str41 = str41;
                                                                                str10 = str38;
                                                                                arrayList38 = arrayList38;
                                                                                ?? r9 = r115;
                                                                                j21 = j21;
                                                                                str43 = str43;
                                                                                String str90 = str44;
                                                                                str45 = str45;
                                                                                j9 = j9;
                                                                                str = str;
                                                                                str46 = str46;
                                                                                String str91 = str47;
                                                                                str11 = str48;
                                                                                str49 = str49;
                                                                                ArrayList arrayList70 = arrayList37;
                                                                                str51 = str51;
                                                                                arrayList39 = arrayList39;
                                                                                i38 = i38;
                                                                                str52 = str52;
                                                                                i39 = i39;
                                                                                str53 = str53;
                                                                                arrayList44 = arrayList44;
                                                                                str55 = str55;
                                                                                str56 = str56;
                                                                                str54 = str54;
                                                                                arrayList5 = arrayList49;
                                                                                arrayList45 = arrayList45;
                                                                                arrayList43 = arrayList43;
                                                                                attributeValue10 = attributeValue10;
                                                                                z7 = z7;
                                                                                fJ = fJ;
                                                                                str50 = str50;
                                                                                i40 = i40;
                                                                                if (C.f(r9, str11)) {
                                                                                    sVarS2 = q(r9, (r) sVarS2);
                                                                                    r110 = r9;
                                                                                    arrayList41 = arrayList50;
                                                                                    str44 = str90;
                                                                                    str47 = str91;
                                                                                } else {
                                                                                    str47 = str91;
                                                                                    if (C.f(r9, str47)) {
                                                                                        jD4 = d(r9, jD4);
                                                                                        r110 = r9;
                                                                                        arrayList41 = arrayList50;
                                                                                        sVarS2 = r(xmlPullParser, (o) sVarS2, j22, jI7, jD, jD4, jI4);
                                                                                        str44 = str90;
                                                                                    } else {
                                                                                        r19 = r9;
                                                                                        jD4 = jD4;
                                                                                        arrayList41 = arrayList50;
                                                                                        if (C.f(r19, str90)) {
                                                                                            jD4 = d(r19, jD4);
                                                                                            str44 = str90;
                                                                                            sVarS2 = s(xmlPullParser, (p) sVarS2, arrayList43, j22, jI7, jD, jD4, jI4);
                                                                                            r110 = r19;
                                                                                        } else {
                                                                                            str44 = str90;
                                                                                            if (C.f(r19, "InbandEventStream")) {
                                                                                                arrayList39 = arrayList39;
                                                                                                arrayList39.add(h(r19, "InbandEventStream"));
                                                                                                str10 = str10;
                                                                                                arrayList37 = arrayList70;
                                                                                                r112 = r19;
                                                                                            } else {
                                                                                                arrayList39 = arrayList39;
                                                                                                if (C.f(r19, "Label")) {
                                                                                                    str10 = str10;
                                                                                                    String attributeValue19 = r19.getAttributeValue(null, str10);
                                                                                                    String text = HttpUrl.FRAGMENT_ENCODE_SET;
                                                                                                    do {
                                                                                                        xmlPullParser.next();
                                                                                                        if (xmlPullParser.getEventType() == 4) {
                                                                                                            text = xmlPullParser.getText();
                                                                                                        } else {
                                                                                                            b(xmlPullParser);
                                                                                                        }
                                                                                                    } while (!C.c(r19, "Label"));
                                                                                                    arrayList37 = arrayList70;
                                                                                                    arrayList37.add(new C3139w(attributeValue19, text));
                                                                                                    r112 = r19;
                                                                                                } else {
                                                                                                    str10 = str10;
                                                                                                    arrayList37 = arrayList70;
                                                                                                    if (C.e(xmlPullParser)) {
                                                                                                        r112 = r19;
                                                                                                        b(xmlPullParser);
                                                                                                        r112 = r19;
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                arrayList37 = arrayList70;
                                                                                r111 = r110;
                                                                            }
                                                                        }
                                                                    }
                                                                    r112 = r19;
                                                                    jD4 = jD4;
                                                                    i40 = i40;
                                                                    str45 = str45;
                                                                    r111 = r112;
                                                                }
                                                            }
                                                        }
                                                        str9 = str57;
                                                        arrayList5 = arrayList46;
                                                        str10 = str38;
                                                        i40 = i40;
                                                        r112 = r115;
                                                        str11 = str48;
                                                        r112 = r19;
                                                        jD4 = jD4;
                                                        i40 = i40;
                                                        str45 = str45;
                                                        r111 = r112;
                                                    }
                                                    if (C.c(r111, str45)) {
                                                        arrayList22 = new ArrayList(arrayList44.size());
                                                        i32 = 0;
                                                        while (i32 < arrayList44.size()) {
                                                            arrayList23 = arrayList44;
                                                            d dVar5 = (d) arrayList23.get(i32);
                                                            c3135sA = dVar5.f3027a.a();
                                                            str33 = str51;
                                                            if (str33 == null && arrayList37.isEmpty()) {
                                                                c3135sA.f26984b = str33;
                                                            } else {
                                                                c3135sA.f26985c = H.s(arrayList37);
                                                            }
                                                            str34 = dVar5.f3030d;
                                                            if (str34 == null) {
                                                                str34 = str58;
                                                            }
                                                            arrayList24 = dVar5.f3031e;
                                                            ArrayList arrayList71 = arrayList38;
                                                            arrayList24.addAll(arrayList71);
                                                            if (arrayList24.isEmpty()) {
                                                                arrayList44 = arrayList23;
                                                                arrayList25 = arrayList37;
                                                                str51 = str33;
                                                                str35 = str10;
                                                            } else {
                                                                i33 = 0;
                                                                while (true) {
                                                                    if (i33 < arrayList24.size()) {
                                                                        c3130m4 = (C3130m) arrayList24.get(i33);
                                                                        arrayList44 = arrayList23;
                                                                        arrayList25 = arrayList37;
                                                                        if (AbstractC3124g.f26854c.equals(c3130m4.f26954H) || (str36 = c3130m4.f26955I) == null) {
                                                                            i33++;
                                                                            arrayList23 = arrayList44;
                                                                            arrayList37 = arrayList25;
                                                                        } else {
                                                                            arrayList24.remove(i33);
                                                                        }
                                                                    } else {
                                                                        arrayList44 = arrayList23;
                                                                        arrayList25 = arrayList37;
                                                                        str36 = null;
                                                                    }
                                                                }
                                                                if (str36 != null) {
                                                                    i34 = 0;
                                                                    while (i34 < arrayList24.size()) {
                                                                        c3130m = (C3130m) arrayList24.get(i34);
                                                                        String str92 = str33;
                                                                        if (!AbstractC3124g.f26853b.equals(c3130m.f26954H) && c3130m.f26955I == null) {
                                                                            arrayList24.set(i34, new C3130m(AbstractC3124g.f26854c, str36, c3130m.f26956J, c3130m.f26957K));
                                                                        }
                                                                        i34++;
                                                                        str33 = str92;
                                                                        str10 = str10;
                                                                    }
                                                                }
                                                                str51 = str33;
                                                                str35 = str10;
                                                                for (size = arrayList24.size() - 1; size >= 0; size--) {
                                                                    c3130m2 = (C3130m) arrayList24.get(size);
                                                                    if (c3130m2.f26957K == null) {
                                                                        for (i35 = 0; i35 < arrayList24.size(); i35++) {
                                                                            c3130m3 = (C3130m) arrayList24.get(i35);
                                                                            if (c3130m3.f26957K == null && c3130m2.f26957K == null && c3130m3.a(c3130m2.f26954H)) {
                                                                                arrayList24.remove(size);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                c3135sA.f27000r = new C3131n(str34, arrayList24);
                                                            }
                                                            arrayList26 = dVar5.f3032f;
                                                            arrayList26.addAll(arrayList39);
                                                            c3136t = new C3136t(c3135sA);
                                                            sVar = dVar5.f3029c;
                                                            z10 = sVar instanceof r;
                                                            j14 = dVar5.f3033g;
                                                            h8 = dVar5.f3028b;
                                                            list = dVar5.f3034h;
                                                            list2 = dVar5.f3035i;
                                                            if (z10) {
                                                                kVar = new l(j14, c3136t, h8, (r) sVar, arrayList26, list, list2);
                                                            } else {
                                                                if (sVar instanceof n) {
                                                                    throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
                                                                }
                                                                kVar = new k(j14, c3136t, h8, (n) sVar, arrayList26, list, list2);
                                                            }
                                                            arrayList22.add(kVar);
                                                            i32++;
                                                            arrayList38 = arrayList71;
                                                            str10 = str35;
                                                            arrayList37 = arrayList25;
                                                        }
                                                        arrayList35.add(new a(jL4, i40, arrayList22, arrayList40, arrayList5, arrayList43));
                                                        arrayList4 = arrayList35;
                                                        str5 = str42;
                                                        str6 = str41;
                                                        str3 = str46;
                                                        str4 = str10;
                                                        str2 = str43;
                                                        j8 = -9223372036854775807L;
                                                        r18 = r111;
                                                    } else {
                                                        arrayList37 = arrayList37;
                                                        str38 = str10;
                                                        str48 = str11;
                                                        r115 = r111;
                                                        str53 = str53;
                                                        i39 = i39;
                                                        arrayList40 = arrayList40;
                                                        z7 = z7;
                                                        str55 = str55;
                                                        i38 = i38;
                                                        str52 = str52;
                                                        arrayList41 = arrayList41;
                                                        arrayList43 = arrayList43;
                                                        arrayList45 = arrayList45;
                                                        attributeValue10 = attributeValue10;
                                                        fJ = fJ;
                                                        str50 = str50;
                                                        str37 = str37;
                                                        str54 = str54;
                                                        str56 = str56;
                                                        str41 = str41;
                                                        str51 = str51;
                                                        str46 = str46;
                                                        str = str;
                                                        arrayList44 = arrayList44;
                                                        arrayList38 = arrayList38;
                                                        str44 = str44;
                                                        str45 = str45;
                                                        arrayList39 = arrayList39;
                                                        str49 = str49;
                                                        j9 = j9;
                                                        arrayList46 = arrayList5;
                                                        j25 = jD;
                                                        arrayList36 = arrayList36;
                                                        j21 = j21;
                                                        str43 = str43;
                                                        str47 = str47;
                                                        str57 = str9;
                                                    }
                                                }
                                            }
                                            arrayList40 = arrayList40;
                                            str41 = str41;
                                            arrayList38 = arrayList38;
                                            str9 = str57;
                                            j21 = j21;
                                            str43 = str43;
                                            str44 = str44;
                                            str45 = str45;
                                            j9 = j9;
                                            str = str;
                                            str46 = str46;
                                            str47 = str47;
                                            str49 = str49;
                                            str51 = str51;
                                            arrayList39 = arrayList39;
                                            i38 = i38;
                                            str52 = str52;
                                            i39 = i39;
                                            str53 = str53;
                                            arrayList44 = arrayList44;
                                            str55 = str55;
                                            str56 = str56;
                                            str54 = str54;
                                            arrayList5 = arrayList46;
                                            str37 = str37;
                                            arrayList45 = arrayList45;
                                            arrayList43 = arrayList43;
                                            attributeValue10 = attributeValue10;
                                            z7 = z7;
                                            arrayList41 = arrayList41;
                                            fJ = fJ;
                                            str50 = str50;
                                            arrayList37 = arrayList37;
                                            str10 = str38;
                                            r111 = r115;
                                            str11 = str48;
                                            if (C.c(r111, str45)) {
                                                arrayList22 = new ArrayList(arrayList44.size());
                                                i32 = 0;
                                                while (i32 < arrayList44.size()) {
                                                    arrayList23 = arrayList44;
                                                    d dVar6 = (d) arrayList23.get(i32);
                                                    c3135sA = dVar6.f3027a.a();
                                                    str33 = str51;
                                                    if (str33 == null) {
                                                        c3135sA.f26985c = H.s(arrayList37);
                                                    } else {
                                                        c3135sA.f26985c = H.s(arrayList37);
                                                    }
                                                    str34 = dVar6.f3030d;
                                                    if (str34 == null) {
                                                        str34 = str58;
                                                    }
                                                    arrayList24 = dVar6.f3031e;
                                                    ArrayList arrayList72 = arrayList38;
                                                    arrayList24.addAll(arrayList72);
                                                    if (arrayList24.isEmpty()) {
                                                        i33 = 0;
                                                        while (true) {
                                                            if (i33 < arrayList24.size()) {
                                                                c3130m4 = (C3130m) arrayList24.get(i33);
                                                                arrayList44 = arrayList23;
                                                                arrayList25 = arrayList37;
                                                                if (AbstractC3124g.f26854c.equals(c3130m4.f26954H)) {
                                                                }
                                                                i33++;
                                                                arrayList23 = arrayList44;
                                                                arrayList37 = arrayList25;
                                                            } else {
                                                                arrayList44 = arrayList23;
                                                                arrayList25 = arrayList37;
                                                                str36 = null;
                                                            }
                                                        }
                                                        if (str36 != null) {
                                                            i34 = 0;
                                                            while (i34 < arrayList24.size()) {
                                                                c3130m = (C3130m) arrayList24.get(i34);
                                                                String str93 = str33;
                                                                if (!AbstractC3124g.f26853b.equals(c3130m.f26954H)) {
                                                                }
                                                                i34++;
                                                                str33 = str93;
                                                                str10 = str10;
                                                            }
                                                        }
                                                        str51 = str33;
                                                        str35 = str10;
                                                        while (size >= 0) {
                                                            c3130m2 = (C3130m) arrayList24.get(size);
                                                            if (c3130m2.f26957K == null) {
                                                                while (i35 < arrayList24.size()) {
                                                                    c3130m3 = (C3130m) arrayList24.get(i35);
                                                                    if (c3130m3.f26957K == null) {
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        c3135sA.f27000r = new C3131n(str34, arrayList24);
                                                    } else {
                                                        arrayList44 = arrayList23;
                                                        arrayList25 = arrayList37;
                                                        str51 = str33;
                                                        str35 = str10;
                                                    }
                                                    arrayList26 = dVar6.f3032f;
                                                    arrayList26.addAll(arrayList39);
                                                    c3136t = new C3136t(c3135sA);
                                                    sVar = dVar6.f3029c;
                                                    z10 = sVar instanceof r;
                                                    j14 = dVar6.f3033g;
                                                    h8 = dVar6.f3028b;
                                                    list = dVar6.f3034h;
                                                    list2 = dVar6.f3035i;
                                                    if (z10) {
                                                        kVar = new l(j14, c3136t, h8, (r) sVar, arrayList26, list, list2);
                                                    } else {
                                                        if (sVar instanceof n) {
                                                            throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
                                                        }
                                                        kVar = new k(j14, c3136t, h8, (n) sVar, arrayList26, list, list2);
                                                    }
                                                    arrayList22.add(kVar);
                                                    i32++;
                                                    arrayList38 = arrayList72;
                                                    str10 = str35;
                                                    arrayList37 = arrayList25;
                                                }
                                                arrayList35.add(new a(jL4, i40, arrayList22, arrayList40, arrayList5, arrayList43));
                                                arrayList4 = arrayList35;
                                                str5 = str42;
                                                str6 = str41;
                                                str3 = str46;
                                                str4 = str10;
                                                str2 = str43;
                                                j8 = -9223372036854775807L;
                                                r18 = r111;
                                            } else {
                                                arrayList37 = arrayList37;
                                                str38 = str10;
                                                str48 = str11;
                                                r115 = r111;
                                                str53 = str53;
                                                i39 = i39;
                                                arrayList40 = arrayList40;
                                                z7 = z7;
                                                str55 = str55;
                                                i38 = i38;
                                                str52 = str52;
                                                arrayList41 = arrayList41;
                                                arrayList43 = arrayList43;
                                                arrayList45 = arrayList45;
                                                attributeValue10 = attributeValue10;
                                                fJ = fJ;
                                                str50 = str50;
                                                str37 = str37;
                                                str54 = str54;
                                                str56 = str56;
                                                str41 = str41;
                                                str51 = str51;
                                                str46 = str46;
                                                str = str;
                                                arrayList44 = arrayList44;
                                                arrayList38 = arrayList38;
                                                str44 = str44;
                                                str45 = str45;
                                                arrayList39 = arrayList39;
                                                str49 = str49;
                                                j9 = j9;
                                                arrayList46 = arrayList5;
                                                j25 = jD;
                                                arrayList36 = arrayList36;
                                                j21 = j21;
                                                str43 = str43;
                                                str47 = str47;
                                                str57 = str9;
                                            }
                                        }
                                    } else {
                                        arrayList28 = arrayList28;
                                        str37 = str37;
                                        arrayList2 = arrayList31;
                                        String str94 = str41;
                                        str = str40;
                                        String str95 = str39;
                                        String str96 = str38;
                                        arrayList3 = arrayList34;
                                        j21 = j21;
                                        String str97 = str43;
                                        j9 = jD3;
                                        z7 = z7;
                                        ArrayList arrayList73 = arrayList35;
                                        ?? r117 = r14;
                                        if (C.f(r117, "EventStream")) {
                                            String str98 = str95;
                                            String attributeValue20 = r117.getAttributeValue(null, str98);
                                            if (attributeValue20 == null) {
                                                attributeValue20 = HttpUrl.FRAGMENT_ENCODE_SET;
                                            }
                                            String attributeValue21 = r117.getAttributeValue(null, str97);
                                            if (attributeValue21 == null) {
                                                attributeValue21 = HttpUrl.FRAGMENT_ENCODE_SET;
                                            }
                                            long jL5 = l(r117, "timescale", 1L);
                                            long j27 = 0;
                                            long jL6 = l(r117, "presentationTimeOffset", 0L);
                                            ArrayList arrayList74 = new ArrayList();
                                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(IMediaList.Event.ItemAdded);
                                            while (true) {
                                                xmlPullParser.next();
                                                if (C.f(r117, "Event")) {
                                                    long jL7 = l(r117, str94, j27);
                                                    str8 = str42;
                                                    long jL8 = l(r117, str8, -9223372036854775807L);
                                                    long jL9 = l(r117, "presentationTime", 0L);
                                                    String str99 = M.f28050a;
                                                    RoundingMode roundingMode = RoundingMode.DOWN;
                                                    long jZ = M.Z(jL8, 1000L, jL5, roundingMode);
                                                    long jZ2 = M.Z(jL9 - jL6, 1000000L, jL5, roundingMode);
                                                    String attributeValue22 = r117.getAttributeValue(null, "messageData");
                                                    if (attributeValue22 == null) {
                                                        attributeValue22 = null;
                                                    }
                                                    byteArrayOutputStream.reset();
                                                    XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
                                                    xmlSerializerNewSerializer.setOutput(byteArrayOutputStream, StandardCharsets.UTF_8.name());
                                                    xmlPullParser.nextToken();
                                                    while (!C.c(r117, "Event")) {
                                                        switch (xmlPullParser.getEventType()) {
                                                            case 0:
                                                                jL5 = jL5;
                                                                j12 = jL6;
                                                                xmlSerializerNewSerializer.startDocument(null, Boolean.FALSE);
                                                                break;
                                                            case 1:
                                                                jL5 = jL5;
                                                                j12 = jL6;
                                                                xmlSerializerNewSerializer.endDocument();
                                                                break;
                                                            case 2:
                                                                xmlSerializerNewSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                                                                int i49 = 0;
                                                                while (i49 < xmlPullParser.getAttributeCount()) {
                                                                    xmlSerializerNewSerializer.attribute(r117.getAttributeNamespace(i49), r117.getAttributeName(i49), r117.getAttributeValue(i49));
                                                                    i49++;
                                                                    jL6 = jL6;
                                                                }
                                                                j12 = jL6;
                                                                break;
                                                            case 3:
                                                                xmlSerializerNewSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                                                                j12 = jL6;
                                                                break;
                                                            case 4:
                                                                xmlSerializerNewSerializer.text(xmlPullParser.getText());
                                                                j12 = jL6;
                                                                break;
                                                            case 5:
                                                                xmlSerializerNewSerializer.cdsect(xmlPullParser.getText());
                                                                j12 = jL6;
                                                                break;
                                                            case 6:
                                                                xmlSerializerNewSerializer.entityRef(xmlPullParser.getText());
                                                                j12 = jL6;
                                                                break;
                                                            case 7:
                                                                xmlSerializerNewSerializer.ignorableWhitespace(xmlPullParser.getText());
                                                                j12 = jL6;
                                                                break;
                                                            case 8:
                                                                xmlSerializerNewSerializer.processingInstruction(xmlPullParser.getText());
                                                                j12 = jL6;
                                                                break;
                                                            case 9:
                                                                xmlSerializerNewSerializer.comment(xmlPullParser.getText());
                                                                j12 = jL6;
                                                                break;
                                                            case 10:
                                                                xmlSerializerNewSerializer.docdecl(xmlPullParser.getText());
                                                                j12 = jL6;
                                                                break;
                                                            default:
                                                                j12 = jL6;
                                                                break;
                                                        }
                                                        xmlPullParser.nextToken();
                                                        jL5 = jL5;
                                                        jL6 = j12;
                                                    }
                                                    j10 = jL5;
                                                    j11 = jL6;
                                                    xmlSerializerNewSerializer.flush();
                                                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                                                    Long lValueOf = Long.valueOf(jZ2);
                                                    if (attributeValue22 != null) {
                                                        byteArray = attributeValue22.getBytes(StandardCharsets.UTF_8);
                                                    }
                                                    arrayList74.add(Pair.create(lValueOf, new p049g1.a(attributeValue20, attributeValue21, jZ, jL7, byteArray)));
                                                } else {
                                                    j10 = jL5;
                                                    j11 = jL6;
                                                    str8 = str42;
                                                    b(xmlPullParser);
                                                }
                                                if (C.c(r117, "EventStream")) {
                                                    long[] jArr = new long[arrayList74.size()];
                                                    p049g1.a[] aVarArr = new p049g1.a[arrayList74.size()];
                                                    for (int i50 = 0; i50 < arrayList74.size(); i50++) {
                                                        Pair pair = (Pair) arrayList74.get(i50);
                                                        jArr[i50] = ((Long) pair.first).longValue();
                                                        aVarArr[i50] = (p049g1.a) pair.second;
                                                    }
                                                    ArrayList arrayList75 = arrayList33;
                                                    arrayList75.add(new g(attributeValue20, attributeValue21, jArr, aVarArr));
                                                    arrayList33 = arrayList75;
                                                    str2 = str97;
                                                    str5 = str8;
                                                    arrayList4 = arrayList73;
                                                    str6 = str94;
                                                    str3 = str98;
                                                    str4 = str96;
                                                    j8 = -9223372036854775807L;
                                                    r18 = r117;
                                                } else {
                                                    str42 = str8;
                                                    arrayList73 = arrayList73;
                                                    jL5 = j10;
                                                    jL6 = j11;
                                                    str98 = str98;
                                                    j27 = 0;
                                                }
                                            }
                                        } else {
                                            String str100 = str42;
                                            ArrayList arrayList76 = arrayList33;
                                            if (C.f(r117, "SegmentBase")) {
                                                sVarS = q(r117, null);
                                                arrayList33 = arrayList76;
                                                str2 = str97;
                                                str5 = str100;
                                                jD3 = j9;
                                                arrayList4 = arrayList73;
                                                str6 = str94;
                                                str3 = str95;
                                                str7 = str;
                                                str4 = str96;
                                                j8 = -9223372036854775807L;
                                                r113 = r117;
                                            } else {
                                                if (C.f(r117, "SegmentList")) {
                                                    long jD7 = d(r117, -9223372036854775807L);
                                                    j8 = -9223372036854775807L;
                                                    arrayList33 = arrayList76;
                                                    str2 = str97;
                                                    str3 = str95;
                                                    str4 = str96;
                                                    sVarS = r(xmlPullParser, null, j22, jI7, j9, jD7, jI4);
                                                    str5 = str100;
                                                    j24 = jD7;
                                                    jD3 = j9;
                                                    arrayList4 = arrayList73;
                                                    str6 = str94;
                                                    r16 = r117;
                                                } else {
                                                    arrayList33 = arrayList76;
                                                    str2 = str97;
                                                    str3 = str95;
                                                    str4 = str96;
                                                    j8 = -9223372036854775807L;
                                                    if (C.f(r117, str44)) {
                                                        long jD8 = d(r117, -9223372036854775807L);
                                                        F f14 = H.f31804H;
                                                        str5 = str100;
                                                        arrayList4 = arrayList73;
                                                        str6 = str94;
                                                        sVarS = s(xmlPullParser, null, d0.f31844K, j22, jI7, j9, jD8, jI4);
                                                        j24 = jD8;
                                                        r17 = r117;
                                                    } else {
                                                        str5 = str100;
                                                        arrayList4 = arrayList73;
                                                        str6 = str94;
                                                        if (C.f(r117, "AssetIdentifier")) {
                                                            h(r117, "AssetIdentifier");
                                                            r17 = r117;
                                                        } else {
                                                            b(xmlPullParser);
                                                            r17 = r117;
                                                        }
                                                    }
                                                    jD3 = j9;
                                                    r16 = r17;
                                                }
                                                str7 = str;
                                                r113 = r16;
                                            }
                                        }
                                    }
                                    r17 = r18;
                                    jD3 = j9;
                                    r16 = r17;
                                    str7 = str;
                                    r113 = r16;
                                }
                                if (C.c(r113, str7)) {
                                    Pair pairCreate2 = Pair.create(new h(attributeValue8, jI6, arrayList4, arrayList33), Long.valueOf(jI7));
                                    h hVar = (h) pairCreate2.first;
                                    if (hVar.f3050b != j8) {
                                        z8 = false;
                                        long jLongValue = ((Long) pairCreate2.second).longValue();
                                        j16 = jLongValue == j8 ? j8 : hVar.f3050b + jLongValue;
                                        arrayList27 = arrayList;
                                        arrayList27.add(hVar);
                                        r15 = r113;
                                    } else {
                                        if (!zEquals) {
                                            throw P.b("Unable to determine start of period " + arrayList.size(), null);
                                        }
                                        j16 = j23;
                                        arrayList27 = arrayList;
                                        z8 = false;
                                        z12 = true;
                                        r15 = r113;
                                    }
                                } else {
                                    str40 = str7;
                                    r14 = r113;
                                    str38 = str4;
                                    str43 = str2;
                                    z7 = z7;
                                    str39 = str3;
                                    str41 = str6;
                                    str42 = str5;
                                    arrayList30 = arrayList;
                                    arrayList32 = arrayList4;
                                    arrayList28 = arrayList28;
                                    arrayList34 = arrayList3;
                                    arrayList31 = arrayList2;
                                    str37 = str37;
                                    j21 = j21;
                                }
                            }
                        }
                        jD2 = j21;
                        r8 = z8;
                        r114 = r15;
                    }
                }
                r7 = r10;
                r114 = r13;
                j8 = -9223372036854775807L;
                r8 = r7;
            }
            if (C.c(r114, "MPD")) {
                if (jI == j8) {
                    if (j16 != j8) {
                        jI = j16;
                    } else if (!zEquals) {
                        throw P.b("Unable to determine duration of static manifest.", r8);
                    }
                }
                if (arrayList27.isEmpty()) {
                    throw P.b("No periods found.", r8);
                }
                return new c(jU, jI, jI2, zEquals, jI3, jI4, jI5, jU2, iVar, vVar, c9, uriW, arrayList27);
            }
            r10 = r8;
            arrayList27 = arrayList27;
            z7 = z7;
            arrayListF = arrayListF;
            arrayList28 = arrayList28;
            long j28 = j8;
            r13 = r114;
            j16 = j16;
            j15 = j28;
        }
    }

    public static j n(XmlPullParser xmlPullParser, String str, String str2) {
        long j8;
        long j9;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] strArrSplit = attributeValue2.split("-");
            j8 = Long.parseLong(strArrSplit[0]);
            if (strArrSplit.length == 2) {
                j9 = (Long.parseLong(strArrSplit[1]) - j8) + 1;
            }
            return new j(j8, j9, attributeValue);
        }
        j8 = 0;
        j9 = -1;
        return new j(j8, j9, attributeValue);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int o(String str) {
        if (str == null) {
            return 0;
        }
        byte b8 = -1;
        switch (str.hashCode()) {
            case -2060497896:
                if (str.equals("subtitle")) {
                    b8 = 0;
                }
                break;
            case -1724546052:
                if (str.equals("description")) {
                    b8 = 1;
                }
                break;
            case -1580883024:
                if (str.equals("enhanced-audio-intelligibility")) {
                    b8 = 2;
                }
                break;
            case -1574842690:
                if (str.equals("forced_subtitle")) {
                    b8 = 3;
                }
                break;
            case -1408024454:
                if (str.equals("alternate")) {
                    b8 = 4;
                }
                break;
            case -1396432756:
                if (str.equals("forced-subtitle")) {
                    b8 = 5;
                }
                break;
            case 99825:
                if (str.equals("dub")) {
                    b8 = 6;
                }
                break;
            case 3343801:
                if (str.equals("main")) {
                    b8 = 7;
                }
                break;
            case 3530173:
                if (str.equals("sign")) {
                    b8 = 8;
                }
                break;
            case 552573414:
                if (str.equals("caption")) {
                    b8 = 9;
                }
                break;
            case 899152809:
                if (str.equals("commentary")) {
                    b8 = 10;
                }
                break;
            case 1629013393:
                if (str.equals("emergency")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                }
                break;
            case 1855372047:
                if (str.equals("supplementary")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                }
                break;
        }
        switch (b8) {
            case 0:
            case 3:
            case 5:
                return 128;
            case 1:
                return IMediaList.Event.ItemAdded;
            case 2:
                return 2048;
            case 4:
                return 2;
            case 6:
                return 16;
            case 7:
                return 1;
            case 8:
                return 256;
            case 9:
                return 64;
            case 10:
                return 8;
            case 11:
                return 32;
            case 12:
                return 4;
            default:
                return 0;
        }
    }

    public static int p(ArrayList arrayList) {
        int i8 = 0;
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            if (p190y4.k.B("http://dashif.org/guidelines/trickmode", ((f) arrayList.get(i9)).f3042a)) {
                i8 = Http2.INITIAL_MAX_FRAME_SIZE;
            }
        }
        return i8;
    }

    public static r q(XmlPullParser xmlPullParser, r rVar) throws XmlPullParserException, IOException {
        long j8;
        long j9;
        long jL = l(xmlPullParser, "timescale", rVar != null ? rVar.f3088b : 1L);
        long jL2 = l(xmlPullParser, "presentationTimeOffset", rVar != null ? rVar.f3089c : 0L);
        long j10 = rVar != null ? rVar.f3085d : 0L;
        long j11 = rVar != null ? rVar.f3086e : 0L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] strArrSplit = attributeValue.split("-");
            long j12 = Long.parseLong(strArrSplit[0]);
            j8 = (Long.parseLong(strArrSplit[1]) - j12) + 1;
            j9 = j12;
        } else {
            j8 = j11;
            j9 = j10;
        }
        j jVarN = rVar != null ? rVar.f3087a : null;
        do {
            xmlPullParser.next();
            if (C.f(xmlPullParser, "Initialization")) {
                jVarN = n(xmlPullParser, "sourceURL", "range");
            } else {
                b(xmlPullParser);
            }
        } while (!C.c(xmlPullParser, "SegmentBase"));
        return new r(jVarN, jL, jL2, j9, j8);
    }

    public static o r(XmlPullParser xmlPullParser, o oVar, long j8, long j9, long j10, long j11, long j12) throws XmlPullParserException, IOException {
        long jL = l(xmlPullParser, "timescale", oVar != null ? oVar.f3088b : 1L);
        long jL2 = l(xmlPullParser, "presentationTimeOffset", oVar != null ? oVar.f3089c : 0L);
        long jL3 = l(xmlPullParser, "duration", oVar != null ? oVar.f3074e : -9223372036854775807L);
        long jL4 = l(xmlPullParser, "startNumber", oVar != null ? oVar.f3073d : 1L);
        long j13 = j11 == -9223372036854775807L ? j10 : j11;
        long j14 = j13 == Long.MAX_VALUE ? -9223372036854775807L : j13;
        List arrayList = null;
        j jVarN = null;
        List listT = null;
        do {
            xmlPullParser.next();
            if (C.f(xmlPullParser, "Initialization")) {
                jVarN = n(xmlPullParser, "sourceURL", "range");
            } else if (C.f(xmlPullParser, "SegmentTimeline")) {
                listT = t(xmlPullParser, jL, j9);
            } else if (C.f(xmlPullParser, "SegmentURL")) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(n(xmlPullParser, "media", "mediaRange"));
            } else {
                b(xmlPullParser);
            }
        } while (!C.c(xmlPullParser, "SegmentList"));
        if (oVar != null) {
            if (jVarN == null) {
                jVarN = oVar.f3087a;
            }
            if (listT == null) {
                listT = oVar.f3075f;
            }
            if (arrayList == null) {
                arrayList = oVar.f3079j;
            }
        }
        return new o(jVarN, jL, jL2, jL4, jL3, listT, j14, arrayList, M.R(j12), M.R(j8));
    }

    public static p s(XmlPullParser xmlPullParser, p pVar, List list, long j8, long j9, long j10, long j11, long j12) throws XmlPullParserException, IOException {
        long j13;
        long jL = l(xmlPullParser, "timescale", pVar != null ? pVar.f3088b : 1L);
        long jL2 = l(xmlPullParser, "presentationTimeOffset", pVar != null ? pVar.f3089c : 0L);
        long jL3 = l(xmlPullParser, "duration", pVar != null ? pVar.f3074e : -9223372036854775807L);
        long jL4 = l(xmlPullParser, "startNumber", pVar != null ? pVar.f3073d : 1L);
        int i8 = 0;
        while (true) {
            if (i8 >= list.size()) {
                j13 = -1;
                break;
            }
            f fVar = (f) list.get(i8);
            if (p190y4.k.B("http://dashif.org/guidelines/last-segment-number", fVar.f3042a)) {
                j13 = Long.parseLong(fVar.f3043b);
                break;
            }
            i8++;
        }
        long j14 = j13;
        long j15 = j11 == -9223372036854775807L ? j10 : j11;
        long j16 = j15 == Long.MAX_VALUE ? -9223372036854775807L : j15;
        j jVarN = null;
        u uVarU = u(xmlPullParser, "media", pVar != null ? pVar.f3081k : null);
        u uVarU2 = u(xmlPullParser, "initialization", pVar != null ? pVar.f3080j : null);
        List listT = null;
        do {
            xmlPullParser.next();
            if (C.f(xmlPullParser, "Initialization")) {
                jVarN = n(xmlPullParser, "sourceURL", "range");
            } else if (C.f(xmlPullParser, "SegmentTimeline")) {
                listT = t(xmlPullParser, jL, j9);
            } else {
                b(xmlPullParser);
            }
        } while (!C.c(xmlPullParser, "SegmentTemplate"));
        if (pVar != null) {
            if (jVarN == null) {
                jVarN = pVar.f3087a;
            }
            if (listT == null) {
                listT = pVar.f3075f;
            }
        }
        return new p(jVarN, jL, jL2, jL4, j14, jL3, listT, j16, uVarU2, uVarU, M.R(j12), M.R(j8));
    }

    public static ArrayList t(XmlPullParser xmlPullParser, long j8, long j9) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long jA = 0;
        long jL = -9223372036854775807L;
        boolean z7 = false;
        int iK = 0;
        do {
            xmlPullParser.next();
            if (C.f(xmlPullParser, "S")) {
                long jL2 = l(xmlPullParser, "t", -9223372036854775807L);
                if (z7) {
                    jA = a(arrayList, jA, jL, iK, jL2);
                }
                if (jL2 == -9223372036854775807L) {
                    jL2 = jA;
                }
                jL = l(xmlPullParser, "d", -9223372036854775807L);
                iK = k(xmlPullParser, "r", 0);
                jA = jL2;
                z7 = true;
            } else {
                b(xmlPullParser);
            }
        } while (!C.c(xmlPullParser, "SegmentTimeline"));
        if (z7) {
            String str = M.f28050a;
            a(arrayList, jA, jL, iK, M.Z(j9, j8, 1000L, RoundingMode.DOWN));
        }
        return arrayList;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x00ff. Please report as an issue. */
    public static u u(XmlPullParser xmlPullParser, String str, u uVar) {
        String strSubstring;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return uVar;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        arrayList.add(HttpUrl.FRAGMENT_ENCODE_SET);
        int length = 0;
        while (length < attributeValue.length()) {
            int iIndexOf = attributeValue.indexOf("$", length);
            if (iIndexOf == -1) {
                arrayList.set(arrayList2.size(), ((String) arrayList.get(arrayList2.size())) + attributeValue.substring(length));
                length = attributeValue.length();
            } else if (iIndexOf != length) {
                arrayList.set(arrayList2.size(), ((String) arrayList.get(arrayList2.size())) + attributeValue.substring(length, iIndexOf));
                length = iIndexOf;
            } else if (attributeValue.startsWith("$$", length)) {
                arrayList.set(arrayList2.size(), ((String) arrayList.get(arrayList2.size())) + "$");
                length += 2;
            } else {
                arrayList3.add(HttpUrl.FRAGMENT_ENCODE_SET);
                int i8 = length + 1;
                int iIndexOf2 = attributeValue.indexOf("$", i8);
                String strSubstring2 = attributeValue.substring(i8, iIndexOf2);
                if (strSubstring2.equals("RepresentationID")) {
                    arrayList2.add(1);
                } else {
                    int iIndexOf3 = strSubstring2.indexOf("%0");
                    if (iIndexOf3 != -1) {
                        strSubstring = strSubstring2.substring(iIndexOf3);
                        if (!strSubstring.endsWith("d") && !strSubstring.endsWith("x") && !strSubstring.endsWith("X")) {
                            strSubstring = strSubstring.concat("d");
                        }
                        strSubstring2 = strSubstring2.substring(0, iIndexOf3);
                    } else {
                        strSubstring = "%01d";
                    }
                    strSubstring2.getClass();
                    switch (strSubstring2) {
                        case "Number":
                            arrayList2.add(2);
                            break;
                        case "Time":
                            arrayList2.add(4);
                            break;
                        case "Bandwidth":
                            arrayList2.add(3);
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid template: ".concat(attributeValue));
                    }
                    arrayList3.set(arrayList2.size() - 1, strSubstring);
                }
                arrayList.add(HttpUrl.FRAGMENT_ENCODE_SET);
                length = iIndexOf2 + 1;
            }
        }
        return new u(arrayList, arrayList2, arrayList3);
    }

    @Override // S0.o
    public final Object B(Uri uri, C3186k c3186k) throws P {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f3041G.newPullParser();
            xmlPullParserNewPullParser.setInput(c3186k, null);
            if (xmlPullParserNewPullParser.next() == 2 && "MPD".equals(xmlPullParserNewPullParser.getName())) {
                return m(xmlPullParserNewPullParser, uri);
            }
            throw P.b("inputStream does not contain a valid media presentation description", null);
        } catch (XmlPullParserException e8) {
            throw P.b(null, e8);
        }
    }
}
