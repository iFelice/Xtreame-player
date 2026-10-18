package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2543d implements Iterable, InterfaceC2603n, InterfaceC2579j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final TreeMap f23111G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final TreeMap f23112H;

    public C2543d() {
        this.f23111G = new TreeMap();
        this.f23112H = new TreeMap();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2579j
    public final InterfaceC2603n b(String str) {
        InterfaceC2603n interfaceC2603n;
        if ("length".equals(str)) {
            return new C2561g(Double.valueOf(n()));
        }
        return (!c(str) || (interfaceC2603n = (InterfaceC2603n) this.f23112H.get(str)) == null) ? InterfaceC2603n.f23213s : interfaceC2603n;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2579j
    public final boolean c(String str) {
        return "length".equals(str) || this.f23112H.containsKey(str);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2543d)) {
            return false;
        }
        C2543d c2543d = (C2543d) obj;
        if (n() != c2543d.n()) {
            return false;
        }
        TreeMap treeMap = this.f23111G;
        if (treeMap.isEmpty()) {
            return c2543d.f23111G.isEmpty();
        }
        for (int iIntValue = ((Integer) treeMap.firstKey()).intValue(); iIntValue <= ((Integer) treeMap.lastKey()).intValue(); iIntValue++) {
            if (!o(iIntValue).equals(c2543d.o(iIntValue))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f23111G.hashCode() * 31;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2579j
    public final void i(String str, InterfaceC2603n interfaceC2603n) {
        TreeMap treeMap = this.f23112H;
        if (interfaceC2603n == null) {
            treeMap.remove(str);
        } else {
            treeMap.put(str, interfaceC2603n);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C2614p(this, 2);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:101:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:103:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:104:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:106:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:107:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:109:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:110:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:112:0x01db  */
    /* JADX WARN: Code duplicated, block: B:113:0x01df  */
    /* JADX WARN: Code duplicated, block: B:115:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:116:0x01ec A[PHI: r3 r8
      0x01ec: PHI (r3v46 java.lang.String) = (r3v4 java.lang.String), (r3v47 java.lang.String) binds: [B:114:0x01e7, B:54:0x011a] A[DONT_GENERATE, DONT_INLINE]
      0x01ec: PHI (r8v20 java.lang.String) = (r8v1 java.lang.String), (r8v21 java.lang.String) binds: [B:114:0x01e7, B:54:0x011a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:119:0x020d  */
    /* JADX WARN: Code duplicated, block: B:121:0x0215  */
    /* JADX WARN: Code duplicated, block: B:123:0x021b  */
    /* JADX WARN: Code duplicated, block: B:126:0x022a  */
    /* JADX WARN: Code duplicated, block: B:128:0x023a A[LOOP:0: B:124:0x0224->B:128:0x023a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:134:0x0258 A[LOOP:1: B:132:0x0252->B:134:0x0258, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:138:0x027c A[LOOP:2: B:136:0x0276->B:138:0x027c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:140:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:141:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:143:0x02be  */
    /* JADX WARN: Code duplicated, block: B:144:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:146:0x02de  */
    /* JADX WARN: Code duplicated, block: B:147:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:149:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:152:0x0302  */
    /* JADX WARN: Code duplicated, block: B:154:0x0320  */
    /* JADX WARN: Code duplicated, block: B:157:0x0329 A[LOOP:3: B:155:0x0321->B:157:0x0329, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:160:0x0341  */
    /* JADX WARN: Code duplicated, block: B:163:0x0348  */
    /* JADX WARN: Code duplicated, block: B:165:0x0356  */
    /* JADX WARN: Code duplicated, block: B:167:0x035c  */
    /* JADX WARN: Code duplicated, block: B:169:0x0362  */
    /* JADX WARN: Code duplicated, block: B:170:0x0367  */
    /* JADX WARN: Code duplicated, block: B:172:0x0373  */
    /* JADX WARN: Code duplicated, block: B:174:0x0380  */
    /* JADX WARN: Code duplicated, block: B:182:0x03a5 A[ADDED_TO_REGION, LOOP:6: B:182:0x03a5->B:183:0x03a7, LOOP_START, PHI: r2
      0x03a5: PHI (r2v71 int) = (r2v70 int), (r2v72 int) binds: [B:151:0x0300, B:183:0x03a7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:183:0x03a7 A[LOOP:6: B:182:0x03a5->B:183:0x03a7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:185:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:187:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:189:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:191:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:192:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:197:0x0405 A[LOOP:7: B:195:0x03ff->B:197:0x0405, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:198:0x0413  */
    /* JADX WARN: Code duplicated, block: B:200:0x042a  */
    /* JADX WARN: Code duplicated, block: B:203:0x0434  */
    /* JADX WARN: Code duplicated, block: B:206:0x0440  */
    /* JADX WARN: Code duplicated, block: B:211:0x0480  */
    /* JADX WARN: Code duplicated, block: B:213:0x0486  */
    /* JADX WARN: Code duplicated, block: B:215:0x0494  */
    /* JADX WARN: Code duplicated, block: B:216:0x049a  */
    /* JADX WARN: Code duplicated, block: B:218:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:219:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:222:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:224:0x04ea  */
    /* JADX WARN: Code duplicated, block: B:225:0x04f0  */
    /* JADX WARN: Code duplicated, block: B:229:0x04ff A[LOOP:9: B:227:0x04fa->B:229:0x04ff, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:230:0x050d  */
    /* JADX WARN: Code duplicated, block: B:232:0x0519  */
    /* JADX WARN: Code duplicated, block: B:233:0x051d  */
    /* JADX WARN: Code duplicated, block: B:234:0x0526  */
    /* JADX WARN: Code duplicated, block: B:236:0x0532  */
    /* JADX WARN: Code duplicated, block: B:239:0x0538  */
    /* JADX WARN: Code duplicated, block: B:241:0x053e  */
    /* JADX WARN: Code duplicated, block: B:243:0x054f  */
    /* JADX WARN: Code duplicated, block: B:247:0x0560  */
    /* JADX WARN: Code duplicated, block: B:248:0x056b  */
    /* JADX WARN: Code duplicated, block: B:249:0x0576  */
    /* JADX WARN: Code duplicated, block: B:251:0x0580  */
    /* JADX WARN: Code duplicated, block: B:254:0x058a A[LOOP:11: B:252:0x0584->B:254:0x058a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:256:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:259:0x05ba  */
    /* JADX WARN: Code duplicated, block: B:260:0x05c5  */
    /* JADX WARN: Code duplicated, block: B:262:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:264:0x05e2  */
    /* JADX WARN: Code duplicated, block: B:265:0x05e9  */
    /* JADX WARN: Code duplicated, block: B:266:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:268:0x05f7  */
    /* JADX WARN: Code duplicated, block: B:270:0x0605  */
    /* JADX WARN: Code duplicated, block: B:271:0x0611  */
    /* JADX WARN: Code duplicated, block: B:274:0x0620  */
    /* JADX WARN: Code duplicated, block: B:276:0x0638  */
    /* JADX WARN: Code duplicated, block: B:278:0x0641  */
    /* JADX WARN: Code duplicated, block: B:281:0x0652  */
    /* JADX WARN: Code duplicated, block: B:282:0x0659  */
    /* JADX WARN: Code duplicated, block: B:285:0x0660  */
    /* JADX WARN: Code duplicated, block: B:286:0x066b  */
    /* JADX WARN: Code duplicated, block: B:288:0x0677  */
    /* JADX WARN: Code duplicated, block: B:296:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:298:0x06b2  */
    /* JADX WARN: Code duplicated, block: B:299:0x06b6  */
    /* JADX WARN: Code duplicated, block: B:301:0x06bc  */
    /* JADX WARN: Code duplicated, block: B:307:0x06d5  */
    /* JADX WARN: Code duplicated, block: B:309:0x06e2  */
    /* JADX WARN: Code duplicated, block: B:311:0x06f2  */
    /* JADX WARN: Code duplicated, block: B:312:0x06fe  */
    /* JADX WARN: Code duplicated, block: B:315:0x0707  */
    /* JADX WARN: Code duplicated, block: B:317:0x0726  */
    /* JADX WARN: Code duplicated, block: B:318:0x0731  */
    /* JADX WARN: Code duplicated, block: B:320:0x0737  */
    /* JADX WARN: Code duplicated, block: B:321:0x073f  */
    /* JADX WARN: Code duplicated, block: B:322:0x0741  */
    /* JADX WARN: Code duplicated, block: B:326:0x074e  */
    /* JADX WARN: Code duplicated, block: B:332:0x077d  */
    /* JADX WARN: Code duplicated, block: B:334:0x0796  */
    /* JADX WARN: Code duplicated, block: B:337:0x079e  */
    /* JADX WARN: Code duplicated, block: B:338:0x07a5  */
    /* JADX WARN: Code duplicated, block: B:340:0x07ab  */
    /* JADX WARN: Code duplicated, block: B:342:0x07c4  */
    /* JADX WARN: Code duplicated, block: B:344:0x07ca  */
    /* JADX WARN: Code duplicated, block: B:345:0x07d1  */
    /* JADX WARN: Code duplicated, block: B:348:0x07ee A[LOOP:14: B:346:0x07e8->B:348:0x07ee, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:349:0x0804  */
    /* JADX WARN: Code duplicated, block: B:351:0x080a  */
    /* JADX WARN: Code duplicated, block: B:353:0x0823  */
    /* JADX WARN: Code duplicated, block: B:359:0x0841  */
    /* JADX WARN: Code duplicated, block: B:361:0x0847  */
    /* JADX WARN: Code duplicated, block: B:363:0x0857  */
    /* JADX WARN: Code duplicated, block: B:366:0x0861  */
    /* JADX WARN: Code duplicated, block: B:368:0x086f  */
    /* JADX WARN: Code duplicated, block: B:373:0x0883 A[LOOP:16: B:371:0x087d->B:373:0x0883, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:381:0x0242 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:386:0x039d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:387:0x0391 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:392:0x0388 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:395:0x0430 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:404:0x0559 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:407:0x0697 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:417:0x089a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:419:0x089e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:420:0x0877 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:424:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:425:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:426:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:427:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:428:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:429:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:430:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:431:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:432:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:433:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:434:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:435:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:436:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:437:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:438:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:439:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:440:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0118  */
    /* JADX WARN: Code duplicated, block: B:54:0x011a A[PHI: r3
      0x011a: PHI (r3v47 java.lang.String) = 
      (r3v5 java.lang.String)
      (r3v6 java.lang.String)
      (r3v8 java.lang.String)
      (r3v10 java.lang.String)
      (r3v11 java.lang.String)
      (r3v13 java.lang.String)
      (r3v14 java.lang.String)
      (r3v15 java.lang.String)
      (r3v16 java.lang.String)
      (r3v17 java.lang.String)
      (r3v18 java.lang.String)
      (r3v19 java.lang.String)
      (r3v20 java.lang.String)
      (r3v21 java.lang.String)
      (r3v23 java.lang.String)
      (r3v24 java.lang.String)
      (r3v25 java.lang.String)
      (r3v26 java.lang.String)
      (r3v28 java.lang.String)
      (r3v48 java.lang.String)
     binds: [B:111:0x01d9, B:108:0x01cb, B:440:?, B:439:?, B:438:?, B:437:?, B:436:?, B:435:?, B:434:?, B:433:?, B:432:?, B:431:?, B:430:?, B:429:?, B:428:?, B:427:?, B:426:?, B:425:?, B:424:?, B:53:0x0118] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:55:0x011e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0124  */
    /* JADX WARN: Code duplicated, block: B:59:0x012b  */
    /* JADX WARN: Code duplicated, block: B:61:0x0131  */
    /* JADX WARN: Code duplicated, block: B:62:0x0134  */
    /* JADX WARN: Code duplicated, block: B:64:0x013a  */
    /* JADX WARN: Code duplicated, block: B:65:0x013d  */
    /* JADX WARN: Code duplicated, block: B:67:0x0143  */
    /* JADX WARN: Code duplicated, block: B:68:0x0146  */
    /* JADX WARN: Code duplicated, block: B:70:0x014c  */
    /* JADX WARN: Code duplicated, block: B:71:0x014f  */
    /* JADX WARN: Code duplicated, block: B:73:0x0155  */
    /* JADX WARN: Code duplicated, block: B:74:0x015c  */
    /* JADX WARN: Code duplicated, block: B:76:0x0162  */
    /* JADX WARN: Code duplicated, block: B:77:0x0165  */
    /* JADX WARN: Code duplicated, block: B:79:0x016b  */
    /* JADX WARN: Code duplicated, block: B:80:0x016e  */
    /* JADX WARN: Code duplicated, block: B:82:0x0174  */
    /* JADX WARN: Code duplicated, block: B:83:0x0177  */
    /* JADX WARN: Code duplicated, block: B:85:0x017d  */
    /* JADX WARN: Code duplicated, block: B:86:0x017f  */
    /* JADX WARN: Code duplicated, block: B:88:0x0185  */
    /* JADX WARN: Code duplicated, block: B:89:0x0188  */
    /* JADX WARN: Code duplicated, block: B:91:0x018e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0190  */
    /* JADX WARN: Code duplicated, block: B:94:0x0196  */
    /* JADX WARN: Code duplicated, block: B:95:0x0199  */
    /* JADX WARN: Code duplicated, block: B:97:0x019f  */
    /* JADX WARN: Code duplicated, block: B:98:0x01a1  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v128, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r1v109 */
    /* JADX WARN: Type inference failed for: r1v112, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r1v114, types: [com.google.android.gms.internal.measurement.d] */
    /* JADX WARN: Type inference failed for: r1v117, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r1v118 */
    /* JADX WARN: Type inference failed for: r1v119 */
    /* JADX WARN: Type inference failed for: r1v126 */
    /* JADX WARN: Type inference failed for: r1v136 */
    /* JADX WARN: Type inference failed for: r1v139 */
    /* JADX WARN: Type inference failed for: r1v143, types: [com.google.android.gms.internal.measurement.d] */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v57, types: [com.google.android.gms.internal.measurement.d] */
    /* JADX WARN: Type inference failed for: r1v63, types: [com.google.android.gms.internal.measurement.g] */
    /* JADX WARN: Type inference failed for: r1v69, types: [com.google.android.gms.internal.measurement.g] */
    /* JADX WARN: Type inference failed for: r1v70, types: [com.google.android.gms.internal.measurement.g] */
    /* JADX WARN: Type inference failed for: r1v72, types: [com.google.android.gms.internal.measurement.q] */
    /* JADX WARN: Type inference failed for: r1v75, types: [com.google.android.gms.internal.measurement.q] */
    /* JADX WARN: Type inference failed for: r1v76 */
    /* JADX WARN: Type inference failed for: r1v78, types: [com.google.android.gms.internal.measurement.g] */
    /* JADX WARN: Type inference failed for: r1v83, types: [com.google.android.gms.internal.measurement.g] */
    /* JADX WARN: Type inference failed for: r1v89, types: [com.google.android.gms.internal.measurement.d] */
    /* JADX WARN: Type inference failed for: r1v90, types: [com.google.android.gms.internal.measurement.d] */
    /* JADX WARN: Type inference failed for: r1v93, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r27v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.measurement.d] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v32, types: [com.google.android.gms.internal.measurement.g] */
    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        String str2;
        String str3;
        String str4;
        Object obj;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        byte b8;
        r rVar;
        String strZzi;
        String str11;
        TreeMap treeMap;
        C2549e c2549e;
        C2549e c2549e2;
        AbstractC2567h abstractC2567h;
        C2543d c2543d;
        ?? c2543d2;
        Iterator it;
        InterfaceC2603n interfaceC2603nT;
        int iN;
        C2543d c2543d3;
        Iterator itQ;
        InterfaceC2603n interfaceC2603nT2;
        InterfaceC2603n interfaceC2603nT3;
        C2543d c2543d4;
        ?? c2543d5;
        Iterator itQ2;
        InterfaceC2603n interfaceC2603nT4;
        InterfaceC2603n interfaceC2603nT5;
        double dN;
        Iterator itQ3;
        double d6;
        double dR;
        InterfaceC2603n interfaceC2603nT6;
        InterfaceC2603n interfaceC2603nT7;
        int iN2;
        double d8;
        double dR2;
        int iMin;
        InterfaceC2603n interfaceC2603nT8;
        InterfaceC2603n interfaceC2603nT9;
        int iN3;
        Iterator it2;
        int iN4;
        int i8;
        int i9;
        double dN2;
        double dR3;
        double dMin;
        int i10;
        double dR4;
        InterfaceC2603n interfaceC2603nT10;
        Iterator itQ4;
        int iIntValue;
        Iterator it3;
        int i11;
        InterfaceC2603n interfaceC2603nT11;
        int iR;
        int iN5;
        C2543d c2543d6;
        int iMax;
        int i12;
        InterfaceC2603n interfaceC2603nT12;
        int i13;
        int iIntValue2;
        int i14;
        Integer numValueOf;
        InterfaceC2603n interfaceC2603n;
        int i15;
        C2543d c2543d7;
        Iterator it4;
        int iN6;
        Iterator itQ5;
        Iterator itQ6;
        InterfaceC2603n interfaceC2603nT13;
        String str12 = "reduce";
        String str13 = "toString";
        if (!"concat".equals(str) && !"every".equals(str) && !"filter".equals(str) && !"forEach".equals(str) && !"indexOf".equals(str) && !"join".equals(str) && !"lastIndexOf".equals(str) && !"map".equals(str) && !"pop".equals(str) && !"push".equals(str) && !"reduce".equals(str) && !"reduceRight".equals(str) && !"reverse".equals(str) && !"shift".equals(str) && !"slice".equals(str)) {
            str2 = "some";
            if (!str2.equals(str)) {
                str4 = "sort";
                if (str4.equals(str)) {
                    obj = "splice";
                    str5 = "map";
                } else if ("splice".equals(str)) {
                    str5 = "map";
                    obj = "splice";
                } else {
                    str13 = str13;
                    if (str13.equals(str)) {
                        str7 = "unshift";
                    } else {
                        str7 = "unshift";
                        if (!str7.equals(str)) {
                            return Cw.D(this, new C2619q(str), iVar, arrayList);
                        }
                    }
                    str8 = "filter";
                    str3 = "pop";
                    obj = "splice";
                    str6 = "lastIndexOf";
                    str12 = "reduce";
                    str5 = "map";
                }
                str6 = "lastIndexOf";
                str7 = "unshift";
                str8 = "filter";
                str3 = "pop";
            }
            switch (str.hashCode()) {
                case -1776922004:
                    str9 = str8;
                    str10 = str13;
                    if (str.equals(str10)) {
                        b8 = 18;
                    } else {
                        b8 = -1;
                    }
                    break;
                case -1354795244:
                    str9 = str8;
                    if (str.equals("concat")) {
                        str10 = str13;
                        b8 = 0;
                    } else {
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case -1274492040:
                    str9 = str8;
                    if (str.equals(str9)) {
                        str10 = str13;
                        b8 = 2;
                    } else {
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case -934873754:
                    if (str.equals(str12)) {
                        b8 = 10;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case -895859076:
                    if (str.equals(obj)) {
                        b8 = 17;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case -678635926:
                    if (str.equals("forEach")) {
                        str9 = str8;
                        str10 = str13;
                        b8 = 3;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case -467511597:
                    if (str.equals(str6)) {
                        b8 = 6;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case -277637751:
                    if (str.equals(str7)) {
                        b8 = 19;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 107868:
                    if (str.equals(str5)) {
                        b8 = 7;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 111185:
                    if (str.equals(str3)) {
                        b8 = 8;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 3267882:
                    if (str.equals("join")) {
                        b8 = 5;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 3452698:
                    if (str.equals("push")) {
                        b8 = 9;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 3536116:
                    if (str.equals(str2)) {
                        b8 = 15;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 3536286:
                    if (str.equals(str4)) {
                        b8 = 16;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 96891675:
                    if (str.equals("every")) {
                        str9 = str8;
                        str10 = str13;
                        b8 = 1;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 109407362:
                    if (str.equals("shift")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 109526418:
                    if (str.equals("slice")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 965561430:
                    if (str.equals("reduceRight")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 1099846370:
                    if (str.equals("reverse")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                case 1943291465:
                    if (str.equals("indexOf")) {
                        b8 = 4;
                        str9 = str8;
                        str10 = str13;
                    } else {
                        str9 = str8;
                        str10 = str13;
                        b8 = -1;
                    }
                    break;
                default:
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                    break;
            }
            rVar = InterfaceC2603n.f23213s;
            strZzi = ",";
            str11 = str9;
            treeMap = this.f23111G;
            c2549e = InterfaceC2603n.f23218x;
            c2549e2 = InterfaceC2603n.f23219y;
            abstractC2567h = null;
            switch (b8) {
                case 0:
                    c2543d = (C2543d) zzd();
                    if (!arrayList.isEmpty()) {
                        it = arrayList.iterator();
                        while (it.hasNext()) {
                            interfaceC2603nT = iVar.t((InterfaceC2603n) it.next());
                            if (!(interfaceC2603nT instanceof C2555f)) {
                                throw new IllegalStateException("Failed evaluation of arguments");
                            }
                            iN = c2543d.n();
                            if (interfaceC2603nT instanceof C2543d) {
                                c2543d3 = (C2543d) interfaceC2603nT;
                                itQ = c2543d3.q();
                                while (itQ.hasNext()) {
                                    Integer num = (Integer) itQ.next();
                                    c2543d.t(num.intValue() + iN, c2543d3.o(num.intValue()));
                                }
                            } else {
                                c2543d.t(iN, interfaceC2603nT);
                            }
                        }
                    }
                    c2543d2 = c2543d;
                    return c2543d2;
                case 1:
                    Cw.O1("every", 1, arrayList);
                    interfaceC2603nT2 = iVar.t((InterfaceC2603n) arrayList.get(0));
                    if (interfaceC2603nT2 instanceof C2597m) {
                        throw new IllegalArgumentException("Callback should be a method");
                    }
                    c2543d2 = (n() == 0 || Cw.B0(this, iVar, (C2597m) interfaceC2603nT2, Boolean.FALSE, Boolean.TRUE).n() == n()) ? c2549e : c2549e2;
                    return c2543d2;
                case 2:
                    Cw.O1(str11, 1, arrayList);
                    interfaceC2603nT3 = iVar.t((InterfaceC2603n) arrayList.get(0));
                    if (interfaceC2603nT3 instanceof C2597m) {
                        throw new IllegalArgumentException("Callback should be a method");
                    }
                    if (treeMap.size() == 0) {
                        c2543d2 = new C2543d();
                    } else {
                        c2543d4 = (C2543d) zzd();
                        C2543d c2543dB0 = Cw.B0(this, iVar, (C2597m) interfaceC2603nT3, null, Boolean.TRUE);
                        c2543d5 = new C2543d();
                        itQ2 = c2543dB0.q();
                        while (itQ2.hasNext()) {
                            c2543d5.t(c2543d5.n(), c2543d4.o(((Integer) itQ2.next()).intValue()));
                        }
                        c2543d2 = c2543d5;
                    }
                    return c2543d2;
                case 3:
                    Cw.O1("forEach", 1, arrayList);
                    interfaceC2603nT4 = iVar.t((InterfaceC2603n) arrayList.get(0));
                    if (interfaceC2603nT4 instanceof C2597m) {
                        throw new IllegalArgumentException("Callback should be a method");
                    }
                    if (treeMap.size() != 0) {
                        Cw.B0(this, iVar, (C2597m) interfaceC2603nT4, null, null);
                    }
                    c2543d2 = rVar;
                    return c2543d2;
                case 4:
                    Cw.U1("indexOf", 2, arrayList);
                    if (arrayList.isEmpty()) {
                        interfaceC2603nT5 = rVar;
                    } else {
                        interfaceC2603nT5 = iVar.t((InterfaceC2603n) arrayList.get(0));
                    }
                    if (arrayList.size() > 1) {
                        dR = Cw.r(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue());
                        if (dR >= n()) {
                            c2543d2 = new C2561g(Double.valueOf(-1.0d));
                        } else if (dR < 0.0d) {
                            dN = ((double) n()) + dR;
                        } else {
                            dN = dR;
                        }
                        return c2543d2;
                    }
                    dN = 0.0d;
                    itQ3 = q();
                    while (itQ3.hasNext()) {
                        int iIntValue3 = ((Integer) itQ3.next()).intValue();
                        d6 = iIntValue3;
                        if (d6 < dN && Cw.Z1(o(iIntValue3), interfaceC2603nT5)) {
                            c2543d2 = new C2561g(Double.valueOf(d6));
                            return c2543d2;
                        }
                    }
                    c2543d2 = new C2561g(Double.valueOf(-1.0d));
                    return c2543d2;
                case 5:
                    Cw.U1("join", 1, arrayList);
                    if (n() == 0) {
                        c2543d2 = InterfaceC2603n.f23220z;
                    } else {
                        if (!arrayList.isEmpty()) {
                            interfaceC2603nT6 = iVar.t((InterfaceC2603n) arrayList.get(0));
                            if (!(interfaceC2603nT6 instanceof C2591l) || (interfaceC2603nT6 instanceof r)) {
                                strZzi = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                strZzi = interfaceC2603nT6.zzi();
                            }
                        }
                        c2543d2 = new C2619q(p(strZzi));
                    }
                    return c2543d2;
                case 6:
                    Cw.U1(str6, 2, arrayList);
                    if (arrayList.isEmpty()) {
                        interfaceC2603nT7 = rVar;
                    } else {
                        interfaceC2603nT7 = iVar.t((InterfaceC2603n) arrayList.get(0));
                    }
                    iN2 = n() - 1;
                    if (arrayList.size() > 1) {
                        interfaceC2603nT8 = iVar.t((InterfaceC2603n) arrayList.get(1));
                        if (Double.isNaN(interfaceC2603nT8.zzh().doubleValue())) {
                            dR2 = n() - 1;
                        } else {
                            dR2 = Cw.r(interfaceC2603nT8.zzh().doubleValue());
                        }
                        d8 = 0.0d;
                        if (dR2 < 0.0d) {
                            dR2 += (double) n();
                        }
                    } else {
                        d8 = 0.0d;
                        dR2 = iN2;
                    }
                    if (dR2 < d8) {
                        c2543d2 = new C2561g(Double.valueOf(-1.0d));
                    } else {
                        iMin = (int) Math.min(n(), dR2);
                        while (true) {
                            if (iMin < 0) {
                                c2543d2 = new C2561g(Double.valueOf(-1.0d));
                            } else if (u(iMin) || !Cw.Z1(o(iMin), interfaceC2603nT7)) {
                                iMin--;
                            } else {
                                c2543d5 = new C2561g(Double.valueOf(iMin));
                            }
                        }
                        c2543d2 = c2543d5;
                    }
                    return c2543d2;
                case 7:
                    Cw.O1(str5, 1, arrayList);
                    interfaceC2603nT9 = iVar.t((InterfaceC2603n) arrayList.get(0));
                    if (interfaceC2603nT9 instanceof C2597m) {
                        throw new IllegalArgumentException("Callback should be a method");
                    }
                    if (n() == 0) {
                        c2543d2 = new C2543d();
                    } else {
                        c2543d2 = Cw.B0(this, iVar, (C2597m) interfaceC2603nT9, null, null);
                    }
                    return c2543d2;
                case 8:
                    Cw.O1(str3, 0, arrayList);
                    iN3 = n();
                    if (iN3 == 0) {
                        c2543d2 = rVar;
                    } else {
                        int i16 = iN3 - 1;
                        c2543d2 = o(i16);
                        s(i16);
                    }
                    return c2543d2;
                case 9:
                    if (!arrayList.isEmpty()) {
                        it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            t(n(), iVar.t((InterfaceC2603n) it2.next()));
                        }
                    }
                    return new C2561g(Double.valueOf(n()));
                case 10:
                    return Cw.Z0(this, iVar, arrayList, true);
                case 11:
                    return Cw.Z0(this, iVar, arrayList, false);
                case 12:
                    Cw.O1("reverse", 0, arrayList);
                    iN4 = n();
                    if (iN4 != 0) {
                        for (i8 = 0; i8 < iN4 / 2; i8++) {
                            if (u(i8)) {
                                InterfaceC2603n interfaceC2603nO = o(i8);
                                t(i8, null);
                                i9 = (iN4 - 1) - i8;
                                if (u(i9)) {
                                    t(i8, o(i9));
                                }
                                t(i9, interfaceC2603nO);
                            }
                        }
                    }
                    c2543d2 = this;
                    return c2543d2;
                case 13:
                    Cw.O1("shift", 0, arrayList);
                    if (n() == 0) {
                        c2543d2 = rVar;
                    } else {
                        c2543d2 = o(0);
                        s(0);
                    }
                    return c2543d2;
                case 14:
                    Cw.U1("slice", 2, arrayList);
                    if (arrayList.isEmpty()) {
                        c2543d2 = zzd();
                    } else {
                        dN2 = n();
                        dR3 = Cw.r(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue());
                        if (dR3 < 0.0d) {
                            dMin = Math.max(dR3 + dN2, 0.0d);
                        } else {
                            dMin = Math.min(dR3, dN2);
                        }
                        if (arrayList.size() == 2) {
                            dR4 = Cw.r(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue());
                            if (dR4 < 0.0d) {
                                dN2 = Math.max(dN2 + dR4, 0.0d);
                            } else {
                                dN2 = Math.min(dN2, dR4);
                            }
                        }
                        c2543d2 = new C2543d();
                        for (i10 = (int) dMin; i10 < dN2; i10++) {
                            c2543d2.t(c2543d2.n(), o(i10));
                        }
                    }
                    return c2543d2;
                case 15:
                    Cw.O1(str2, 1, arrayList);
                    interfaceC2603nT10 = iVar.t((InterfaceC2603n) arrayList.get(0));
                    if (interfaceC2603nT10 instanceof AbstractC2567h) {
                        throw new IllegalArgumentException("Callback should be a method");
                    }
                    if (n() != 0) {
                        AbstractC2567h abstractC2567h2 = (AbstractC2567h) interfaceC2603nT10;
                        itQ4 = q();
                        while (true) {
                            if (itQ4.hasNext()) {
                                iIntValue = ((Integer) itQ4.next()).intValue();
                                if (!u(iIntValue) && abstractC2567h2.a(iVar, Arrays.asList(o(iIntValue), new C2561g(Double.valueOf(iIntValue)), this)).zzg().booleanValue()) {
                                    return c2543d2;
                                }
                            }
                        }
                    }
                    return c2543d2;
                case 16:
                    Cw.U1(str4, 1, arrayList);
                    if (n() >= 2) {
                        ArrayList arrayListR = r();
                        if (!arrayList.isEmpty()) {
                            interfaceC2603nT11 = iVar.t((InterfaceC2603n) arrayList.get(0));
                            if (interfaceC2603nT11 instanceof AbstractC2567h) {
                                throw new IllegalArgumentException("Comparator should be a method");
                            }
                            abstractC2567h = (AbstractC2567h) interfaceC2603nT11;
                        }
                        Collections.sort(arrayListR, new C2638u(abstractC2567h, iVar));
                        treeMap.clear();
                        it3 = arrayListR.iterator();
                        i11 = 0;
                        while (it3.hasNext()) {
                            t(i11, (InterfaceC2603n) it3.next());
                            i11++;
                        }
                    }
                    c2543d2 = this;
                    return c2543d2;
                case 17:
                    if (arrayList.isEmpty()) {
                        c2543d2 = new C2543d();
                    } else {
                        iR = (int) Cw.r(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue());
                        if (iR < 0) {
                            iR = Math.max(0, n() + iR);
                        } else if (iR > n()) {
                            iR = n();
                        }
                        iN5 = n();
                        c2543d6 = new C2543d();
                        if (arrayList.size() > 1) {
                            iMax = Math.max(0, (int) Cw.r(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue()));
                            if (iMax > 0) {
                                for (i15 = iR; i15 < Math.min(iN5, iR + iMax); i15++) {
                                    c2543d6.t(c2543d6.n(), o(iR));
                                    s(iR);
                                }
                            }
                            if (arrayList.size() > 2) {
                                i12 = 2;
                                while (i12 < arrayList.size()) {
                                    interfaceC2603nT12 = iVar.t((InterfaceC2603n) arrayList.get(i12));
                                    if (!(interfaceC2603nT12 instanceof C2555f)) {
                                        throw new IllegalArgumentException("Failed to parse elements to add");
                                    }
                                    i13 = (iR + i12) - 2;
                                    if (i13 >= 0) {
                                        throw new IllegalArgumentException(p000a.r.f("Invalid value index: ", i13));
                                    }
                                    if (i13 >= n()) {
                                        t(i13, interfaceC2603nT12);
                                        i14 = 1;
                                    } else {
                                        for (iIntValue2 = ((Integer) treeMap.lastKey()).intValue(); iIntValue2 >= i13; iIntValue2--) {
                                            numValueOf = Integer.valueOf(iIntValue2);
                                            interfaceC2603n = (InterfaceC2603n) treeMap.get(numValueOf);
                                            if (interfaceC2603n != null) {
                                                t(iIntValue2 + 1, interfaceC2603n);
                                                treeMap.remove(numValueOf);
                                            }
                                        }
                                        i14 = 1;
                                        t(i13, interfaceC2603nT12);
                                    }
                                    i12 += i14;
                                }
                            }
                        } else {
                            while (iR < iN5) {
                                c2543d6.t(c2543d6.n(), o(iR));
                                t(iR, null);
                                iR++;
                            }
                        }
                        c2543d2 = c2543d6;
                    }
                    return c2543d2;
                case 18:
                    Cw.O1(str10, 0, arrayList);
                    return new C2619q(p(","));
                case 19:
                    if (!arrayList.isEmpty()) {
                        c2543d7 = new C2543d();
                        it4 = arrayList.iterator();
                        while (it4.hasNext()) {
                            interfaceC2603nT13 = iVar.t((InterfaceC2603n) it4.next());
                            if (!(interfaceC2603nT13 instanceof C2555f)) {
                                throw new IllegalStateException("Argument evaluation failed");
                            }
                            c2543d7.t(c2543d7.n(), interfaceC2603nT13);
                        }
                        iN6 = c2543d7.n();
                        itQ5 = q();
                        while (itQ5.hasNext()) {
                            Integer num2 = (Integer) itQ5.next();
                            c2543d7.t(num2.intValue() + iN6, o(num2.intValue()));
                        }
                        treeMap.clear();
                        itQ6 = c2543d7.q();
                        while (itQ6.hasNext()) {
                            Integer num3 = (Integer) itQ6.next();
                            t(num3.intValue(), c2543d7.o(num3.intValue()));
                        }
                    }
                    return new C2561g(Double.valueOf(n()));
                default:
                    throw new IllegalArgumentException("Command not supported");
            }
        }
        str2 = "some";
        str3 = "pop";
        str4 = "sort";
        obj = "splice";
        str12 = "reduce";
        str5 = "map";
        str6 = "lastIndexOf";
        str7 = "unshift";
        str8 = "filter";
        switch (str.hashCode()) {
            case -1776922004:
                str9 = str8;
                str10 = str13;
                if (str.equals(str10)) {
                    b8 = 18;
                } else {
                    b8 = -1;
                }
                break;
            case -1354795244:
                str9 = str8;
                if (str.equals("concat")) {
                    str10 = str13;
                    b8 = 0;
                } else {
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case -1274492040:
                str9 = str8;
                if (str.equals(str9)) {
                    str10 = str13;
                    b8 = 2;
                } else {
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case -934873754:
                if (str.equals(str12)) {
                    b8 = 10;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case -895859076:
                if (str.equals(obj)) {
                    b8 = 17;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case -678635926:
                if (str.equals("forEach")) {
                    str9 = str8;
                    str10 = str13;
                    b8 = 3;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case -467511597:
                if (str.equals(str6)) {
                    b8 = 6;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case -277637751:
                if (str.equals(str7)) {
                    b8 = 19;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 107868:
                if (str.equals(str5)) {
                    b8 = 7;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 111185:
                if (str.equals(str3)) {
                    b8 = 8;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 3267882:
                if (str.equals("join")) {
                    b8 = 5;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 3452698:
                if (str.equals("push")) {
                    b8 = 9;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 3536116:
                if (str.equals(str2)) {
                    b8 = 15;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 3536286:
                if (str.equals(str4)) {
                    b8 = 16;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 96891675:
                if (str.equals("every")) {
                    str9 = str8;
                    str10 = str13;
                    b8 = 1;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 109407362:
                if (str.equals("shift")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 109526418:
                if (str.equals("slice")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 965561430:
                if (str.equals("reduceRight")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 1099846370:
                if (str.equals("reverse")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    b8 = 4;
                    str9 = str8;
                    str10 = str13;
                } else {
                    str9 = str8;
                    str10 = str13;
                    b8 = -1;
                }
                break;
            default:
                str9 = str8;
                str10 = str13;
                b8 = -1;
                break;
        }
        rVar = InterfaceC2603n.f23213s;
        strZzi = ",";
        str11 = str9;
        treeMap = this.f23111G;
        c2549e = InterfaceC2603n.f23218x;
        c2549e2 = InterfaceC2603n.f23219y;
        abstractC2567h = null;
        switch (b8) {
            case 0:
                c2543d = (C2543d) zzd();
                if (!arrayList.isEmpty()) {
                    it = arrayList.iterator();
                    while (it.hasNext()) {
                        interfaceC2603nT = iVar.t((InterfaceC2603n) it.next());
                        if (!(interfaceC2603nT instanceof C2555f)) {
                            throw new IllegalStateException("Failed evaluation of arguments");
                        }
                        iN = c2543d.n();
                        if (interfaceC2603nT instanceof C2543d) {
                            c2543d3 = (C2543d) interfaceC2603nT;
                            itQ = c2543d3.q();
                            while (itQ.hasNext()) {
                                Integer num4 = (Integer) itQ.next();
                                c2543d.t(num4.intValue() + iN, c2543d3.o(num4.intValue()));
                            }
                        } else {
                            c2543d.t(iN, interfaceC2603nT);
                        }
                    }
                }
                c2543d2 = c2543d;
                return c2543d2;
            case 1:
                Cw.O1("every", 1, arrayList);
                interfaceC2603nT2 = iVar.t((InterfaceC2603n) arrayList.get(0));
                if (interfaceC2603nT2 instanceof C2597m) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (n() == 0) {
                    return c2543d2;
                }
                return c2543d2;
            case 2:
                Cw.O1(str11, 1, arrayList);
                interfaceC2603nT3 = iVar.t((InterfaceC2603n) arrayList.get(0));
                if (interfaceC2603nT3 instanceof C2597m) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (treeMap.size() == 0) {
                    c2543d2 = new C2543d();
                } else {
                    c2543d4 = (C2543d) zzd();
                    C2543d c2543dB1 = Cw.B0(this, iVar, (C2597m) interfaceC2603nT3, null, Boolean.TRUE);
                    c2543d5 = new C2543d();
                    itQ2 = c2543dB1.q();
                    while (itQ2.hasNext()) {
                        c2543d5.t(c2543d5.n(), c2543d4.o(((Integer) itQ2.next()).intValue()));
                    }
                    c2543d2 = c2543d5;
                }
                return c2543d2;
            case 3:
                Cw.O1("forEach", 1, arrayList);
                interfaceC2603nT4 = iVar.t((InterfaceC2603n) arrayList.get(0));
                if (interfaceC2603nT4 instanceof C2597m) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (treeMap.size() != 0) {
                    Cw.B0(this, iVar, (C2597m) interfaceC2603nT4, null, null);
                }
                c2543d2 = rVar;
                return c2543d2;
            case 4:
                Cw.U1("indexOf", 2, arrayList);
                if (arrayList.isEmpty()) {
                    interfaceC2603nT5 = iVar.t((InterfaceC2603n) arrayList.get(0));
                } else {
                    interfaceC2603nT5 = rVar;
                }
                if (arrayList.size() > 1) {
                    dR = Cw.r(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue());
                    if (dR >= n()) {
                        c2543d2 = new C2561g(Double.valueOf(-1.0d));
                    } else if (dR < 0.0d) {
                        dN = ((double) n()) + dR;
                    } else {
                        dN = dR;
                    }
                    return c2543d2;
                }
                dN = 0.0d;
                itQ3 = q();
                while (itQ3.hasNext()) {
                    int iIntValue4 = ((Integer) itQ3.next()).intValue();
                    d6 = iIntValue4;
                    if (d6 < dN) {
                    }
                }
                c2543d2 = new C2561g(Double.valueOf(-1.0d));
                return c2543d2;
            case 5:
                Cw.U1("join", 1, arrayList);
                if (n() == 0) {
                    c2543d2 = InterfaceC2603n.f23220z;
                } else {
                    if (!arrayList.isEmpty()) {
                        interfaceC2603nT6 = iVar.t((InterfaceC2603n) arrayList.get(0));
                        if (interfaceC2603nT6 instanceof C2591l) {
                            strZzi = HttpUrl.FRAGMENT_ENCODE_SET;
                        } else {
                            strZzi = HttpUrl.FRAGMENT_ENCODE_SET;
                        }
                    }
                    c2543d2 = new C2619q(p(strZzi));
                }
                return c2543d2;
            case 6:
                Cw.U1(str6, 2, arrayList);
                if (arrayList.isEmpty()) {
                    interfaceC2603nT7 = iVar.t((InterfaceC2603n) arrayList.get(0));
                } else {
                    interfaceC2603nT7 = rVar;
                }
                iN2 = n() - 1;
                if (arrayList.size() > 1) {
                    interfaceC2603nT8 = iVar.t((InterfaceC2603n) arrayList.get(1));
                    if (Double.isNaN(interfaceC2603nT8.zzh().doubleValue())) {
                        dR2 = n() - 1;
                    } else {
                        dR2 = Cw.r(interfaceC2603nT8.zzh().doubleValue());
                    }
                    d8 = 0.0d;
                    if (dR2 < 0.0d) {
                        dR2 += (double) n();
                    }
                } else {
                    d8 = 0.0d;
                    dR2 = iN2;
                }
                if (dR2 < d8) {
                    c2543d2 = new C2561g(Double.valueOf(-1.0d));
                } else {
                    iMin = (int) Math.min(n(), dR2);
                    while (true) {
                        if (iMin < 0) {
                            if (u(iMin)) {
                            }
                            iMin--;
                        } else {
                            c2543d2 = new C2561g(Double.valueOf(-1.0d));
                        }
                    }
                    c2543d2 = c2543d5;
                }
                return c2543d2;
            case 7:
                Cw.O1(str5, 1, arrayList);
                interfaceC2603nT9 = iVar.t((InterfaceC2603n) arrayList.get(0));
                if (interfaceC2603nT9 instanceof C2597m) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (n() == 0) {
                    c2543d2 = new C2543d();
                } else {
                    c2543d2 = Cw.B0(this, iVar, (C2597m) interfaceC2603nT9, null, null);
                }
                return c2543d2;
            case 8:
                Cw.O1(str3, 0, arrayList);
                iN3 = n();
                if (iN3 == 0) {
                    c2543d2 = rVar;
                } else {
                    int i17 = iN3 - 1;
                    c2543d2 = o(i17);
                    s(i17);
                }
                return c2543d2;
            case 9:
                if (!arrayList.isEmpty()) {
                    it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        t(n(), iVar.t((InterfaceC2603n) it2.next()));
                    }
                }
                return new C2561g(Double.valueOf(n()));
            case 10:
                return Cw.Z0(this, iVar, arrayList, true);
            case 11:
                return Cw.Z0(this, iVar, arrayList, false);
            case 12:
                Cw.O1("reverse", 0, arrayList);
                iN4 = n();
                if (iN4 != 0) {
                    while (i8 < iN4 / 2) {
                        if (u(i8)) {
                            InterfaceC2603n interfaceC2603nO2 = o(i8);
                            t(i8, null);
                            i9 = (iN4 - 1) - i8;
                            if (u(i9)) {
                                t(i8, o(i9));
                            }
                            t(i9, interfaceC2603nO2);
                        }
                    }
                }
                c2543d2 = this;
                return c2543d2;
            case 13:
                Cw.O1("shift", 0, arrayList);
                if (n() == 0) {
                    c2543d2 = rVar;
                } else {
                    c2543d2 = o(0);
                    s(0);
                }
                return c2543d2;
            case 14:
                Cw.U1("slice", 2, arrayList);
                if (arrayList.isEmpty()) {
                    c2543d2 = zzd();
                } else {
                    dN2 = n();
                    dR3 = Cw.r(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue());
                    if (dR3 < 0.0d) {
                        dMin = Math.max(dR3 + dN2, 0.0d);
                    } else {
                        dMin = Math.min(dR3, dN2);
                    }
                    if (arrayList.size() == 2) {
                        dR4 = Cw.r(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue());
                        if (dR4 < 0.0d) {
                            dN2 = Math.max(dN2 + dR4, 0.0d);
                        } else {
                            dN2 = Math.min(dN2, dR4);
                        }
                    }
                    c2543d2 = new C2543d();
                    while (i10 < dN2) {
                        c2543d2.t(c2543d2.n(), o(i10));
                    }
                }
                return c2543d2;
            case 15:
                Cw.O1(str2, 1, arrayList);
                interfaceC2603nT10 = iVar.t((InterfaceC2603n) arrayList.get(0));
                if (interfaceC2603nT10 instanceof AbstractC2567h) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (n() != 0) {
                    AbstractC2567h abstractC2567h3 = (AbstractC2567h) interfaceC2603nT10;
                    itQ4 = q();
                    while (true) {
                        if (itQ4.hasNext()) {
                            iIntValue = ((Integer) itQ4.next()).intValue();
                            if (!u(iIntValue)) {
                            }
                        }
                    }
                }
                return c2543d2;
            case 16:
                Cw.U1(str4, 1, arrayList);
                if (n() >= 2) {
                    ArrayList arrayListR2 = r();
                    if (!arrayList.isEmpty()) {
                        interfaceC2603nT11 = iVar.t((InterfaceC2603n) arrayList.get(0));
                        if (interfaceC2603nT11 instanceof AbstractC2567h) {
                            throw new IllegalArgumentException("Comparator should be a method");
                        }
                        abstractC2567h = (AbstractC2567h) interfaceC2603nT11;
                    }
                    Collections.sort(arrayListR2, new C2638u(abstractC2567h, iVar));
                    treeMap.clear();
                    it3 = arrayListR2.iterator();
                    i11 = 0;
                    while (it3.hasNext()) {
                        t(i11, (InterfaceC2603n) it3.next());
                        i11++;
                    }
                }
                c2543d2 = this;
                return c2543d2;
            case 17:
                if (arrayList.isEmpty()) {
                    c2543d2 = new C2543d();
                } else {
                    iR = (int) Cw.r(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue());
                    if (iR < 0) {
                        iR = Math.max(0, n() + iR);
                    } else if (iR > n()) {
                        iR = n();
                    }
                    iN5 = n();
                    c2543d6 = new C2543d();
                    if (arrayList.size() > 1) {
                        iMax = Math.max(0, (int) Cw.r(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue()));
                        if (iMax > 0) {
                            while (i15 < Math.min(iN5, iR + iMax)) {
                                c2543d6.t(c2543d6.n(), o(iR));
                                s(iR);
                            }
                        }
                        if (arrayList.size() > 2) {
                            i12 = 2;
                            while (i12 < arrayList.size()) {
                                interfaceC2603nT12 = iVar.t((InterfaceC2603n) arrayList.get(i12));
                                if (!(interfaceC2603nT12 instanceof C2555f)) {
                                    throw new IllegalArgumentException("Failed to parse elements to add");
                                }
                                i13 = (iR + i12) - 2;
                                if (i13 >= 0) {
                                    throw new IllegalArgumentException(p000a.r.f("Invalid value index: ", i13));
                                }
                                if (i13 >= n()) {
                                    t(i13, interfaceC2603nT12);
                                    i14 = 1;
                                } else {
                                    while (iIntValue2 >= i13) {
                                        numValueOf = Integer.valueOf(iIntValue2);
                                        interfaceC2603n = (InterfaceC2603n) treeMap.get(numValueOf);
                                        if (interfaceC2603n != null) {
                                            t(iIntValue2 + 1, interfaceC2603n);
                                            treeMap.remove(numValueOf);
                                        }
                                    }
                                    i14 = 1;
                                    t(i13, interfaceC2603nT12);
                                }
                                i12 += i14;
                            }
                        }
                    } else {
                        while (iR < iN5) {
                            c2543d6.t(c2543d6.n(), o(iR));
                            t(iR, null);
                            iR++;
                        }
                    }
                    c2543d2 = c2543d6;
                }
                return c2543d2;
            case 18:
                Cw.O1(str10, 0, arrayList);
                return new C2619q(p(","));
            case 19:
                if (!arrayList.isEmpty()) {
                    c2543d7 = new C2543d();
                    it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        interfaceC2603nT13 = iVar.t((InterfaceC2603n) it4.next());
                        if (!(interfaceC2603nT13 instanceof C2555f)) {
                            throw new IllegalStateException("Argument evaluation failed");
                        }
                        c2543d7.t(c2543d7.n(), interfaceC2603nT13);
                    }
                    iN6 = c2543d7.n();
                    itQ5 = q();
                    while (itQ5.hasNext()) {
                        Integer num5 = (Integer) itQ5.next();
                        c2543d7.t(num5.intValue() + iN6, o(num5.intValue()));
                    }
                    treeMap.clear();
                    itQ6 = c2543d7.q();
                    while (itQ6.hasNext()) {
                        Integer num6 = (Integer) itQ6.next();
                        t(num6.intValue(), c2543d7.o(num6.intValue()));
                    }
                }
                return new C2561g(Double.valueOf(n()));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    public final int n() {
        TreeMap treeMap = this.f23111G;
        if (treeMap.isEmpty()) {
            return 0;
        }
        return ((Integer) treeMap.lastKey()).intValue() + 1;
    }

    public final InterfaceC2603n o(int i8) {
        InterfaceC2603n interfaceC2603n;
        if (i8 < n()) {
            return (!u(i8) || (interfaceC2603n = (InterfaceC2603n) this.f23111G.get(Integer.valueOf(i8))) == null) ? InterfaceC2603n.f23213s : interfaceC2603n;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    public final String p(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        if (!this.f23111G.isEmpty()) {
            int i8 = 0;
            while (true) {
                str2 = str == null ? HttpUrl.FRAGMENT_ENCODE_SET : str;
                if (i8 >= n()) {
                    break;
                }
                InterfaceC2603n interfaceC2603nO = o(i8);
                sb.append(str2);
                if (!(interfaceC2603nO instanceof r) && !(interfaceC2603nO instanceof C2591l)) {
                    sb.append(interfaceC2603nO.zzi());
                }
                i8++;
            }
            sb.delete(0, str2.length());
        }
        return sb.toString();
    }

    public final Iterator q() {
        return this.f23111G.keySet().iterator();
    }

    public final ArrayList r() {
        ArrayList arrayList = new ArrayList(n());
        for (int i8 = 0; i8 < n(); i8++) {
            arrayList.add(o(i8));
        }
        return arrayList;
    }

    public final void s(int i8) {
        TreeMap treeMap = this.f23111G;
        int iIntValue = ((Integer) treeMap.lastKey()).intValue();
        if (i8 > iIntValue || i8 < 0) {
            return;
        }
        treeMap.remove(Integer.valueOf(i8));
        if (i8 == iIntValue) {
            int i9 = i8 - 1;
            Integer numValueOf = Integer.valueOf(i9);
            if (treeMap.containsKey(numValueOf) || i9 < 0) {
                return;
            }
            treeMap.put(numValueOf, InterfaceC2603n.f23213s);
            return;
        }
        while (true) {
            i8++;
            if (i8 > ((Integer) treeMap.lastKey()).intValue()) {
                return;
            }
            Integer numValueOf2 = Integer.valueOf(i8);
            InterfaceC2603n interfaceC2603n = (InterfaceC2603n) treeMap.get(numValueOf2);
            if (interfaceC2603n != null) {
                treeMap.put(Integer.valueOf(i8 - 1), interfaceC2603n);
                treeMap.remove(numValueOf2);
            }
        }
    }

    public final void t(int i8, InterfaceC2603n interfaceC2603n) {
        if (i8 > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (i8 < 0) {
            throw new IndexOutOfBoundsException(p000a.r.f("Out of bounds index: ", i8));
        }
        TreeMap treeMap = this.f23111G;
        if (interfaceC2603n == null) {
            treeMap.remove(Integer.valueOf(i8));
        } else {
            treeMap.put(Integer.valueOf(i8), interfaceC2603n);
        }
    }

    public final String toString() {
        return p(",");
    }

    public final boolean u(int i8) {
        if (i8 >= 0) {
            TreeMap treeMap = this.f23111G;
            if (i8 <= ((Integer) treeMap.lastKey()).intValue()) {
                return treeMap.containsKey(Integer.valueOf(i8));
            }
        }
        throw new IndexOutOfBoundsException(p000a.r.f("Out of bounds index: ", i8));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n zzd() {
        C2543d c2543d = new C2543d();
        for (Map.Entry entry : this.f23111G.entrySet()) {
            boolean z7 = entry.getValue() instanceof InterfaceC2579j;
            TreeMap treeMap = c2543d.f23111G;
            if (z7) {
                treeMap.put((Integer) entry.getKey(), (InterfaceC2603n) entry.getValue());
            } else {
                treeMap.put((Integer) entry.getKey(), ((InterfaceC2603n) entry.getValue()).zzd());
            }
        }
        return c2543d;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Boolean zzg() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Double zzh() {
        TreeMap treeMap = this.f23111G;
        if (treeMap.size() == 1) {
            return o(0).zzh();
        }
        return treeMap.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final String zzi() {
        return p(",");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Iterator zzl() {
        return new C2537c(this.f23111G.keySet().iterator(), this.f23112H.keySet().iterator());
    }

    public C2543d(List list) {
        this();
        if (list != null) {
            for (int i8 = 0; i8 < list.size(); i8++) {
                t(i8, (InterfaceC2603n) list.get(i8));
            }
        }
    }
}
