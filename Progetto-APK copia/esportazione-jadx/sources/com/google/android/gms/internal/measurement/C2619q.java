package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2619q implements Iterable, InterfaceC2603n {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f23243G;

    public C2619q(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.f23243G = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2619q) {
            return this.f23243G.equals(((C2619q) obj).f23243G);
        }
        return false;
    }

    public final int hashCode() {
        return this.f23243G.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C2614p(this, 1);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x017a  */
    /* JADX WARN: Code duplicated, block: B:103:0x0182  */
    /* JADX WARN: Code duplicated, block: B:104:0x0193  */
    /* JADX WARN: Code duplicated, block: B:105:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:106:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:107:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:108:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:109:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:111:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:112:0x020a  */
    /* JADX WARN: Code duplicated, block: B:115:0x0214  */
    /* JADX WARN: Code duplicated, block: B:117:0x022d  */
    /* JADX WARN: Code duplicated, block: B:120:0x025e  */
    /* JADX WARN: Code duplicated, block: B:122:0x026c  */
    /* JADX WARN: Code duplicated, block: B:123:0x027d  */
    /* JADX WARN: Code duplicated, block: B:125:0x0289  */
    /* JADX WARN: Code duplicated, block: B:126:0x028e  */
    /* JADX WARN: Code duplicated, block: B:128:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:129:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:132:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:133:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:139:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:142:0x0301  */
    /* JADX WARN: Code duplicated, block: B:144:0x0304 A[LOOP:0: B:143:0x0302->B:144:0x0304, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:146:0x0318  */
    /* JADX WARN: Code duplicated, block: B:148:0x0326  */
    /* JADX WARN: Code duplicated, block: B:149:0x033a  */
    /* JADX WARN: Code duplicated, block: B:152:0x0346  */
    /* JADX WARN: Code duplicated, block: B:153:0x0351  */
    /* JADX WARN: Code duplicated, block: B:156:0x0361  */
    /* JADX WARN: Code duplicated, block: B:157:0x0374  */
    /* JADX WARN: Code duplicated, block: B:160:0x0383  */
    /* JADX WARN: Code duplicated, block: B:161:0x038e  */
    /* JADX WARN: Code duplicated, block: B:164:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:166:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:169:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:171:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:172:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:174:0x0407  */
    /* JADX WARN: Code duplicated, block: B:176:0x041d  */
    /* JADX WARN: Code duplicated, block: B:179:0x042f  */
    /* JADX WARN: Code duplicated, block: B:181:0x0433  */
    /* JADX WARN: Code duplicated, block: B:182:0x0459  */
    /* JADX WARN: Code duplicated, block: B:184:0x0476  */
    /* JADX WARN: Code duplicated, block: B:186:0x0486  */
    /* JADX WARN: Code duplicated, block: B:187:0x0489  */
    /* JADX WARN: Code duplicated, block: B:190:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:191:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:192:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:195:0x04d8  */
    /* JADX WARN: Code duplicated, block: B:198:0x04ed  */
    /* JADX WARN: Code duplicated, block: B:199:0x04f0  */
    /* JADX WARN: Code duplicated, block: B:202:0x0509  */
    /* JADX WARN: Code duplicated, block: B:203:0x050c  */
    /* JADX WARN: Code duplicated, block: B:205:0x0521  */
    /* JADX WARN: Code duplicated, block: B:208:0x0534  */
    /* JADX WARN: Code duplicated, block: B:211:0x054a  */
    /* JADX WARN: Code duplicated, block: B:212:0x054c  */
    /* JADX WARN: Code duplicated, block: B:214:0x0574  */
    /* JADX WARN: Code duplicated, block: B:217:0x0597  */
    /* JADX WARN: Code duplicated, block: B:225:0x05b5  */
    /* JADX WARN: Code duplicated, block: B:227:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:230:0x05cb A[LOOP:1: B:228:0x05c5->B:230:0x05cb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:233:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:235:0x05fa  */
    /* JADX WARN: Code duplicated, block: B:236:0x0613  */
    /* JADX WARN: Code duplicated, block: B:247:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:251:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:252:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:253:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:254:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:255:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:256:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:258:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:259:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ba A[PHI: r11
      0x00ba: PHI (r11v27 java.lang.String) = 
      (r11v5 java.lang.String)
      (r11v6 java.lang.String)
      (r11v7 java.lang.String)
      (r11v8 java.lang.String)
      (r11v10 java.lang.String)
      (r11v11 java.lang.String)
      (r11v12 java.lang.String)
      (r11v13 java.lang.String)
      (r11v14 java.lang.String)
      (r11v15 java.lang.String)
      (r11v16 java.lang.String)
      (r11v17 java.lang.String)
      (r11v18 java.lang.String)
      (r11v19 java.lang.String)
      (r11v22 java.lang.String)
      (r11v23 java.lang.String)
      (r11v28 java.lang.String)
     binds: [B:93:0x0158, B:90:0x014d, B:87:0x0141, B:259:?, B:258:?, B:257:?, B:256:?, B:255:?, B:254:?, B:253:?, B:252:?, B:251:?, B:250:?, B:249:?, B:248:?, B:247:?, B:43:0x00b8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:45:0x00be  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00de  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:67:0x0101  */
    /* JADX WARN: Code duplicated, block: B:68:0x0104  */
    /* JADX WARN: Code duplicated, block: B:70:0x010a  */
    /* JADX WARN: Code duplicated, block: B:71:0x010d  */
    /* JADX WARN: Code duplicated, block: B:73:0x0113  */
    /* JADX WARN: Code duplicated, block: B:74:0x0115  */
    /* JADX WARN: Code duplicated, block: B:76:0x011b  */
    /* JADX WARN: Code duplicated, block: B:77:0x011e  */
    /* JADX WARN: Code duplicated, block: B:79:0x0124  */
    /* JADX WARN: Code duplicated, block: B:80:0x0126  */
    /* JADX WARN: Code duplicated, block: B:82:0x012c  */
    /* JADX WARN: Code duplicated, block: B:83:0x012f  */
    /* JADX WARN: Code duplicated, block: B:85:0x0135  */
    /* JADX WARN: Code duplicated, block: B:86:0x013b  */
    /* JADX WARN: Code duplicated, block: B:88:0x0143  */
    /* JADX WARN: Code duplicated, block: B:89:0x0147  */
    /* JADX WARN: Code duplicated, block: B:91:0x014f  */
    /* JADX WARN: Code duplicated, block: B:92:0x0152  */
    /* JADX WARN: Code duplicated, block: B:94:0x015a  */
    /* JADX WARN: Code duplicated, block: B:95:0x015e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0168  */
    /* JADX WARN: Code duplicated, block: B:98:0x016a A[PHI: r11 r12
      0x016a: PHI (r11v26 java.lang.String) = (r11v4 java.lang.String), (r11v27 java.lang.String) binds: [B:96:0x0166, B:44:0x00ba] A[DONT_GENERATE, DONT_INLINE]
      0x016a: PHI (r12v7 java.lang.String) = (r12v1 java.lang.String), (r12v8 java.lang.String) binds: [B:96:0x0166, B:44:0x00ba] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        String str2;
        String str3;
        String str4;
        String str5;
        byte b8;
        String strZzi;
        String str6;
        int iR;
        StringBuilder sb;
        int i8;
        InterfaceC2603n c2619q;
        InterfaceC2603n interfaceC2603nT;
        boolean zEquals;
        InterfaceC2603n c2619q2;
        double dDoubleValue;
        int i9;
        double dDoubleValue2;
        InterfaceC2603n c2561g;
        double dDoubleValue3;
        double dR;
        String strZzi2;
        Matcher matcher;
        InterfaceC2603n interfaceC2603nA;
        String str7;
        int iIndexOf;
        int i10;
        Matcher matcher2;
        double dDoubleValue4;
        double dR2;
        double dMin;
        double length;
        double dR3;
        double dMin2;
        ArrayList arrayList2;
        String strZzi3;
        long jV0;
        String[] strArrSplit;
        int length2;
        int i11;
        int i12;
        int i13;
        boolean zIsEmpty;
        p096m2.i iVar2;
        int iR2;
        int length3;
        if (!"charAt".equals(str) && !"concat".equals(str) && !"hasOwnProperty".equals(str) && !"indexOf".equals(str) && !"lastIndexOf".equals(str) && !"match".equals(str) && !"replace".equals(str) && !"search".equals(str) && !"slice".equals(str) && !"split".equals(str) && !"substring".equals(str) && !"toLowerCase".equals(str) && !"toLocaleLowerCase".equals(str) && !"toString".equals(str) && !"toUpperCase".equals(str)) {
            str2 = "toLocaleUpperCase";
            if (!str2.equals(str)) {
                str3 = "trim";
                if (!str3.equals(str)) {
                    throw new IllegalArgumentException(str.concat(" is not a String function"));
                }
            }
            switch (str.hashCode()) {
                case -1789698943:
                    str4 = "charAt";
                    str5 = r11;
                    if (str.equals(str5)) {
                        b8 = 2;
                    } else {
                        b8 = -1;
                    }
                    break;
                case -1776922004:
                    str4 = "charAt";
                    if (str.equals("toString")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                        str5 = r11;
                    }
                    str5 = "hasOwnProperty";
                    b8 = -1;
                    break;
                case -1464939364:
                    str4 = "charAt";
                    if (str.equals("toLocaleLowerCase")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                        str5 = r11;
                    }
                    str5 = "hasOwnProperty";
                    b8 = -1;
                    break;
                case -1361633751:
                    str4 = "charAt";
                    if (str.equals(str4)) {
                        str5 = r11;
                        b8 = 0;
                    } else {
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case -1354795244:
                    if (str.equals("concat")) {
                        str4 = "charAt";
                        str5 = r11;
                        b8 = 1;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case -1137582698:
                    if (str.equals("toLowerCase")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case -906336856:
                    if (str.equals("search")) {
                        b8 = 7;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case -726908483:
                    if (str.equals(str2)) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case -467511597:
                    if (str.equals("lastIndexOf")) {
                        b8 = 4;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case -399551817:
                    if (str.equals("toUpperCase")) {
                        b8 = 15;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case 3568674:
                    if (str.equals(str3)) {
                        b8 = 16;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case 103668165:
                    if (str.equals("match")) {
                        b8 = 5;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case 109526418:
                    if (str.equals("slice")) {
                        b8 = 8;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case 109648666:
                    if (str.equals("split")) {
                        b8 = 9;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case 530542161:
                    if (str.equals("substring")) {
                        b8 = 10;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case 1094496948:
                    if (str.equals("replace")) {
                        b8 = 6;
                        str4 = "charAt";
                        str5 = r11;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                case 1943291465:
                    if (str.equals("indexOf")) {
                        str4 = "charAt";
                        str5 = r11;
                        b8 = 3;
                    } else {
                        str4 = "charAt";
                        str5 = "hasOwnProperty";
                        b8 = -1;
                    }
                    break;
                default:
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                    break;
            }
            strZzi = "undefined";
            str6 = this.f23243G;
            switch (b8) {
                case 0:
                    Cw.U1(str4, 1, arrayList);
                    if (arrayList.isEmpty()) {
                        iR = 0;
                    } else {
                        iR = (int) Cw.r(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue());
                    }
                    return (iR >= 0 || iR >= str6.length()) ? InterfaceC2603n.f23220z : new C2619q(String.valueOf(str6.charAt(iR)));
                case 1:
                    if (!arrayList.isEmpty()) {
                        sb = new StringBuilder(str6);
                        for (i8 = 0; i8 < arrayList.size(); i8++) {
                            sb.append(iVar.t((InterfaceC2603n) arrayList.get(i8)).zzi());
                        }
                        c2619q = new C2619q(sb.toString());
                        return c2619q;
                    }
                    return this;
                case 2:
                    Cw.O1(str5, 1, arrayList);
                    interfaceC2603nT = iVar.t((InterfaceC2603n) arrayList.get(0));
                    zEquals = "length".equals(interfaceC2603nT.zzi());
                    c2619q2 = InterfaceC2603n.f23218x;
                    if (!zEquals) {
                        dDoubleValue = interfaceC2603nT.zzh().doubleValue();
                        if (dDoubleValue == Math.floor(dDoubleValue) || (i9 = (int) dDoubleValue) < 0 || i9 >= str6.length()) {
                            return InterfaceC2603n.f23219y;
                        }
                    }
                    return c2619q2;
                case 3:
                    Cw.U1("indexOf", 2, arrayList);
                    String strZzi4 = arrayList.size() > 0 ? iVar.t((InterfaceC2603n) arrayList.get(0)).zzi() : "undefined";
                    if (arrayList.size() < 2) {
                        dDoubleValue2 = 0.0d;
                    } else {
                        dDoubleValue2 = iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue();
                    }
                    c2561g = new C2561g(Double.valueOf(str6.indexOf(strZzi4, (int) Cw.r(dDoubleValue2))));
                    return c2561g;
                case 4:
                    Cw.U1("lastIndexOf", 2, arrayList);
                    String strZzi5 = arrayList.size() > 0 ? iVar.t((InterfaceC2603n) arrayList.get(0)).zzi() : "undefined";
                    if (arrayList.size() < 2) {
                        dDoubleValue3 = Double.NaN;
                    } else {
                        dDoubleValue3 = iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue();
                    }
                    if (Double.isNaN(dDoubleValue3)) {
                        dR = Double.POSITIVE_INFINITY;
                    } else {
                        dR = Cw.r(dDoubleValue3);
                    }
                    c2561g = new C2561g(Double.valueOf(str6.lastIndexOf(strZzi5, (int) dR)));
                    return c2561g;
                case 5:
                    Cw.U1("match", 1, arrayList);
                    if (arrayList.size() <= 0) {
                        strZzi2 = HttpUrl.FRAGMENT_ENCODE_SET;
                    } else {
                        strZzi2 = iVar.t((InterfaceC2603n) arrayList.get(0)).zzi();
                    }
                    matcher = Pattern.compile(strZzi2).matcher(str6);
                    if (matcher.find()) {
                        return InterfaceC2603n.f23214t;
                    }
                    c2619q = new C2543d(Arrays.asList(new C2619q(matcher.group())));
                    return c2619q;
                case 6:
                    Cw.U1("replace", 2, arrayList);
                    interfaceC2603nA = InterfaceC2603n.f23213s;
                    if (!arrayList.isEmpty()) {
                        strZzi = iVar.t((InterfaceC2603n) arrayList.get(0)).zzi();
                        if (arrayList.size() > 1) {
                            interfaceC2603nA = iVar.t((InterfaceC2603n) arrayList.get(1));
                        }
                    }
                    str7 = strZzi;
                    iIndexOf = str6.indexOf(str7);
                    if (iIndexOf >= 0) {
                        if (interfaceC2603nA instanceof AbstractC2567h) {
                            i10 = 0;
                            interfaceC2603nA = ((AbstractC2567h) interfaceC2603nA).a(iVar, Arrays.asList(new C2619q(str7), new C2561g(Double.valueOf(iIndexOf)), this));
                        } else {
                            i10 = 0;
                        }
                        c2561g = new C2619q(com.google.protobuf.U2.l(str6.substring(i10, iIndexOf), interfaceC2603nA.zzi(), str6.substring(str7.length() + iIndexOf)));
                        return c2561g;
                    }
                    return this;
                case 7:
                    Cw.U1("search", 1, arrayList);
                    matcher2 = Pattern.compile(arrayList.isEmpty() ? "undefined" : iVar.t((InterfaceC2603n) arrayList.get(0)).zzi()).matcher(str6);
                    if (matcher2.find()) {
                        return new C2561g(Double.valueOf(-1.0d));
                    }
                    c2619q = new C2561g(Double.valueOf(matcher2.start()));
                    return c2619q;
                case 8:
                    Cw.U1("slice", 2, arrayList);
                    if (arrayList.isEmpty()) {
                        dDoubleValue4 = 0.0d;
                    } else {
                        dDoubleValue4 = iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue();
                    }
                    dR2 = Cw.r(dDoubleValue4);
                    if (dR2 < 0.0d) {
                        dMin = Math.max(((double) str6.length()) + dR2, 0.0d);
                    } else {
                        dMin = Math.min(dR2, str6.length());
                    }
                    if (arrayList.size() > 1) {
                        length = iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue();
                    } else {
                        length = str6.length();
                    }
                    dR3 = Cw.r(length);
                    if (dR3 < 0.0d) {
                        dMin2 = Math.max(((double) str6.length()) + dR3, 0.0d);
                    } else {
                        dMin2 = Math.min(dR3, str6.length());
                    }
                    int i14 = (int) dMin;
                    c2619q2 = new C2619q(str6.substring(i14, Math.max(0, ((int) dMin2) - i14) + i14));
                    return c2619q2;
                case 9:
                    Cw.U1("split", 2, arrayList);
                    if (str6.length() == 0) {
                        return new C2543d(Arrays.asList(this));
                    }
                    arrayList2 = new ArrayList();
                    if (arrayList.isEmpty()) {
                        arrayList2.add(this);
                    } else {
                        strZzi3 = iVar.t((InterfaceC2603n) arrayList.get(0)).zzi();
                        if (arrayList.size() > 1) {
                            jV0 = ((long) Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue())) & 4294967295L;
                        } else {
                            jV0 = 2147483647L;
                        }
                        if (jV0 == 0) {
                            return new C2543d();
                        }
                        strArrSplit = str6.split(Pattern.quote(strZzi3), ((int) jV0) + 1);
                        length2 = strArrSplit.length;
                        if (strZzi3.isEmpty() || length2 <= 0) {
                            i11 = -1;
                            i12 = length2;
                            i13 = 0;
                        } else {
                            zIsEmpty = strArrSplit[0].isEmpty();
                            i11 = -1;
                            i12 = length2 - 1;
                            if (!strArrSplit[i12].isEmpty()) {
                                i13 = zIsEmpty;
                                i12 = length2;
                                i13 = zIsEmpty;
                            }
                        }
                        i13 = zIsEmpty;
                        if (length2 > jV0) {
                            i12 += i11;
                        }
                        while (i13 < i12) {
                            arrayList2.add(new C2619q(strArrSplit[i13]));
                            i13++;
                        }
                    }
                    return new C2543d(arrayList2);
                case 10:
                    Cw.U1("substring", 2, arrayList);
                    if (arrayList.isEmpty()) {
                        iVar2 = iVar;
                        iR2 = 0;
                    } else {
                        iVar2 = iVar;
                        iR2 = (int) Cw.r(iVar2.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue());
                    }
                    if (arrayList.size() > 1) {
                        length3 = (int) Cw.r(iVar2.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue());
                    } else {
                        length3 = str6.length();
                    }
                    int iMin = Math.min(Math.max(iR2, 0), str6.length());
                    int iMin2 = Math.min(Math.max(length3, 0), str6.length());
                    c2561g = new C2619q(str6.substring(Math.min(iMin, iMin2), Math.max(iMin, iMin2)));
                    return c2561g;
                case 11:
                    Cw.O1(str2, 0, arrayList);
                    return new C2619q(str6.toUpperCase());
                case 12:
                    Cw.O1("toLocaleLowerCase", 0, arrayList);
                    return new C2619q(str6.toLowerCase());
                case 13:
                    Cw.O1("toLowerCase", 0, arrayList);
                    return new C2619q(str6.toLowerCase(Locale.ENGLISH));
                case 14:
                    Cw.O1("toString", 0, arrayList);
                    return this;
                case 15:
                    Cw.O1("toUpperCase", 0, arrayList);
                    return new C2619q(str6.toUpperCase(Locale.ENGLISH));
                case 16:
                    Cw.O1("toUpperCase", 0, arrayList);
                    return new C2619q(str6.trim());
                default:
                    throw new IllegalArgumentException("Command not supported");
            }
        }
        str2 = "toLocaleUpperCase";
        str3 = "trim";
        switch (str.hashCode()) {
            case -1789698943:
                str4 = "charAt";
                str5 = r11;
                if (str.equals(str5)) {
                    b8 = 2;
                } else {
                    b8 = -1;
                }
                break;
            case -1776922004:
                str4 = "charAt";
                if (str.equals("toString")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                    str5 = r11;
                }
                str5 = "hasOwnProperty";
                b8 = -1;
                break;
            case -1464939364:
                str4 = "charAt";
                if (str.equals("toLocaleLowerCase")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                    str5 = r11;
                }
                str5 = "hasOwnProperty";
                b8 = -1;
                break;
            case -1361633751:
                str4 = "charAt";
                if (str.equals(str4)) {
                    str5 = r11;
                    b8 = 0;
                } else {
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    str4 = "charAt";
                    str5 = r11;
                    b8 = 1;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case -1137582698:
                if (str.equals("toLowerCase")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case -906336856:
                if (str.equals("search")) {
                    b8 = 7;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case -726908483:
                if (str.equals(str2)) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    b8 = 4;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case -399551817:
                if (str.equals("toUpperCase")) {
                    b8 = 15;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case 3568674:
                if (str.equals(str3)) {
                    b8 = 16;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case 103668165:
                if (str.equals("match")) {
                    b8 = 5;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case 109526418:
                if (str.equals("slice")) {
                    b8 = 8;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case 109648666:
                if (str.equals("split")) {
                    b8 = 9;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case 530542161:
                if (str.equals("substring")) {
                    b8 = 10;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case 1094496948:
                if (str.equals("replace")) {
                    b8 = 6;
                    str4 = "charAt";
                    str5 = r11;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    str4 = "charAt";
                    str5 = r11;
                    b8 = 3;
                } else {
                    str4 = "charAt";
                    str5 = "hasOwnProperty";
                    b8 = -1;
                }
                break;
            default:
                str4 = "charAt";
                str5 = "hasOwnProperty";
                b8 = -1;
                break;
        }
        strZzi = "undefined";
        str6 = this.f23243G;
        switch (b8) {
            case 0:
                Cw.U1(str4, 1, arrayList);
                if (arrayList.isEmpty()) {
                    iR = (int) Cw.r(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue());
                } else {
                    iR = 0;
                }
                if (iR >= 0) {
                }
                break;
            case 1:
                if (!arrayList.isEmpty()) {
                    sb = new StringBuilder(str6);
                    while (i8 < arrayList.size()) {
                        sb.append(iVar.t((InterfaceC2603n) arrayList.get(i8)).zzi());
                    }
                    c2619q = new C2619q(sb.toString());
                    return c2619q;
                }
                return this;
            case 2:
                Cw.O1(str5, 1, arrayList);
                interfaceC2603nT = iVar.t((InterfaceC2603n) arrayList.get(0));
                zEquals = "length".equals(interfaceC2603nT.zzi());
                c2619q2 = InterfaceC2603n.f23218x;
                if (!zEquals) {
                    dDoubleValue = interfaceC2603nT.zzh().doubleValue();
                    if (dDoubleValue == Math.floor(dDoubleValue)) {
                        break;
                    }
                    return InterfaceC2603n.f23219y;
                }
                return c2619q2;
            case 3:
                Cw.U1("indexOf", 2, arrayList);
                String strZzi6 = arrayList.size() > 0 ? iVar.t((InterfaceC2603n) arrayList.get(0)).zzi() : "undefined";
                if (arrayList.size() < 2) {
                    dDoubleValue2 = 0.0d;
                } else {
                    dDoubleValue2 = iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue();
                }
                c2561g = new C2561g(Double.valueOf(str6.indexOf(strZzi6, (int) Cw.r(dDoubleValue2))));
                return c2561g;
            case 4:
                Cw.U1("lastIndexOf", 2, arrayList);
                String strZzi7 = arrayList.size() > 0 ? iVar.t((InterfaceC2603n) arrayList.get(0)).zzi() : "undefined";
                if (arrayList.size() < 2) {
                    dDoubleValue3 = Double.NaN;
                } else {
                    dDoubleValue3 = iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue();
                }
                if (Double.isNaN(dDoubleValue3)) {
                    dR = Double.POSITIVE_INFINITY;
                } else {
                    dR = Cw.r(dDoubleValue3);
                }
                c2561g = new C2561g(Double.valueOf(str6.lastIndexOf(strZzi7, (int) dR)));
                return c2561g;
            case 5:
                Cw.U1("match", 1, arrayList);
                if (arrayList.size() <= 0) {
                    strZzi2 = HttpUrl.FRAGMENT_ENCODE_SET;
                } else {
                    strZzi2 = iVar.t((InterfaceC2603n) arrayList.get(0)).zzi();
                }
                matcher = Pattern.compile(strZzi2).matcher(str6);
                if (matcher.find()) {
                    return InterfaceC2603n.f23214t;
                }
                c2619q = new C2543d(Arrays.asList(new C2619q(matcher.group())));
                return c2619q;
            case 6:
                Cw.U1("replace", 2, arrayList);
                interfaceC2603nA = InterfaceC2603n.f23213s;
                if (!arrayList.isEmpty()) {
                    strZzi = iVar.t((InterfaceC2603n) arrayList.get(0)).zzi();
                    if (arrayList.size() > 1) {
                        interfaceC2603nA = iVar.t((InterfaceC2603n) arrayList.get(1));
                    }
                }
                str7 = strZzi;
                iIndexOf = str6.indexOf(str7);
                if (iIndexOf >= 0) {
                    if (interfaceC2603nA instanceof AbstractC2567h) {
                        i10 = 0;
                        interfaceC2603nA = ((AbstractC2567h) interfaceC2603nA).a(iVar, Arrays.asList(new C2619q(str7), new C2561g(Double.valueOf(iIndexOf)), this));
                    } else {
                        i10 = 0;
                    }
                    c2561g = new C2619q(com.google.protobuf.U2.l(str6.substring(i10, iIndexOf), interfaceC2603nA.zzi(), str6.substring(str7.length() + iIndexOf)));
                    return c2561g;
                }
                return this;
            case 7:
                Cw.U1("search", 1, arrayList);
                matcher2 = Pattern.compile(arrayList.isEmpty() ? "undefined" : iVar.t((InterfaceC2603n) arrayList.get(0)).zzi()).matcher(str6);
                if (matcher2.find()) {
                    return new C2561g(Double.valueOf(-1.0d));
                }
                c2619q = new C2561g(Double.valueOf(matcher2.start()));
                return c2619q;
            case 8:
                Cw.U1("slice", 2, arrayList);
                if (arrayList.isEmpty()) {
                    dDoubleValue4 = iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue();
                } else {
                    dDoubleValue4 = 0.0d;
                }
                dR2 = Cw.r(dDoubleValue4);
                if (dR2 < 0.0d) {
                    dMin = Math.max(((double) str6.length()) + dR2, 0.0d);
                } else {
                    dMin = Math.min(dR2, str6.length());
                }
                if (arrayList.size() > 1) {
                    length = iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue();
                } else {
                    length = str6.length();
                }
                dR3 = Cw.r(length);
                if (dR3 < 0.0d) {
                    dMin2 = Math.max(((double) str6.length()) + dR3, 0.0d);
                } else {
                    dMin2 = Math.min(dR3, str6.length());
                }
                int i15 = (int) dMin;
                c2619q2 = new C2619q(str6.substring(i15, Math.max(0, ((int) dMin2) - i15) + i15));
                return c2619q2;
            case 9:
                Cw.U1("split", 2, arrayList);
                if (str6.length() == 0) {
                    return new C2543d(Arrays.asList(this));
                }
                arrayList2 = new ArrayList();
                if (arrayList.isEmpty()) {
                    arrayList2.add(this);
                } else {
                    strZzi3 = iVar.t((InterfaceC2603n) arrayList.get(0)).zzi();
                    if (arrayList.size() > 1) {
                        jV0 = ((long) Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue())) & 4294967295L;
                    } else {
                        jV0 = 2147483647L;
                    }
                    if (jV0 == 0) {
                        return new C2543d();
                    }
                    strArrSplit = str6.split(Pattern.quote(strZzi3), ((int) jV0) + 1);
                    length2 = strArrSplit.length;
                    if (strZzi3.isEmpty()) {
                        i11 = -1;
                        i12 = length2;
                        i13 = 0;
                    } else {
                        i11 = -1;
                        i12 = length2;
                        i13 = 0;
                    }
                    i13 = zIsEmpty;
                    if (length2 > jV0) {
                        i12 += i11;
                    }
                    while (i13 < i12) {
                        arrayList2.add(new C2619q(strArrSplit[i13]));
                        i13++;
                    }
                }
                return new C2543d(arrayList2);
            case 10:
                Cw.U1("substring", 2, arrayList);
                if (arrayList.isEmpty()) {
                    iVar2 = iVar;
                    iR2 = (int) Cw.r(iVar2.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue());
                } else {
                    iVar2 = iVar;
                    iR2 = 0;
                }
                if (arrayList.size() > 1) {
                    length3 = (int) Cw.r(iVar2.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue());
                } else {
                    length3 = str6.length();
                }
                int iMin3 = Math.min(Math.max(iR2, 0), str6.length());
                int iMin4 = Math.min(Math.max(length3, 0), str6.length());
                c2561g = new C2619q(str6.substring(Math.min(iMin3, iMin4), Math.max(iMin3, iMin4)));
                return c2561g;
            case 11:
                Cw.O1(str2, 0, arrayList);
                return new C2619q(str6.toUpperCase());
            case 12:
                Cw.O1("toLocaleLowerCase", 0, arrayList);
                return new C2619q(str6.toLowerCase());
            case 13:
                Cw.O1("toLowerCase", 0, arrayList);
                return new C2619q(str6.toLowerCase(Locale.ENGLISH));
            case 14:
                Cw.O1("toString", 0, arrayList);
                return this;
            case 15:
                Cw.O1("toUpperCase", 0, arrayList);
                return new C2619q(str6.toUpperCase(Locale.ENGLISH));
            case 16:
                Cw.O1("toUpperCase", 0, arrayList);
                return new C2619q(str6.trim());
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    public final String toString() {
        return p000a.r.j(new StringBuilder("\""), this.f23243G, "\"");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n zzd() {
        return new C2619q(this.f23243G);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Boolean zzg() {
        return Boolean.valueOf(!this.f23243G.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Double zzh() {
        String str = this.f23243G;
        if (str.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final String zzi() {
        return this.f23243G;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Iterator zzl() {
        return new C2614p(this, 0);
    }
}
