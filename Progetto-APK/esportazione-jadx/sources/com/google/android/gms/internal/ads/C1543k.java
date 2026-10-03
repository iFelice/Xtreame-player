package com.google.android.gms.internal.ads;

import U0.HandlerThreadC0346l;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import android.view.Surface;
import com.google.api.Endpoint;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.MediaDiscoverer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1543k extends VM implements InterfaceC1647m {

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public static final int[] f19542e1 = {1920, 1600, 1440, MediaDiscoverer.Event.Started, 960, 854, 640, 540, 480};

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public static boolean f19543f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public static boolean f19544g1;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public final boolean f19545A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public final C1699n f19546B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public final U0.C f19547C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public A2.i f19548D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public boolean f19549E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public boolean f19550F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public C1285f f19551G0;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public boolean f19552H0;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public List f19553I0;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public Surface f19554J0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public C1595l f19555K0;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public Br f19556L0;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public boolean f19557M0;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public int f19558N0;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public int f19559O0;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public long f19560P0;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public int f19561Q0;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public int f19562R0;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public int f19563S0;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public long f19564T0;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public int f19565U0;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public long f19566V0;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public C2043th f19567W0;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public C2043th f19568X0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public int f19569Y0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public int f19570Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public C2031tK f19571a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public long f19572b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public long f19573c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public boolean f19574d1;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final Context f19575x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final boolean f19576y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final C2218x f19577z0;

    public C1543k(Context context, I7 i8, Handler handler, SurfaceHolderCallbackC1979sK surfaceHolderCallbackC1979sK) {
        super(2, i8, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.f19575x0 = applicationContext;
        this.f19551G0 = null;
        this.f19577z0 = new C2218x(handler, surfaceHolderCallbackC1979sK);
        this.f19576y0 = true;
        this.f19546B0 = new C1699n(applicationContext, this);
        this.f19547C0 = new U0.C();
        this.f19545A0 = "NVIDIA".equals(Et.f13236c);
        this.f19556L0 = Br.f12504c;
        this.f19558N0 = 1;
        this.f19559O0 = 0;
        this.f19567W0 = C2043th.f21089d;
        this.f19570Z0 = 0;
        this.f19568X0 = null;
        this.f19569Y0 = -1000;
        this.f19572b1 = -9223372036854775807L;
        this.f19573c1 = -9223372036854775807L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0147  */
    /* JADX WARN: Code duplicated, block: B:102:0x014b  */
    /* JADX WARN: Code duplicated, block: B:104:0x0153  */
    /* JADX WARN: Code duplicated, block: B:105:0x0157  */
    /* JADX WARN: Code duplicated, block: B:107:0x015f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0163  */
    /* JADX WARN: Code duplicated, block: B:110:0x016b  */
    /* JADX WARN: Code duplicated, block: B:111:0x016f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0177  */
    /* JADX WARN: Code duplicated, block: B:114:0x017b  */
    /* JADX WARN: Code duplicated, block: B:116:0x0183  */
    /* JADX WARN: Code duplicated, block: B:117:0x0187  */
    /* JADX WARN: Code duplicated, block: B:119:0x018f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0193  */
    /* JADX WARN: Code duplicated, block: B:122:0x019b  */
    /* JADX WARN: Code duplicated, block: B:123:0x019f  */
    /* JADX WARN: Code duplicated, block: B:125:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:126:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:128:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:129:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:131:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:132:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:134:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:135:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:137:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:138:0x01db  */
    /* JADX WARN: Code duplicated, block: B:140:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:141:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:144:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:146:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:149:0x0207  */
    /* JADX WARN: Code duplicated, block: B:150:0x020b  */
    /* JADX WARN: Code duplicated, block: B:152:0x0213  */
    /* JADX WARN: Code duplicated, block: B:153:0x0217  */
    /* JADX WARN: Code duplicated, block: B:155:0x021f  */
    /* JADX WARN: Code duplicated, block: B:156:0x0223  */
    /* JADX WARN: Code duplicated, block: B:158:0x022b  */
    /* JADX WARN: Code duplicated, block: B:159:0x022f  */
    /* JADX WARN: Code duplicated, block: B:161:0x0237  */
    /* JADX WARN: Code duplicated, block: B:162:0x023b  */
    /* JADX WARN: Code duplicated, block: B:164:0x0243  */
    /* JADX WARN: Code duplicated, block: B:165:0x0247  */
    /* JADX WARN: Code duplicated, block: B:167:0x024f  */
    /* JADX WARN: Code duplicated, block: B:168:0x0253  */
    /* JADX WARN: Code duplicated, block: B:170:0x025b  */
    /* JADX WARN: Code duplicated, block: B:171:0x025f  */
    /* JADX WARN: Code duplicated, block: B:173:0x0267  */
    /* JADX WARN: Code duplicated, block: B:174:0x026b  */
    /* JADX WARN: Code duplicated, block: B:176:0x0273  */
    /* JADX WARN: Code duplicated, block: B:177:0x0277  */
    /* JADX WARN: Code duplicated, block: B:179:0x027f  */
    /* JADX WARN: Code duplicated, block: B:180:0x0283  */
    /* JADX WARN: Code duplicated, block: B:182:0x028b  */
    /* JADX WARN: Code duplicated, block: B:183:0x028f  */
    /* JADX WARN: Code duplicated, block: B:185:0x0297  */
    /* JADX WARN: Code duplicated, block: B:186:0x029b  */
    /* JADX WARN: Code duplicated, block: B:188:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:189:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:191:0x02af  */
    /* JADX WARN: Code duplicated, block: B:192:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:194:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:195:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:197:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:198:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:200:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:201:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:203:0x02df  */
    /* JADX WARN: Code duplicated, block: B:204:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:206:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:207:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:209:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:210:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:212:0x0303  */
    /* JADX WARN: Code duplicated, block: B:213:0x0307  */
    /* JADX WARN: Code duplicated, block: B:215:0x030f  */
    /* JADX WARN: Code duplicated, block: B:216:0x0313  */
    /* JADX WARN: Code duplicated, block: B:218:0x031b  */
    /* JADX WARN: Code duplicated, block: B:219:0x031f  */
    /* JADX WARN: Code duplicated, block: B:221:0x0327  */
    /* JADX WARN: Code duplicated, block: B:222:0x032b  */
    /* JADX WARN: Code duplicated, block: B:224:0x0333  */
    /* JADX WARN: Code duplicated, block: B:225:0x0337  */
    /* JADX WARN: Code duplicated, block: B:227:0x033f  */
    /* JADX WARN: Code duplicated, block: B:228:0x0343  */
    /* JADX WARN: Code duplicated, block: B:230:0x034b  */
    /* JADX WARN: Code duplicated, block: B:231:0x034f  */
    /* JADX WARN: Code duplicated, block: B:233:0x0357  */
    /* JADX WARN: Code duplicated, block: B:234:0x035b  */
    /* JADX WARN: Code duplicated, block: B:236:0x0363  */
    /* JADX WARN: Code duplicated, block: B:237:0x0367  */
    /* JADX WARN: Code duplicated, block: B:239:0x036f  */
    /* JADX WARN: Code duplicated, block: B:240:0x0373  */
    /* JADX WARN: Code duplicated, block: B:242:0x037b  */
    /* JADX WARN: Code duplicated, block: B:243:0x037f  */
    /* JADX WARN: Code duplicated, block: B:245:0x0387  */
    /* JADX WARN: Code duplicated, block: B:246:0x038b  */
    /* JADX WARN: Code duplicated, block: B:248:0x0393  */
    /* JADX WARN: Code duplicated, block: B:249:0x0397  */
    /* JADX WARN: Code duplicated, block: B:251:0x039f  */
    /* JADX WARN: Code duplicated, block: B:252:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:254:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:255:0x03af  */
    /* JADX WARN: Code duplicated, block: B:257:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:258:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:260:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:261:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:263:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:264:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:266:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:267:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:269:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:270:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:272:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:273:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:275:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:276:0x0400  */
    /* JADX WARN: Code duplicated, block: B:278:0x0408  */
    /* JADX WARN: Code duplicated, block: B:279:0x040c  */
    /* JADX WARN: Code duplicated, block: B:281:0x0414  */
    /* JADX WARN: Code duplicated, block: B:282:0x0418  */
    /* JADX WARN: Code duplicated, block: B:284:0x0420  */
    /* JADX WARN: Code duplicated, block: B:285:0x0424  */
    /* JADX WARN: Code duplicated, block: B:287:0x042c  */
    /* JADX WARN: Code duplicated, block: B:288:0x0430  */
    /* JADX WARN: Code duplicated, block: B:290:0x0438  */
    /* JADX WARN: Code duplicated, block: B:291:0x043c  */
    /* JADX WARN: Code duplicated, block: B:293:0x0444  */
    /* JADX WARN: Code duplicated, block: B:294:0x0448  */
    /* JADX WARN: Code duplicated, block: B:296:0x0450  */
    /* JADX WARN: Code duplicated, block: B:297:0x0454  */
    /* JADX WARN: Code duplicated, block: B:299:0x045c  */
    /* JADX WARN: Code duplicated, block: B:300:0x0460  */
    /* JADX WARN: Code duplicated, block: B:302:0x0468  */
    /* JADX WARN: Code duplicated, block: B:303:0x046c  */
    /* JADX WARN: Code duplicated, block: B:305:0x0474  */
    /* JADX WARN: Code duplicated, block: B:306:0x0478  */
    /* JADX WARN: Code duplicated, block: B:308:0x0480  */
    /* JADX WARN: Code duplicated, block: B:309:0x0484  */
    /* JADX WARN: Code duplicated, block: B:311:0x048c  */
    /* JADX WARN: Code duplicated, block: B:312:0x0490  */
    /* JADX WARN: Code duplicated, block: B:314:0x0498  */
    /* JADX WARN: Code duplicated, block: B:315:0x049b  */
    /* JADX WARN: Code duplicated, block: B:317:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:318:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:320:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:321:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:323:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:324:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:327:0x04c7  */
    /* JADX WARN: Code duplicated, block: B:329:0x04cf  */
    /* JADX WARN: Code duplicated, block: B:330:0x04d3  */
    /* JADX WARN: Code duplicated, block: B:332:0x04db  */
    /* JADX WARN: Code duplicated, block: B:333:0x04df  */
    /* JADX WARN: Code duplicated, block: B:335:0x04e7  */
    /* JADX WARN: Code duplicated, block: B:336:0x04eb  */
    /* JADX WARN: Code duplicated, block: B:338:0x04f3  */
    /* JADX WARN: Code duplicated, block: B:339:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:341:0x04ff  */
    /* JADX WARN: Code duplicated, block: B:342:0x0503  */
    /* JADX WARN: Code duplicated, block: B:344:0x050b  */
    /* JADX WARN: Code duplicated, block: B:345:0x050f  */
    /* JADX WARN: Code duplicated, block: B:347:0x0517  */
    /* JADX WARN: Code duplicated, block: B:348:0x051b  */
    /* JADX WARN: Code duplicated, block: B:350:0x0523  */
    /* JADX WARN: Code duplicated, block: B:351:0x0527  */
    /* JADX WARN: Code duplicated, block: B:353:0x052f  */
    /* JADX WARN: Code duplicated, block: B:354:0x0533  */
    /* JADX WARN: Code duplicated, block: B:356:0x053b  */
    /* JADX WARN: Code duplicated, block: B:357:0x053f  */
    /* JADX WARN: Code duplicated, block: B:359:0x0547  */
    /* JADX WARN: Code duplicated, block: B:360:0x054b  */
    /* JADX WARN: Code duplicated, block: B:362:0x0553  */
    /* JADX WARN: Code duplicated, block: B:363:0x0557  */
    /* JADX WARN: Code duplicated, block: B:365:0x055f  */
    /* JADX WARN: Code duplicated, block: B:366:0x0563  */
    /* JADX WARN: Code duplicated, block: B:368:0x056b  */
    /* JADX WARN: Code duplicated, block: B:369:0x056f  */
    /* JADX WARN: Code duplicated, block: B:371:0x0577  */
    /* JADX WARN: Code duplicated, block: B:372:0x057b  */
    /* JADX WARN: Code duplicated, block: B:374:0x0583  */
    /* JADX WARN: Code duplicated, block: B:375:0x0587  */
    /* JADX WARN: Code duplicated, block: B:377:0x058f  */
    /* JADX WARN: Code duplicated, block: B:378:0x0593  */
    /* JADX WARN: Code duplicated, block: B:380:0x059b  */
    /* JADX WARN: Code duplicated, block: B:381:0x059f  */
    /* JADX WARN: Code duplicated, block: B:383:0x05a7  */
    /* JADX WARN: Code duplicated, block: B:384:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:386:0x05b3  */
    /* JADX WARN: Code duplicated, block: B:387:0x05b7  */
    /* JADX WARN: Code duplicated, block: B:389:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:38:0x007b  */
    /* JADX WARN: Code duplicated, block: B:390:0x05c3  */
    /* JADX WARN: Code duplicated, block: B:392:0x05cb  */
    /* JADX WARN: Code duplicated, block: B:393:0x05cf  */
    /* JADX WARN: Code duplicated, block: B:395:0x05d7  */
    /* JADX WARN: Code duplicated, block: B:396:0x05db  */
    /* JADX WARN: Code duplicated, block: B:398:0x05e3  */
    /* JADX WARN: Code duplicated, block: B:399:0x05e7  */
    /* JADX WARN: Code duplicated, block: B:401:0x05ef  */
    /* JADX WARN: Code duplicated, block: B:402:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:404:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:405:0x05ff  */
    /* JADX WARN: Code duplicated, block: B:407:0x0607  */
    /* JADX WARN: Code duplicated, block: B:408:0x060b  */
    /* JADX WARN: Code duplicated, block: B:410:0x0613  */
    /* JADX WARN: Code duplicated, block: B:411:0x0617  */
    /* JADX WARN: Code duplicated, block: B:413:0x061f  */
    /* JADX WARN: Code duplicated, block: B:414:0x0623  */
    /* JADX WARN: Code duplicated, block: B:416:0x062b  */
    /* JADX WARN: Code duplicated, block: B:417:0x062f  */
    /* JADX WARN: Code duplicated, block: B:419:0x0637  */
    /* JADX WARN: Code duplicated, block: B:41:0x0080 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:420:0x063b  */
    /* JADX WARN: Code duplicated, block: B:422:0x0643  */
    /* JADX WARN: Code duplicated, block: B:423:0x0647  */
    /* JADX WARN: Code duplicated, block: B:425:0x064f  */
    /* JADX WARN: Code duplicated, block: B:426:0x0653  */
    /* JADX WARN: Code duplicated, block: B:428:0x065b  */
    /* JADX WARN: Code duplicated, block: B:429:0x065e  */
    /* JADX WARN: Code duplicated, block: B:431:0x0666  */
    /* JADX WARN: Code duplicated, block: B:432:0x0669  */
    /* JADX WARN: Code duplicated, block: B:434:0x0671  */
    /* JADX WARN: Code duplicated, block: B:435:0x0675  */
    /* JADX WARN: Code duplicated, block: B:437:0x067d  */
    /* JADX WARN: Code duplicated, block: B:438:0x0681  */
    /* JADX WARN: Code duplicated, block: B:440:0x0689  */
    /* JADX WARN: Code duplicated, block: B:441:0x068d  */
    /* JADX WARN: Code duplicated, block: B:443:0x0695  */
    /* JADX WARN: Code duplicated, block: B:444:0x0699  */
    /* JADX WARN: Code duplicated, block: B:446:0x06a1  */
    /* JADX WARN: Code duplicated, block: B:447:0x06a5  */
    /* JADX WARN: Code duplicated, block: B:449:0x06ad  */
    /* JADX WARN: Code duplicated, block: B:44:0x0086  */
    /* JADX WARN: Code duplicated, block: B:450:0x06b1  */
    /* JADX WARN: Code duplicated, block: B:452:0x06b9  */
    /* JADX WARN: Code duplicated, block: B:453:0x06bd  */
    /* JADX WARN: Code duplicated, block: B:455:0x06c5  */
    /* JADX WARN: Code duplicated, block: B:456:0x06c9  */
    /* JADX WARN: Code duplicated, block: B:458:0x06d1  */
    /* JADX WARN: Code duplicated, block: B:459:0x06d5  */
    /* JADX WARN: Code duplicated, block: B:461:0x06dd  */
    /* JADX WARN: Code duplicated, block: B:462:0x06e1  */
    /* JADX WARN: Code duplicated, block: B:464:0x06e9  */
    /* JADX WARN: Code duplicated, block: B:465:0x06ed  */
    /* JADX WARN: Code duplicated, block: B:467:0x06f5  */
    /* JADX WARN: Code duplicated, block: B:468:0x06f9  */
    /* JADX WARN: Code duplicated, block: B:470:0x0701  */
    /* JADX WARN: Code duplicated, block: B:471:0x0705  */
    /* JADX WARN: Code duplicated, block: B:473:0x070d  */
    /* JADX WARN: Code duplicated, block: B:474:0x0711  */
    /* JADX WARN: Code duplicated, block: B:476:0x0719  */
    /* JADX WARN: Code duplicated, block: B:477:0x071d  */
    /* JADX WARN: Code duplicated, block: B:479:0x0725  */
    /* JADX WARN: Code duplicated, block: B:480:0x0729  */
    /* JADX WARN: Code duplicated, block: B:482:0x0731  */
    /* JADX WARN: Code duplicated, block: B:483:0x0734  */
    /* JADX WARN: Code duplicated, block: B:485:0x073c  */
    /* JADX WARN: Code duplicated, block: B:486:0x073f  */
    /* JADX WARN: Code duplicated, block: B:488:0x0747  */
    /* JADX WARN: Code duplicated, block: B:489:0x074a  */
    /* JADX WARN: Code duplicated, block: B:491:0x0752  */
    /* JADX WARN: Code duplicated, block: B:492:0x0755  */
    /* JADX WARN: Code duplicated, block: B:494:0x075d  */
    /* JADX WARN: Code duplicated, block: B:495:0x0760  */
    /* JADX WARN: Code duplicated, block: B:497:0x0768  */
    /* JADX WARN: Code duplicated, block: B:498:0x076b  */
    /* JADX WARN: Code duplicated, block: B:49:0x0095 A[Catch: all -> 0x0083, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:516:0x07a4, B:46:0x008a, B:49:0x0095, B:84:0x0104, B:509:0x0790, B:517:0x07a8), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:500:0x0773  */
    /* JADX WARN: Code duplicated, block: B:501:0x0776  */
    /* JADX WARN: Code duplicated, block: B:503:0x077e  */
    /* JADX WARN: Code duplicated, block: B:504:0x0781  */
    /* JADX WARN: Code duplicated, block: B:506:0x0789  */
    /* JADX WARN: Code duplicated, block: B:507:0x078c  */
    /* JADX WARN: Code duplicated, block: B:509:0x0790 A[Catch: all -> 0x0083, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:516:0x07a4, B:46:0x008a, B:49:0x0095, B:84:0x0104, B:509:0x0790, B:517:0x07a8), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:513:0x079a  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00be  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00de  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:79:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:82:0x0100  */
    /* JADX WARN: Code duplicated, block: B:84:0x0104 A[Catch: all -> 0x0083, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:516:0x07a4, B:46:0x008a, B:49:0x0095, B:84:0x0104, B:509:0x0790, B:517:0x07a8), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:87:0x010f  */
    /* JADX WARN: Code duplicated, block: B:89:0x0117  */
    /* JADX WARN: Code duplicated, block: B:90:0x011b  */
    /* JADX WARN: Code duplicated, block: B:92:0x0123  */
    /* JADX WARN: Code duplicated, block: B:93:0x0127  */
    /* JADX WARN: Code duplicated, block: B:95:0x012f  */
    /* JADX WARN: Code duplicated, block: B:96:0x0133  */
    /* JADX WARN: Code duplicated, block: B:98:0x013b  */
    /* JADX WARN: Code duplicated, block: B:99:0x013f  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final boolean p0(String str) {
        String str2;
        byte b8;
        String str3;
        byte b9;
        boolean z7 = false;
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (C1543k.class) {
            if (!f19543f1) {
                int i8 = Et.f13234a;
                byte b10 = 28;
                if (i8 <= 28) {
                    String str4 = Et.f13235b;
                    switch (str4.hashCode()) {
                        case -1339091551:
                            if (!str4.equals("dangal")) {
                                b9 = -1;
                            } else {
                                b9 = 1;
                            }
                            break;
                        case -1220081023:
                            if (!str4.equals("dangalFHD")) {
                                b9 = -1;
                            } else {
                                b9 = 3;
                            }
                            break;
                        case -1220066608:
                            if (!str4.equals("dangalUHD")) {
                                b9 = -1;
                            } else {
                                b9 = 2;
                            }
                            break;
                        case -1012436106:
                            if (!str4.equals("oneday")) {
                                b9 = -1;
                            } else {
                                b9 = 7;
                            }
                            break;
                        case -760312546:
                            if (!str4.equals("aquaman")) {
                                b9 = -1;
                            } else {
                                b9 = 0;
                            }
                            break;
                        case -64886864:
                            if (!str4.equals("magnolia")) {
                                b9 = -1;
                            } else {
                                b9 = 4;
                            }
                            break;
                        case 3415681:
                            if (!str4.equals("once")) {
                                b9 = -1;
                            } else {
                                b9 = 6;
                            }
                            break;
                        case 825323514:
                            if (!str4.equals("machuca")) {
                                b9 = -1;
                            } else {
                                b9 = 5;
                            }
                            break;
                        default:
                            b9 = -1;
                            break;
                    }
                    switch (b9) {
                        default:
                            if (i8 <= 27 || !"HWEML".equals(Et.f13235b)) {
                                str2 = Et.f13237d;
                                switch (str2.hashCode()) {
                                    case -349662828:
                                        if (!str2.equals("AFTJMST12")) {
                                            b8 = -1;
                                        } else {
                                            b8 = 6;
                                        }
                                        break;
                                    case -321033677:
                                        if (!str2.equals("AFTKMST12")) {
                                            b8 = -1;
                                        } else {
                                            b8 = 7;
                                        }
                                        break;
                                    case 2006354:
                                        if (!str2.equals("AFTA")) {
                                            b8 = -1;
                                        } else {
                                            b8 = 0;
                                        }
                                        break;
                                    case 2006367:
                                        if (!str2.equals("AFTN")) {
                                            b8 = -1;
                                        } else {
                                            b8 = 1;
                                        }
                                        break;
                                    case 2006371:
                                        if (!str2.equals("AFTR")) {
                                            b8 = -1;
                                        } else {
                                            b8 = 2;
                                        }
                                        break;
                                    case 1785421873:
                                        if (!str2.equals("AFTEU011")) {
                                            b8 = -1;
                                        } else {
                                            b8 = 3;
                                        }
                                        break;
                                    case 1785421876:
                                        if (!str2.equals("AFTEU014")) {
                                            b8 = -1;
                                        } else {
                                            b8 = 4;
                                        }
                                        break;
                                    case 1798172390:
                                        if (!str2.equals("AFTSO001")) {
                                            b8 = -1;
                                        } else {
                                            b8 = 8;
                                        }
                                        break;
                                    case 2119412532:
                                        if (!str2.equals("AFTEUFF014")) {
                                            b8 = -1;
                                        } else {
                                            b8 = 5;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    default:
                                        if (i8 <= 26) {
                                            str3 = Et.f13235b;
                                            switch (str3.hashCode()) {
                                                case -2144781245:
                                                    if (!str3.equals("GIONEE_SWW1609")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 54;
                                                    }
                                                    break;
                                                case -2144781185:
                                                    if (!str3.equals("GIONEE_SWW1627")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 55;
                                                    }
                                                    break;
                                                case -2144781160:
                                                    if (!str3.equals("GIONEE_SWW1631")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 56;
                                                    }
                                                    break;
                                                case -2097309513:
                                                    if (!str3.equals("K50a40")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 74;
                                                    }
                                                    break;
                                                case -2022874474:
                                                    if (!str3.equals("CP8676_I02")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 22;
                                                    }
                                                    break;
                                                case -1978993182:
                                                    if (!str3.equals("NX541J")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 89;
                                                    }
                                                    break;
                                                case -1978990237:
                                                    if (!str3.equals("NX573J")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 90;
                                                    }
                                                    break;
                                                case -1936688988:
                                                    if (!str3.equals("PGN528")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 101;
                                                    }
                                                    break;
                                                case -1936688066:
                                                    if (!str3.equals("PGN610")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 102;
                                                    }
                                                    break;
                                                case -1936688065:
                                                    if (!str3.equals("PGN611")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 103;
                                                    }
                                                    break;
                                                case -1931988508:
                                                    if (!str3.equals("AquaPowerM")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                                                    }
                                                    break;
                                                case -1885099851:
                                                    if (!str3.equals("RAIJIN")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 116;
                                                    }
                                                    break;
                                                case -1696512866:
                                                    if (!str3.equals("XT1663")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 137;
                                                    }
                                                    break;
                                                case -1680025915:
                                                    if (!str3.equals("ComioS1")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 21;
                                                    }
                                                    break;
                                                case -1615810839:
                                                    if (!str3.equals("Phantom6")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 104;
                                                    }
                                                    break;
                                                case -1600724499:
                                                    if (!str3.equals("pacificrim")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 95;
                                                    }
                                                    break;
                                                case -1554255044:
                                                    if (!str3.equals("vernee_M5")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 130;
                                                    }
                                                    break;
                                                case -1481772737:
                                                    if (!str3.equals("panell_dl")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 97;
                                                    }
                                                    break;
                                                case -1481772730:
                                                    if (!str3.equals("panell_ds")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 98;
                                                    }
                                                    break;
                                                case -1481772729:
                                                    if (!str3.equals("panell_dt")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 99;
                                                    }
                                                    break;
                                                case -1320080169:
                                                    if (!str3.equals("GiONEE_GBL7319")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 52;
                                                    }
                                                    break;
                                                case -1217592143:
                                                    if (!str3.equals("BRAVIA_ATV2")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 18;
                                                    }
                                                    break;
                                                case -1180384755:
                                                    if (!str3.equals("iris60")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 70;
                                                    }
                                                    break;
                                                case -1139198265:
                                                    if (!str3.equals("Slate_Pro")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 118;
                                                    }
                                                    break;
                                                case -1052835013:
                                                    if (!str3.equals("namath")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 87;
                                                    }
                                                    break;
                                                case -993250464:
                                                    if (!str3.equals("A10-70F")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 5;
                                                    }
                                                    break;
                                                case -993250458:
                                                    if (!str3.equals("A10-70L")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 6;
                                                    }
                                                    break;
                                                case -965403638:
                                                    if (!str3.equals("s905x018")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 120;
                                                    }
                                                    break;
                                                case -958336948:
                                                    if (!str3.equals("ELUGA_Ray_X")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 34;
                                                    }
                                                    break;
                                                case -879245230:
                                                    if (!str3.equals("tcl_eu")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 126;
                                                    }
                                                    break;
                                                case -842500323:
                                                    if (!str3.equals("nicklaus_f")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 88;
                                                    }
                                                    break;
                                                case -821392978:
                                                    if (!str3.equals("A7000-a")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 9;
                                                    }
                                                    break;
                                                case -797483286:
                                                    if (!str3.equals("SVP-DTV15")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 119;
                                                    }
                                                    break;
                                                case -794946968:
                                                    if (!str3.equals("watson")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 131;
                                                    }
                                                    break;
                                                case -788334647:
                                                    if (!str3.equals("whyred")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 132;
                                                    }
                                                    break;
                                                case -782144577:
                                                    if (!str3.equals("OnePlus5T")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 91;
                                                    }
                                                    break;
                                                case -575125681:
                                                    if (!str3.equals("GiONEE_CBL7513")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 51;
                                                    }
                                                    break;
                                                case -521118391:
                                                    if (!str3.equals("GIONEE_GBL7360")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 53;
                                                    }
                                                    break;
                                                case -430914369:
                                                    if (!str3.equals("Pixi4-7_3G")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 105;
                                                    }
                                                    break;
                                                case -290434366:
                                                    if (!str3.equals("taido_row")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 121;
                                                    }
                                                    break;
                                                case -282781963:
                                                    if (!str3.equals("BLACK-1X")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 17;
                                                    }
                                                    break;
                                                case -277133239:
                                                    if (!str3.equals("Z12_PRO")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 138;
                                                    }
                                                    break;
                                                case -173639913:
                                                    if (!str3.equals("ELUGA_A3_Pro")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 31;
                                                    }
                                                    break;
                                                case -56598463:
                                                    if (!str3.equals("woods_fn")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 134;
                                                    }
                                                    break;
                                                case 2126:
                                                    if (!str3.equals("C1")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 20;
                                                    }
                                                    break;
                                                case 2564:
                                                    if (!str3.equals("Q5")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 113;
                                                    }
                                                    break;
                                                case 2715:
                                                    if (!str3.equals("V1")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 127;
                                                    }
                                                    break;
                                                case 2719:
                                                    if (!str3.equals("V5")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 129;
                                                    }
                                                    break;
                                                case 3091:
                                                    if (!str3.equals("b5")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 16;
                                                    }
                                                    break;
                                                case 3483:
                                                    if (!str3.equals("mh")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 84;
                                                    }
                                                    break;
                                                case 73405:
                                                    if (!str3.equals("JGZ")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 73;
                                                    }
                                                    break;
                                                case 75537:
                                                    if (!str3.equals("M04")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 79;
                                                    }
                                                    break;
                                                case 75739:
                                                    if (!str3.equals("M5c")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 80;
                                                    }
                                                    break;
                                                case 76779:
                                                    if (!str3.equals("MX6")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 86;
                                                    }
                                                    break;
                                                case 78669:
                                                    if (!str3.equals("P85")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 94;
                                                    }
                                                    break;
                                                case 79305:
                                                    if (!str3.equals("PLE")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 107;
                                                    }
                                                    break;
                                                case 80618:
                                                    if (!str3.equals("QX1")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 115;
                                                    }
                                                    break;
                                                case 88274:
                                                    if (!str3.equals("Z80")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 139;
                                                    }
                                                    break;
                                                case 98846:
                                                    if (!str3.equals("cv1")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 26;
                                                    }
                                                    break;
                                                case 98848:
                                                    if (!str3.equals("cv3")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 27;
                                                    }
                                                    break;
                                                case 99329:
                                                    if (!str3.equals("deb")) {
                                                        b10 = -1;
                                                    }
                                                    break;
                                                case 101481:
                                                    if (!str3.equals("flo")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 49;
                                                    }
                                                    break;
                                                case 1513190:
                                                    if (!str3.equals("1601")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 0;
                                                    }
                                                    break;
                                                case 1514184:
                                                    if (!str3.equals("1713")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 1;
                                                    }
                                                    break;
                                                case 1514185:
                                                    if (!str3.equals("1714")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 2;
                                                    }
                                                    break;
                                                case 2133089:
                                                    if (!str3.equals("F01H")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 36;
                                                    }
                                                    break;
                                                case 2133091:
                                                    if (!str3.equals("F01J")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 37;
                                                    }
                                                    break;
                                                case 2133120:
                                                    if (!str3.equals("F02H")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 38;
                                                    }
                                                    break;
                                                case 2133151:
                                                    if (!str3.equals("F03H")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 39;
                                                    }
                                                    break;
                                                case 2133182:
                                                    if (!str3.equals("F04H")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 40;
                                                    }
                                                    break;
                                                case 2133184:
                                                    if (!str3.equals("F04J")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 41;
                                                    }
                                                    break;
                                                case 2436959:
                                                    if (!str3.equals("P681")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 93;
                                                    }
                                                    break;
                                                case 2463773:
                                                    if (!str3.equals("Q350")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 109;
                                                    }
                                                    break;
                                                case 2464648:
                                                    if (!str3.equals("Q427")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 111;
                                                    }
                                                    break;
                                                case 2689555:
                                                    if (!str3.equals("XE2X")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 136;
                                                    }
                                                    break;
                                                case 3154429:
                                                    if (!str3.equals("fugu")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 50;
                                                    }
                                                    break;
                                                case 3284551:
                                                    if (!str3.equals("kate")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 75;
                                                    }
                                                    break;
                                                case 3351335:
                                                    if (!str3.equals("mido")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 85;
                                                    }
                                                    break;
                                                case 3386211:
                                                    if (!str3.equals("p212")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 92;
                                                    }
                                                    break;
                                                case 41325051:
                                                    if (!str3.equals("MEIZU_M5")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 83;
                                                    }
                                                    break;
                                                case 51349633:
                                                    if (!str3.equals("601LV")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 3;
                                                    }
                                                    break;
                                                case 51350594:
                                                    if (!str3.equals("602LV")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 4;
                                                    }
                                                    break;
                                                case 55178625:
                                                    if (!str3.equals("Aura_Note_2")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 15;
                                                    }
                                                    break;
                                                case 61542055:
                                                    if (!str3.equals("A1601")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 7;
                                                    }
                                                    break;
                                                case 65355429:
                                                    if (!str3.equals("E5643")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 30;
                                                    }
                                                    break;
                                                case 66214468:
                                                    if (!str3.equals("F3111")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 42;
                                                    }
                                                    break;
                                                case 66214470:
                                                    if (!str3.equals("F3113")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 43;
                                                    }
                                                    break;
                                                case 66214473:
                                                    if (!str3.equals("F3116")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 44;
                                                    }
                                                    break;
                                                case 66215429:
                                                    if (!str3.equals("F3211")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 45;
                                                    }
                                                    break;
                                                case 66215431:
                                                    if (!str3.equals("F3213")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 46;
                                                    }
                                                    break;
                                                case 66215433:
                                                    if (!str3.equals("F3215")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 47;
                                                    }
                                                    break;
                                                case 66216390:
                                                    if (!str3.equals("F3311")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 48;
                                                    }
                                                    break;
                                                case 76402249:
                                                    if (!str3.equals("PRO7S")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 108;
                                                    }
                                                    break;
                                                case 76404105:
                                                    if (!str3.equals("Q4260")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 110;
                                                    }
                                                    break;
                                                case 76404911:
                                                    if (!str3.equals("Q4310")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 112;
                                                    }
                                                    break;
                                                case 80963634:
                                                    if (!str3.equals("V23GB")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 128;
                                                    }
                                                    break;
                                                case 82882791:
                                                    if (!str3.equals("X3_HK")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 135;
                                                    }
                                                    break;
                                                case 98715550:
                                                    if (!str3.equals("i9031")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 67;
                                                    }
                                                    break;
                                                case 101370885:
                                                    if (!str3.equals("l5460")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 76;
                                                    }
                                                    break;
                                                case 102844228:
                                                    if (!str3.equals("le_x6")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 77;
                                                    }
                                                    break;
                                                case 165221241:
                                                    if (!str3.equals("A2016a40")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 8;
                                                    }
                                                    break;
                                                case 182191441:
                                                    if (!str3.equals("CPY83_I00")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 25;
                                                    }
                                                    break;
                                                case 245388979:
                                                    if (!str3.equals("marino_f")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 82;
                                                    }
                                                    break;
                                                case 287431619:
                                                    if (!str3.equals("griffin")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 60;
                                                    }
                                                    break;
                                                case 307593612:
                                                    if (!str3.equals("A7010a48")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                                                    }
                                                    break;
                                                case 308517133:
                                                    if (!str3.equals("A7020a48")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                                                    }
                                                    break;
                                                case 316215098:
                                                    if (!str3.equals("TB3-730F")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 122;
                                                    }
                                                    break;
                                                case 316215116:
                                                    if (!str3.equals("TB3-730X")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 123;
                                                    }
                                                    break;
                                                case 316246811:
                                                    if (!str3.equals("TB3-850F")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 124;
                                                    }
                                                    break;
                                                case 316246818:
                                                    if (!str3.equals("TB3-850M")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 125;
                                                    }
                                                    break;
                                                case 407160593:
                                                    if (!str3.equals("Pixi5-10_4G")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 106;
                                                    }
                                                    break;
                                                case 507412548:
                                                    if (!str3.equals("QM16XE_U")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 114;
                                                    }
                                                    break;
                                                case 793982701:
                                                    if (!str3.equals("GIONEE_WBL5708")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 57;
                                                    }
                                                    break;
                                                case 794038622:
                                                    if (!str3.equals("GIONEE_WBL7365")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 58;
                                                    }
                                                    break;
                                                case 794040393:
                                                    if (!str3.equals("GIONEE_WBL7519")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 59;
                                                    }
                                                    break;
                                                case 835649806:
                                                    if (!str3.equals("manning")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 81;
                                                    }
                                                    break;
                                                case 917340916:
                                                    if (!str3.equals("A7000plus")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 10;
                                                    }
                                                    break;
                                                case 958008161:
                                                    if (!str3.equals("j2xlteins")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 72;
                                                    }
                                                    break;
                                                case 1060579533:
                                                    if (!str3.equals("panell_d")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 96;
                                                    }
                                                    break;
                                                case 1150207623:
                                                    if (!str3.equals("LS-5017")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 78;
                                                    }
                                                    break;
                                                case 1176899427:
                                                    if (!str3.equals("itel_S41")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 71;
                                                    }
                                                    break;
                                                case 1280332038:
                                                    if (!str3.equals("hwALE-H")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 62;
                                                    }
                                                    break;
                                                case 1306947716:
                                                    if (!str3.equals("EverStar_S")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 35;
                                                    }
                                                    break;
                                                case 1349174697:
                                                    if (!str3.equals("htc_e56ml_dtul")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 61;
                                                    }
                                                    break;
                                                case 1522194893:
                                                    if (!str3.equals("woods_f")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 133;
                                                    }
                                                    break;
                                                case 1691543273:
                                                    if (!str3.equals("CPH1609")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 23;
                                                    }
                                                    break;
                                                case 1691544261:
                                                    if (!str3.equals("CPH1715")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 24;
                                                    }
                                                    break;
                                                case 1709443163:
                                                    if (!str3.equals("iball8735_9806")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 68;
                                                    }
                                                    break;
                                                case 1865889110:
                                                    if (!str3.equals("santoni")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 117;
                                                    }
                                                    break;
                                                case 1906253259:
                                                    if (!str3.equals("PB2-670M")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 100;
                                                    }
                                                    break;
                                                case 1977196784:
                                                    if (!str3.equals("Infinix-X572")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 69;
                                                    }
                                                    break;
                                                case 2006372676:
                                                    if (!str3.equals("BRAVIA_ATV3_4K")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 19;
                                                    }
                                                    break;
                                                case 2019281702:
                                                    if (!str3.equals("DM-01K")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 29;
                                                    }
                                                    break;
                                                case 2029784656:
                                                    if (!str3.equals("HWBLN-H")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 63;
                                                    }
                                                    break;
                                                case 2030379515:
                                                    if (!str3.equals("HWCAM-H")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 64;
                                                    }
                                                    break;
                                                case 2033393791:
                                                    if (!str3.equals("ASUS_X00AD_2")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                                                    }
                                                    break;
                                                case 2047190025:
                                                    if (!str3.equals("ELUGA_Note")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 32;
                                                    }
                                                    break;
                                                case 2047252157:
                                                    if (!str3.equals("ELUGA_Prim")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 33;
                                                    }
                                                    break;
                                                case 2048319463:
                                                    if (!str3.equals("HWVNS-H")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 65;
                                                    }
                                                    break;
                                                case 2048855701:
                                                    if (!str3.equals("HWWAS-H")) {
                                                        b10 = -1;
                                                    } else {
                                                        b10 = 66;
                                                    }
                                                    break;
                                                default:
                                                    b10 = -1;
                                                    break;
                                            }
                                            switch (b10) {
                                                default:
                                                    if (str2.hashCode() == -594534941 && str2.equals("JSN-L21")) {
                                                    }
                                                case 0:
                                                case 1:
                                                case 2:
                                                case 3:
                                                case 4:
                                                case 5:
                                                case 6:
                                                case 7:
                                                case 8:
                                                case 9:
                                                case 10:
                                                case 11:
                                                case 12:
                                                case 13:
                                                case 14:
                                                case 15:
                                                case 16:
                                                case 17:
                                                case 18:
                                                case 19:
                                                case 20:
                                                case 21:
                                                case 22:
                                                case 23:
                                                case 24:
                                                case 25:
                                                case Service.BILLING_FIELD_NUMBER /* 26 */:
                                                case 27:
                                                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                                case 32:
                                                case 33:
                                                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                                case 35:
                                                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                                                case 37:
                                                case 38:
                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                                case 43:
                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                case 46:
                                                case 47:
                                                case 48:
                                                case 49:
                                                case 50:
                                                case 51:
                                                case 52:
                                                case 53:
                                                case 54:
                                                case 55:
                                                case 56:
                                                case 57:
                                                case 58:
                                                case 59:
                                                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                                case 61:
                                                case 62:
                                                case 63:
                                                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                                case 65:
                                                case 66:
                                                case 67:
                                                case 68:
                                                case 69:
                                                case 70:
                                                case 71:
                                                case 72:
                                                case 73:
                                                case 74:
                                                case 75:
                                                case 76:
                                                case 77:
                                                case 78:
                                                case 79:
                                                case 80:
                                                case 81:
                                                case 82:
                                                case 83:
                                                case 84:
                                                case 85:
                                                case 86:
                                                case 87:
                                                case 88:
                                                case 89:
                                                case 90:
                                                case 91:
                                                case 92:
                                                case 93:
                                                case 94:
                                                case 95:
                                                case 96:
                                                case 97:
                                                case 98:
                                                case 99:
                                                case 100:
                                                case Endpoint.TARGET_FIELD_NUMBER /* 101 */:
                                                case 102:
                                                case 103:
                                                case 104:
                                                case 105:
                                                case 106:
                                                case 107:
                                                case 108:
                                                case 109:
                                                case 110:
                                                case 111:
                                                case 112:
                                                case 113:
                                                case 114:
                                                case 115:
                                                case 116:
                                                case 117:
                                                case 118:
                                                case 119:
                                                case 120:
                                                case 121:
                                                case 122:
                                                case 123:
                                                case 124:
                                                case 125:
                                                case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                                                case 127:
                                                case 128:
                                                case 129:
                                                case 130:
                                                case 131:
                                                case 132:
                                                case 133:
                                                case 134:
                                                case 135:
                                                case 136:
                                                case 137:
                                                case 138:
                                                case 139:
                                                    z7 = true;
                                                    break;
                                            }
                                        }
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                        z7 = true;
                                        break;
                                }
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            z7 = true;
                            break;
                    }
                } else if (i8 <= 27) {
                    str2 = Et.f13237d;
                    switch (str2.hashCode()) {
                        case -349662828:
                            if (!str2.equals("AFTJMST12")) {
                                b8 = -1;
                            } else {
                                b8 = 6;
                            }
                            break;
                        case -321033677:
                            if (!str2.equals("AFTKMST12")) {
                                b8 = -1;
                            } else {
                                b8 = 7;
                            }
                            break;
                        case 2006354:
                            if (!str2.equals("AFTA")) {
                                b8 = -1;
                            } else {
                                b8 = 0;
                            }
                            break;
                        case 2006367:
                            if (!str2.equals("AFTN")) {
                                b8 = -1;
                            } else {
                                b8 = 1;
                            }
                            break;
                        case 2006371:
                            if (!str2.equals("AFTR")) {
                                b8 = -1;
                            } else {
                                b8 = 2;
                            }
                            break;
                        case 1785421873:
                            if (!str2.equals("AFTEU011")) {
                                b8 = -1;
                            } else {
                                b8 = 3;
                            }
                            break;
                        case 1785421876:
                            if (!str2.equals("AFTEU014")) {
                                b8 = -1;
                            } else {
                                b8 = 4;
                            }
                            break;
                        case 1798172390:
                            if (!str2.equals("AFTSO001")) {
                                b8 = -1;
                            } else {
                                b8 = 8;
                            }
                            break;
                        case 2119412532:
                            if (!str2.equals("AFTEUFF014")) {
                                b8 = -1;
                            } else {
                                b8 = 5;
                            }
                            break;
                        default:
                            b8 = -1;
                            break;
                    }
                    switch (b8) {
                        default:
                            if (i8 <= 26) {
                                str3 = Et.f13235b;
                                switch (str3.hashCode()) {
                                    case -2144781245:
                                        if (!str3.equals("GIONEE_SWW1609")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 54;
                                        }
                                        break;
                                    case -2144781185:
                                        if (!str3.equals("GIONEE_SWW1627")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 55;
                                        }
                                        break;
                                    case -2144781160:
                                        if (!str3.equals("GIONEE_SWW1631")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 56;
                                        }
                                        break;
                                    case -2097309513:
                                        if (!str3.equals("K50a40")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 74;
                                        }
                                        break;
                                    case -2022874474:
                                        if (!str3.equals("CP8676_I02")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 22;
                                        }
                                        break;
                                    case -1978993182:
                                        if (!str3.equals("NX541J")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 89;
                                        }
                                        break;
                                    case -1978990237:
                                        if (!str3.equals("NX573J")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 90;
                                        }
                                        break;
                                    case -1936688988:
                                        if (!str3.equals("PGN528")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 101;
                                        }
                                        break;
                                    case -1936688066:
                                        if (!str3.equals("PGN610")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 102;
                                        }
                                        break;
                                    case -1936688065:
                                        if (!str3.equals("PGN611")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 103;
                                        }
                                        break;
                                    case -1931988508:
                                        if (!str3.equals("AquaPowerM")) {
                                            b10 = -1;
                                        } else {
                                            b10 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                                        }
                                        break;
                                    case -1885099851:
                                        if (!str3.equals("RAIJIN")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 116;
                                        }
                                        break;
                                    case -1696512866:
                                        if (!str3.equals("XT1663")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 137;
                                        }
                                        break;
                                    case -1680025915:
                                        if (!str3.equals("ComioS1")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 21;
                                        }
                                        break;
                                    case -1615810839:
                                        if (!str3.equals("Phantom6")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 104;
                                        }
                                        break;
                                    case -1600724499:
                                        if (!str3.equals("pacificrim")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 95;
                                        }
                                        break;
                                    case -1554255044:
                                        if (!str3.equals("vernee_M5")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 130;
                                        }
                                        break;
                                    case -1481772737:
                                        if (!str3.equals("panell_dl")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 97;
                                        }
                                        break;
                                    case -1481772730:
                                        if (!str3.equals("panell_ds")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 98;
                                        }
                                        break;
                                    case -1481772729:
                                        if (!str3.equals("panell_dt")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 99;
                                        }
                                        break;
                                    case -1320080169:
                                        if (!str3.equals("GiONEE_GBL7319")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 52;
                                        }
                                        break;
                                    case -1217592143:
                                        if (!str3.equals("BRAVIA_ATV2")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 18;
                                        }
                                        break;
                                    case -1180384755:
                                        if (!str3.equals("iris60")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 70;
                                        }
                                        break;
                                    case -1139198265:
                                        if (!str3.equals("Slate_Pro")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 118;
                                        }
                                        break;
                                    case -1052835013:
                                        if (!str3.equals("namath")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 87;
                                        }
                                        break;
                                    case -993250464:
                                        if (!str3.equals("A10-70F")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 5;
                                        }
                                        break;
                                    case -993250458:
                                        if (!str3.equals("A10-70L")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 6;
                                        }
                                        break;
                                    case -965403638:
                                        if (!str3.equals("s905x018")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 120;
                                        }
                                        break;
                                    case -958336948:
                                        if (!str3.equals("ELUGA_Ray_X")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 34;
                                        }
                                        break;
                                    case -879245230:
                                        if (!str3.equals("tcl_eu")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 126;
                                        }
                                        break;
                                    case -842500323:
                                        if (!str3.equals("nicklaus_f")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 88;
                                        }
                                        break;
                                    case -821392978:
                                        if (!str3.equals("A7000-a")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 9;
                                        }
                                        break;
                                    case -797483286:
                                        if (!str3.equals("SVP-DTV15")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 119;
                                        }
                                        break;
                                    case -794946968:
                                        if (!str3.equals("watson")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 131;
                                        }
                                        break;
                                    case -788334647:
                                        if (!str3.equals("whyred")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 132;
                                        }
                                        break;
                                    case -782144577:
                                        if (!str3.equals("OnePlus5T")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 91;
                                        }
                                        break;
                                    case -575125681:
                                        if (!str3.equals("GiONEE_CBL7513")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 51;
                                        }
                                        break;
                                    case -521118391:
                                        if (!str3.equals("GIONEE_GBL7360")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 53;
                                        }
                                        break;
                                    case -430914369:
                                        if (!str3.equals("Pixi4-7_3G")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 105;
                                        }
                                        break;
                                    case -290434366:
                                        if (!str3.equals("taido_row")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 121;
                                        }
                                        break;
                                    case -282781963:
                                        if (!str3.equals("BLACK-1X")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 17;
                                        }
                                        break;
                                    case -277133239:
                                        if (!str3.equals("Z12_PRO")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 138;
                                        }
                                        break;
                                    case -173639913:
                                        if (!str3.equals("ELUGA_A3_Pro")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 31;
                                        }
                                        break;
                                    case -56598463:
                                        if (!str3.equals("woods_fn")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 134;
                                        }
                                        break;
                                    case 2126:
                                        if (!str3.equals("C1")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 20;
                                        }
                                        break;
                                    case 2564:
                                        if (!str3.equals("Q5")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 113;
                                        }
                                        break;
                                    case 2715:
                                        if (!str3.equals("V1")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 127;
                                        }
                                        break;
                                    case 2719:
                                        if (!str3.equals("V5")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 129;
                                        }
                                        break;
                                    case 3091:
                                        if (!str3.equals("b5")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 16;
                                        }
                                        break;
                                    case 3483:
                                        if (!str3.equals("mh")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 84;
                                        }
                                        break;
                                    case 73405:
                                        if (!str3.equals("JGZ")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 73;
                                        }
                                        break;
                                    case 75537:
                                        if (!str3.equals("M04")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 79;
                                        }
                                        break;
                                    case 75739:
                                        if (!str3.equals("M5c")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 80;
                                        }
                                        break;
                                    case 76779:
                                        if (!str3.equals("MX6")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 86;
                                        }
                                        break;
                                    case 78669:
                                        if (!str3.equals("P85")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 94;
                                        }
                                        break;
                                    case 79305:
                                        if (!str3.equals("PLE")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 107;
                                        }
                                        break;
                                    case 80618:
                                        if (!str3.equals("QX1")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 115;
                                        }
                                        break;
                                    case 88274:
                                        if (!str3.equals("Z80")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 139;
                                        }
                                        break;
                                    case 98846:
                                        if (!str3.equals("cv1")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 26;
                                        }
                                        break;
                                    case 98848:
                                        if (!str3.equals("cv3")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 27;
                                        }
                                        break;
                                    case 99329:
                                        if (!str3.equals("deb")) {
                                            b10 = -1;
                                        }
                                        break;
                                    case 101481:
                                        if (!str3.equals("flo")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 49;
                                        }
                                        break;
                                    case 1513190:
                                        if (!str3.equals("1601")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 0;
                                        }
                                        break;
                                    case 1514184:
                                        if (!str3.equals("1713")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 1;
                                        }
                                        break;
                                    case 1514185:
                                        if (!str3.equals("1714")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 2;
                                        }
                                        break;
                                    case 2133089:
                                        if (!str3.equals("F01H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 36;
                                        }
                                        break;
                                    case 2133091:
                                        if (!str3.equals("F01J")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 37;
                                        }
                                        break;
                                    case 2133120:
                                        if (!str3.equals("F02H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 38;
                                        }
                                        break;
                                    case 2133151:
                                        if (!str3.equals("F03H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 39;
                                        }
                                        break;
                                    case 2133182:
                                        if (!str3.equals("F04H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 40;
                                        }
                                        break;
                                    case 2133184:
                                        if (!str3.equals("F04J")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 41;
                                        }
                                        break;
                                    case 2436959:
                                        if (!str3.equals("P681")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 93;
                                        }
                                        break;
                                    case 2463773:
                                        if (!str3.equals("Q350")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 109;
                                        }
                                        break;
                                    case 2464648:
                                        if (!str3.equals("Q427")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 111;
                                        }
                                        break;
                                    case 2689555:
                                        if (!str3.equals("XE2X")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 136;
                                        }
                                        break;
                                    case 3154429:
                                        if (!str3.equals("fugu")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 50;
                                        }
                                        break;
                                    case 3284551:
                                        if (!str3.equals("kate")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 75;
                                        }
                                        break;
                                    case 3351335:
                                        if (!str3.equals("mido")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 85;
                                        }
                                        break;
                                    case 3386211:
                                        if (!str3.equals("p212")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 92;
                                        }
                                        break;
                                    case 41325051:
                                        if (!str3.equals("MEIZU_M5")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 83;
                                        }
                                        break;
                                    case 51349633:
                                        if (!str3.equals("601LV")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 3;
                                        }
                                        break;
                                    case 51350594:
                                        if (!str3.equals("602LV")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 4;
                                        }
                                        break;
                                    case 55178625:
                                        if (!str3.equals("Aura_Note_2")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 15;
                                        }
                                        break;
                                    case 61542055:
                                        if (!str3.equals("A1601")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 7;
                                        }
                                        break;
                                    case 65355429:
                                        if (!str3.equals("E5643")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 30;
                                        }
                                        break;
                                    case 66214468:
                                        if (!str3.equals("F3111")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 42;
                                        }
                                        break;
                                    case 66214470:
                                        if (!str3.equals("F3113")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 43;
                                        }
                                        break;
                                    case 66214473:
                                        if (!str3.equals("F3116")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 44;
                                        }
                                        break;
                                    case 66215429:
                                        if (!str3.equals("F3211")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 45;
                                        }
                                        break;
                                    case 66215431:
                                        if (!str3.equals("F3213")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 46;
                                        }
                                        break;
                                    case 66215433:
                                        if (!str3.equals("F3215")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 47;
                                        }
                                        break;
                                    case 66216390:
                                        if (!str3.equals("F3311")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 48;
                                        }
                                        break;
                                    case 76402249:
                                        if (!str3.equals("PRO7S")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 108;
                                        }
                                        break;
                                    case 76404105:
                                        if (!str3.equals("Q4260")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 110;
                                        }
                                        break;
                                    case 76404911:
                                        if (!str3.equals("Q4310")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 112;
                                        }
                                        break;
                                    case 80963634:
                                        if (!str3.equals("V23GB")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 128;
                                        }
                                        break;
                                    case 82882791:
                                        if (!str3.equals("X3_HK")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 135;
                                        }
                                        break;
                                    case 98715550:
                                        if (!str3.equals("i9031")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 67;
                                        }
                                        break;
                                    case 101370885:
                                        if (!str3.equals("l5460")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 76;
                                        }
                                        break;
                                    case 102844228:
                                        if (!str3.equals("le_x6")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 77;
                                        }
                                        break;
                                    case 165221241:
                                        if (!str3.equals("A2016a40")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 8;
                                        }
                                        break;
                                    case 182191441:
                                        if (!str3.equals("CPY83_I00")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 25;
                                        }
                                        break;
                                    case 245388979:
                                        if (!str3.equals("marino_f")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 82;
                                        }
                                        break;
                                    case 287431619:
                                        if (!str3.equals("griffin")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 60;
                                        }
                                        break;
                                    case 307593612:
                                        if (!str3.equals("A7010a48")) {
                                            b10 = -1;
                                        } else {
                                            b10 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                                        }
                                        break;
                                    case 308517133:
                                        if (!str3.equals("A7020a48")) {
                                            b10 = -1;
                                        } else {
                                            b10 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                                        }
                                        break;
                                    case 316215098:
                                        if (!str3.equals("TB3-730F")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 122;
                                        }
                                        break;
                                    case 316215116:
                                        if (!str3.equals("TB3-730X")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 123;
                                        }
                                        break;
                                    case 316246811:
                                        if (!str3.equals("TB3-850F")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 124;
                                        }
                                        break;
                                    case 316246818:
                                        if (!str3.equals("TB3-850M")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 125;
                                        }
                                        break;
                                    case 407160593:
                                        if (!str3.equals("Pixi5-10_4G")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 106;
                                        }
                                        break;
                                    case 507412548:
                                        if (!str3.equals("QM16XE_U")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 114;
                                        }
                                        break;
                                    case 793982701:
                                        if (!str3.equals("GIONEE_WBL5708")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 57;
                                        }
                                        break;
                                    case 794038622:
                                        if (!str3.equals("GIONEE_WBL7365")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 58;
                                        }
                                        break;
                                    case 794040393:
                                        if (!str3.equals("GIONEE_WBL7519")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 59;
                                        }
                                        break;
                                    case 835649806:
                                        if (!str3.equals("manning")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 81;
                                        }
                                        break;
                                    case 917340916:
                                        if (!str3.equals("A7000plus")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 10;
                                        }
                                        break;
                                    case 958008161:
                                        if (!str3.equals("j2xlteins")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 72;
                                        }
                                        break;
                                    case 1060579533:
                                        if (!str3.equals("panell_d")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 96;
                                        }
                                        break;
                                    case 1150207623:
                                        if (!str3.equals("LS-5017")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 78;
                                        }
                                        break;
                                    case 1176899427:
                                        if (!str3.equals("itel_S41")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 71;
                                        }
                                        break;
                                    case 1280332038:
                                        if (!str3.equals("hwALE-H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 62;
                                        }
                                        break;
                                    case 1306947716:
                                        if (!str3.equals("EverStar_S")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 35;
                                        }
                                        break;
                                    case 1349174697:
                                        if (!str3.equals("htc_e56ml_dtul")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 61;
                                        }
                                        break;
                                    case 1522194893:
                                        if (!str3.equals("woods_f")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 133;
                                        }
                                        break;
                                    case 1691543273:
                                        if (!str3.equals("CPH1609")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 23;
                                        }
                                        break;
                                    case 1691544261:
                                        if (!str3.equals("CPH1715")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 24;
                                        }
                                        break;
                                    case 1709443163:
                                        if (!str3.equals("iball8735_9806")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 68;
                                        }
                                        break;
                                    case 1865889110:
                                        if (!str3.equals("santoni")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 117;
                                        }
                                        break;
                                    case 1906253259:
                                        if (!str3.equals("PB2-670M")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 100;
                                        }
                                        break;
                                    case 1977196784:
                                        if (!str3.equals("Infinix-X572")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 69;
                                        }
                                        break;
                                    case 2006372676:
                                        if (!str3.equals("BRAVIA_ATV3_4K")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 19;
                                        }
                                        break;
                                    case 2019281702:
                                        if (!str3.equals("DM-01K")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 29;
                                        }
                                        break;
                                    case 2029784656:
                                        if (!str3.equals("HWBLN-H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 63;
                                        }
                                        break;
                                    case 2030379515:
                                        if (!str3.equals("HWCAM-H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 64;
                                        }
                                        break;
                                    case 2033393791:
                                        if (!str3.equals("ASUS_X00AD_2")) {
                                            b10 = -1;
                                        } else {
                                            b10 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                                        }
                                        break;
                                    case 2047190025:
                                        if (!str3.equals("ELUGA_Note")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 32;
                                        }
                                        break;
                                    case 2047252157:
                                        if (!str3.equals("ELUGA_Prim")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 33;
                                        }
                                        break;
                                    case 2048319463:
                                        if (!str3.equals("HWVNS-H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 65;
                                        }
                                        break;
                                    case 2048855701:
                                        if (!str3.equals("HWWAS-H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 66;
                                        }
                                        break;
                                    default:
                                        b10 = -1;
                                        break;
                                }
                                switch (b10) {
                                    default:
                                        if (str2.hashCode() == -594534941) {
                                            break;
                                        }
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 13:
                                    case 14:
                                    case 15:
                                    case 16:
                                    case 17:
                                    case 18:
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                                    case 27:
                                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                    case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                    case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                    case 32:
                                    case 33:
                                    case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                    case 35:
                                    case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                                    case 37:
                                    case 38:
                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                    case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                    case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                    case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                    case 43:
                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                    case 46:
                                    case 47:
                                    case 48:
                                    case 49:
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                    case 56:
                                    case 57:
                                    case 58:
                                    case 59:
                                    case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                    case 61:
                                    case 62:
                                    case 63:
                                    case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                    case 65:
                                    case 66:
                                    case 67:
                                    case 68:
                                    case 69:
                                    case 70:
                                    case 71:
                                    case 72:
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                    case 80:
                                    case 81:
                                    case 82:
                                    case 83:
                                    case 84:
                                    case 85:
                                    case 86:
                                    case 87:
                                    case 88:
                                    case 89:
                                    case 90:
                                    case 91:
                                    case 92:
                                    case 93:
                                    case 94:
                                    case 95:
                                    case 96:
                                    case 97:
                                    case 98:
                                    case 99:
                                    case 100:
                                    case Endpoint.TARGET_FIELD_NUMBER /* 101 */:
                                    case 102:
                                    case 103:
                                    case 104:
                                    case 105:
                                    case 106:
                                    case 107:
                                    case 108:
                                    case 109:
                                    case 110:
                                    case 111:
                                    case 112:
                                    case 113:
                                    case 114:
                                    case 115:
                                    case 116:
                                    case 117:
                                    case 118:
                                    case 119:
                                    case 120:
                                    case 121:
                                    case 122:
                                    case 123:
                                    case 124:
                                    case 125:
                                    case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                                    case 127:
                                    case 128:
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 132:
                                    case 133:
                                    case 134:
                                    case 135:
                                    case 136:
                                    case 137:
                                    case 138:
                                    case 139:
                                        z7 = true;
                                        break;
                                }
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                            z7 = true;
                            break;
                    }
                } else {
                    str2 = Et.f13237d;
                    switch (str2.hashCode()) {
                        case -349662828:
                            if (!str2.equals("AFTJMST12")) {
                                b8 = -1;
                            } else {
                                b8 = 6;
                            }
                            break;
                        case -321033677:
                            if (!str2.equals("AFTKMST12")) {
                                b8 = -1;
                            } else {
                                b8 = 7;
                            }
                            break;
                        case 2006354:
                            if (!str2.equals("AFTA")) {
                                b8 = -1;
                            } else {
                                b8 = 0;
                            }
                            break;
                        case 2006367:
                            if (!str2.equals("AFTN")) {
                                b8 = -1;
                            } else {
                                b8 = 1;
                            }
                            break;
                        case 2006371:
                            if (!str2.equals("AFTR")) {
                                b8 = -1;
                            } else {
                                b8 = 2;
                            }
                            break;
                        case 1785421873:
                            if (!str2.equals("AFTEU011")) {
                                b8 = -1;
                            } else {
                                b8 = 3;
                            }
                            break;
                        case 1785421876:
                            if (!str2.equals("AFTEU014")) {
                                b8 = -1;
                            } else {
                                b8 = 4;
                            }
                            break;
                        case 1798172390:
                            if (!str2.equals("AFTSO001")) {
                                b8 = -1;
                            } else {
                                b8 = 8;
                            }
                            break;
                        case 2119412532:
                            if (!str2.equals("AFTEUFF014")) {
                                b8 = -1;
                            } else {
                                b8 = 5;
                            }
                            break;
                        default:
                            b8 = -1;
                            break;
                    }
                    switch (b8) {
                        default:
                            if (i8 <= 26) {
                                str3 = Et.f13235b;
                                switch (str3.hashCode()) {
                                    case -2144781245:
                                        if (!str3.equals("GIONEE_SWW1609")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 54;
                                        }
                                        break;
                                    case -2144781185:
                                        if (!str3.equals("GIONEE_SWW1627")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 55;
                                        }
                                        break;
                                    case -2144781160:
                                        if (!str3.equals("GIONEE_SWW1631")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 56;
                                        }
                                        break;
                                    case -2097309513:
                                        if (!str3.equals("K50a40")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 74;
                                        }
                                        break;
                                    case -2022874474:
                                        if (!str3.equals("CP8676_I02")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 22;
                                        }
                                        break;
                                    case -1978993182:
                                        if (!str3.equals("NX541J")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 89;
                                        }
                                        break;
                                    case -1978990237:
                                        if (!str3.equals("NX573J")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 90;
                                        }
                                        break;
                                    case -1936688988:
                                        if (!str3.equals("PGN528")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 101;
                                        }
                                        break;
                                    case -1936688066:
                                        if (!str3.equals("PGN610")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 102;
                                        }
                                        break;
                                    case -1936688065:
                                        if (!str3.equals("PGN611")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 103;
                                        }
                                        break;
                                    case -1931988508:
                                        if (!str3.equals("AquaPowerM")) {
                                            b10 = -1;
                                        } else {
                                            b10 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                                        }
                                        break;
                                    case -1885099851:
                                        if (!str3.equals("RAIJIN")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 116;
                                        }
                                        break;
                                    case -1696512866:
                                        if (!str3.equals("XT1663")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 137;
                                        }
                                        break;
                                    case -1680025915:
                                        if (!str3.equals("ComioS1")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 21;
                                        }
                                        break;
                                    case -1615810839:
                                        if (!str3.equals("Phantom6")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 104;
                                        }
                                        break;
                                    case -1600724499:
                                        if (!str3.equals("pacificrim")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 95;
                                        }
                                        break;
                                    case -1554255044:
                                        if (!str3.equals("vernee_M5")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 130;
                                        }
                                        break;
                                    case -1481772737:
                                        if (!str3.equals("panell_dl")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 97;
                                        }
                                        break;
                                    case -1481772730:
                                        if (!str3.equals("panell_ds")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 98;
                                        }
                                        break;
                                    case -1481772729:
                                        if (!str3.equals("panell_dt")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 99;
                                        }
                                        break;
                                    case -1320080169:
                                        if (!str3.equals("GiONEE_GBL7319")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 52;
                                        }
                                        break;
                                    case -1217592143:
                                        if (!str3.equals("BRAVIA_ATV2")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 18;
                                        }
                                        break;
                                    case -1180384755:
                                        if (!str3.equals("iris60")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 70;
                                        }
                                        break;
                                    case -1139198265:
                                        if (!str3.equals("Slate_Pro")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 118;
                                        }
                                        break;
                                    case -1052835013:
                                        if (!str3.equals("namath")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 87;
                                        }
                                        break;
                                    case -993250464:
                                        if (!str3.equals("A10-70F")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 5;
                                        }
                                        break;
                                    case -993250458:
                                        if (!str3.equals("A10-70L")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 6;
                                        }
                                        break;
                                    case -965403638:
                                        if (!str3.equals("s905x018")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 120;
                                        }
                                        break;
                                    case -958336948:
                                        if (!str3.equals("ELUGA_Ray_X")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 34;
                                        }
                                        break;
                                    case -879245230:
                                        if (!str3.equals("tcl_eu")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 126;
                                        }
                                        break;
                                    case -842500323:
                                        if (!str3.equals("nicklaus_f")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 88;
                                        }
                                        break;
                                    case -821392978:
                                        if (!str3.equals("A7000-a")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 9;
                                        }
                                        break;
                                    case -797483286:
                                        if (!str3.equals("SVP-DTV15")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 119;
                                        }
                                        break;
                                    case -794946968:
                                        if (!str3.equals("watson")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 131;
                                        }
                                        break;
                                    case -788334647:
                                        if (!str3.equals("whyred")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 132;
                                        }
                                        break;
                                    case -782144577:
                                        if (!str3.equals("OnePlus5T")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 91;
                                        }
                                        break;
                                    case -575125681:
                                        if (!str3.equals("GiONEE_CBL7513")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 51;
                                        }
                                        break;
                                    case -521118391:
                                        if (!str3.equals("GIONEE_GBL7360")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 53;
                                        }
                                        break;
                                    case -430914369:
                                        if (!str3.equals("Pixi4-7_3G")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 105;
                                        }
                                        break;
                                    case -290434366:
                                        if (!str3.equals("taido_row")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 121;
                                        }
                                        break;
                                    case -282781963:
                                        if (!str3.equals("BLACK-1X")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 17;
                                        }
                                        break;
                                    case -277133239:
                                        if (!str3.equals("Z12_PRO")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 138;
                                        }
                                        break;
                                    case -173639913:
                                        if (!str3.equals("ELUGA_A3_Pro")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 31;
                                        }
                                        break;
                                    case -56598463:
                                        if (!str3.equals("woods_fn")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 134;
                                        }
                                        break;
                                    case 2126:
                                        if (!str3.equals("C1")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 20;
                                        }
                                        break;
                                    case 2564:
                                        if (!str3.equals("Q5")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 113;
                                        }
                                        break;
                                    case 2715:
                                        if (!str3.equals("V1")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 127;
                                        }
                                        break;
                                    case 2719:
                                        if (!str3.equals("V5")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 129;
                                        }
                                        break;
                                    case 3091:
                                        if (!str3.equals("b5")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 16;
                                        }
                                        break;
                                    case 3483:
                                        if (!str3.equals("mh")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 84;
                                        }
                                        break;
                                    case 73405:
                                        if (!str3.equals("JGZ")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 73;
                                        }
                                        break;
                                    case 75537:
                                        if (!str3.equals("M04")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 79;
                                        }
                                        break;
                                    case 75739:
                                        if (!str3.equals("M5c")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 80;
                                        }
                                        break;
                                    case 76779:
                                        if (!str3.equals("MX6")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 86;
                                        }
                                        break;
                                    case 78669:
                                        if (!str3.equals("P85")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 94;
                                        }
                                        break;
                                    case 79305:
                                        if (!str3.equals("PLE")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 107;
                                        }
                                        break;
                                    case 80618:
                                        if (!str3.equals("QX1")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 115;
                                        }
                                        break;
                                    case 88274:
                                        if (!str3.equals("Z80")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 139;
                                        }
                                        break;
                                    case 98846:
                                        if (!str3.equals("cv1")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 26;
                                        }
                                        break;
                                    case 98848:
                                        if (!str3.equals("cv3")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 27;
                                        }
                                        break;
                                    case 99329:
                                        if (!str3.equals("deb")) {
                                            b10 = -1;
                                        }
                                        break;
                                    case 101481:
                                        if (!str3.equals("flo")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 49;
                                        }
                                        break;
                                    case 1513190:
                                        if (!str3.equals("1601")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 0;
                                        }
                                        break;
                                    case 1514184:
                                        if (!str3.equals("1713")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 1;
                                        }
                                        break;
                                    case 1514185:
                                        if (!str3.equals("1714")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 2;
                                        }
                                        break;
                                    case 2133089:
                                        if (!str3.equals("F01H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 36;
                                        }
                                        break;
                                    case 2133091:
                                        if (!str3.equals("F01J")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 37;
                                        }
                                        break;
                                    case 2133120:
                                        if (!str3.equals("F02H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 38;
                                        }
                                        break;
                                    case 2133151:
                                        if (!str3.equals("F03H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 39;
                                        }
                                        break;
                                    case 2133182:
                                        if (!str3.equals("F04H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 40;
                                        }
                                        break;
                                    case 2133184:
                                        if (!str3.equals("F04J")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 41;
                                        }
                                        break;
                                    case 2436959:
                                        if (!str3.equals("P681")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 93;
                                        }
                                        break;
                                    case 2463773:
                                        if (!str3.equals("Q350")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 109;
                                        }
                                        break;
                                    case 2464648:
                                        if (!str3.equals("Q427")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 111;
                                        }
                                        break;
                                    case 2689555:
                                        if (!str3.equals("XE2X")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 136;
                                        }
                                        break;
                                    case 3154429:
                                        if (!str3.equals("fugu")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 50;
                                        }
                                        break;
                                    case 3284551:
                                        if (!str3.equals("kate")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 75;
                                        }
                                        break;
                                    case 3351335:
                                        if (!str3.equals("mido")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 85;
                                        }
                                        break;
                                    case 3386211:
                                        if (!str3.equals("p212")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 92;
                                        }
                                        break;
                                    case 41325051:
                                        if (!str3.equals("MEIZU_M5")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 83;
                                        }
                                        break;
                                    case 51349633:
                                        if (!str3.equals("601LV")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 3;
                                        }
                                        break;
                                    case 51350594:
                                        if (!str3.equals("602LV")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 4;
                                        }
                                        break;
                                    case 55178625:
                                        if (!str3.equals("Aura_Note_2")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 15;
                                        }
                                        break;
                                    case 61542055:
                                        if (!str3.equals("A1601")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 7;
                                        }
                                        break;
                                    case 65355429:
                                        if (!str3.equals("E5643")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 30;
                                        }
                                        break;
                                    case 66214468:
                                        if (!str3.equals("F3111")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 42;
                                        }
                                        break;
                                    case 66214470:
                                        if (!str3.equals("F3113")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 43;
                                        }
                                        break;
                                    case 66214473:
                                        if (!str3.equals("F3116")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 44;
                                        }
                                        break;
                                    case 66215429:
                                        if (!str3.equals("F3211")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 45;
                                        }
                                        break;
                                    case 66215431:
                                        if (!str3.equals("F3213")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 46;
                                        }
                                        break;
                                    case 66215433:
                                        if (!str3.equals("F3215")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 47;
                                        }
                                        break;
                                    case 66216390:
                                        if (!str3.equals("F3311")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 48;
                                        }
                                        break;
                                    case 76402249:
                                        if (!str3.equals("PRO7S")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 108;
                                        }
                                        break;
                                    case 76404105:
                                        if (!str3.equals("Q4260")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 110;
                                        }
                                        break;
                                    case 76404911:
                                        if (!str3.equals("Q4310")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 112;
                                        }
                                        break;
                                    case 80963634:
                                        if (!str3.equals("V23GB")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 128;
                                        }
                                        break;
                                    case 82882791:
                                        if (!str3.equals("X3_HK")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 135;
                                        }
                                        break;
                                    case 98715550:
                                        if (!str3.equals("i9031")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 67;
                                        }
                                        break;
                                    case 101370885:
                                        if (!str3.equals("l5460")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 76;
                                        }
                                        break;
                                    case 102844228:
                                        if (!str3.equals("le_x6")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 77;
                                        }
                                        break;
                                    case 165221241:
                                        if (!str3.equals("A2016a40")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 8;
                                        }
                                        break;
                                    case 182191441:
                                        if (!str3.equals("CPY83_I00")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 25;
                                        }
                                        break;
                                    case 245388979:
                                        if (!str3.equals("marino_f")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 82;
                                        }
                                        break;
                                    case 287431619:
                                        if (!str3.equals("griffin")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 60;
                                        }
                                        break;
                                    case 307593612:
                                        if (!str3.equals("A7010a48")) {
                                            b10 = -1;
                                        } else {
                                            b10 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                                        }
                                        break;
                                    case 308517133:
                                        if (!str3.equals("A7020a48")) {
                                            b10 = -1;
                                        } else {
                                            b10 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                                        }
                                        break;
                                    case 316215098:
                                        if (!str3.equals("TB3-730F")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 122;
                                        }
                                        break;
                                    case 316215116:
                                        if (!str3.equals("TB3-730X")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 123;
                                        }
                                        break;
                                    case 316246811:
                                        if (!str3.equals("TB3-850F")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 124;
                                        }
                                        break;
                                    case 316246818:
                                        if (!str3.equals("TB3-850M")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 125;
                                        }
                                        break;
                                    case 407160593:
                                        if (!str3.equals("Pixi5-10_4G")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 106;
                                        }
                                        break;
                                    case 507412548:
                                        if (!str3.equals("QM16XE_U")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 114;
                                        }
                                        break;
                                    case 793982701:
                                        if (!str3.equals("GIONEE_WBL5708")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 57;
                                        }
                                        break;
                                    case 794038622:
                                        if (!str3.equals("GIONEE_WBL7365")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 58;
                                        }
                                        break;
                                    case 794040393:
                                        if (!str3.equals("GIONEE_WBL7519")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 59;
                                        }
                                        break;
                                    case 835649806:
                                        if (!str3.equals("manning")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 81;
                                        }
                                        break;
                                    case 917340916:
                                        if (!str3.equals("A7000plus")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 10;
                                        }
                                        break;
                                    case 958008161:
                                        if (!str3.equals("j2xlteins")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 72;
                                        }
                                        break;
                                    case 1060579533:
                                        if (!str3.equals("panell_d")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 96;
                                        }
                                        break;
                                    case 1150207623:
                                        if (!str3.equals("LS-5017")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 78;
                                        }
                                        break;
                                    case 1176899427:
                                        if (!str3.equals("itel_S41")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 71;
                                        }
                                        break;
                                    case 1280332038:
                                        if (!str3.equals("hwALE-H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 62;
                                        }
                                        break;
                                    case 1306947716:
                                        if (!str3.equals("EverStar_S")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 35;
                                        }
                                        break;
                                    case 1349174697:
                                        if (!str3.equals("htc_e56ml_dtul")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 61;
                                        }
                                        break;
                                    case 1522194893:
                                        if (!str3.equals("woods_f")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 133;
                                        }
                                        break;
                                    case 1691543273:
                                        if (!str3.equals("CPH1609")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 23;
                                        }
                                        break;
                                    case 1691544261:
                                        if (!str3.equals("CPH1715")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 24;
                                        }
                                        break;
                                    case 1709443163:
                                        if (!str3.equals("iball8735_9806")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 68;
                                        }
                                        break;
                                    case 1865889110:
                                        if (!str3.equals("santoni")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 117;
                                        }
                                        break;
                                    case 1906253259:
                                        if (!str3.equals("PB2-670M")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 100;
                                        }
                                        break;
                                    case 1977196784:
                                        if (!str3.equals("Infinix-X572")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 69;
                                        }
                                        break;
                                    case 2006372676:
                                        if (!str3.equals("BRAVIA_ATV3_4K")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 19;
                                        }
                                        break;
                                    case 2019281702:
                                        if (!str3.equals("DM-01K")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 29;
                                        }
                                        break;
                                    case 2029784656:
                                        if (!str3.equals("HWBLN-H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 63;
                                        }
                                        break;
                                    case 2030379515:
                                        if (!str3.equals("HWCAM-H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 64;
                                        }
                                        break;
                                    case 2033393791:
                                        if (!str3.equals("ASUS_X00AD_2")) {
                                            b10 = -1;
                                        } else {
                                            b10 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                                        }
                                        break;
                                    case 2047190025:
                                        if (!str3.equals("ELUGA_Note")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 32;
                                        }
                                        break;
                                    case 2047252157:
                                        if (!str3.equals("ELUGA_Prim")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 33;
                                        }
                                        break;
                                    case 2048319463:
                                        if (!str3.equals("HWVNS-H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 65;
                                        }
                                        break;
                                    case 2048855701:
                                        if (!str3.equals("HWWAS-H")) {
                                            b10 = -1;
                                        } else {
                                            b10 = 66;
                                        }
                                        break;
                                    default:
                                        b10 = -1;
                                        break;
                                }
                                switch (b10) {
                                    default:
                                        if (str2.hashCode() == -594534941) {
                                            break;
                                        }
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 13:
                                    case 14:
                                    case 15:
                                    case 16:
                                    case 17:
                                    case 18:
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                                    case 27:
                                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                    case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                    case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                    case 32:
                                    case 33:
                                    case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                    case 35:
                                    case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                                    case 37:
                                    case 38:
                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                    case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                    case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                    case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                    case 43:
                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                    case 46:
                                    case 47:
                                    case 48:
                                    case 49:
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                    case 56:
                                    case 57:
                                    case 58:
                                    case 59:
                                    case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                    case 61:
                                    case 62:
                                    case 63:
                                    case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                    case 65:
                                    case 66:
                                    case 67:
                                    case 68:
                                    case 69:
                                    case 70:
                                    case 71:
                                    case 72:
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                    case 80:
                                    case 81:
                                    case 82:
                                    case 83:
                                    case 84:
                                    case 85:
                                    case 86:
                                    case 87:
                                    case 88:
                                    case 89:
                                    case 90:
                                    case 91:
                                    case 92:
                                    case 93:
                                    case 94:
                                    case 95:
                                    case 96:
                                    case 97:
                                    case 98:
                                    case 99:
                                    case 100:
                                    case Endpoint.TARGET_FIELD_NUMBER /* 101 */:
                                    case 102:
                                    case 103:
                                    case 104:
                                    case 105:
                                    case 106:
                                    case 107:
                                    case 108:
                                    case 109:
                                    case 110:
                                    case 111:
                                    case 112:
                                    case 113:
                                    case 114:
                                    case 115:
                                    case 116:
                                    case 117:
                                    case 118:
                                    case 119:
                                    case 120:
                                    case 121:
                                    case 122:
                                    case 123:
                                    case 124:
                                    case 125:
                                    case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                                    case 127:
                                    case 128:
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 132:
                                    case 133:
                                    case 134:
                                    case 135:
                                    case 136:
                                    case 137:
                                    case 138:
                                    case 139:
                                        z7 = true;
                                        break;
                                }
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                            z7 = true;
                            break;
                    }
                }
                f19544g1 = z7;
                f19543f1 = true;
            }
        }
        return f19544g1;
    }

    public static List r0(Context context, WM wm, C1804p0 c1804p0, boolean z7, boolean z8) {
        List listC;
        String str = c1804p0.f20383m;
        if (str == null) {
            return PA.f15340K;
        }
        if (Et.f13234a >= 26 && "video/dolby-vision".equals(str) && !AbstractC1491j.a(context)) {
            String strB = AbstractC1154cN.b(c1804p0);
            if (strB == null) {
                listC = PA.f15340K;
            } else {
                ((C2272y1) wm).getClass();
                listC = AbstractC1154cN.c(strB, z7, z8);
            }
            if (!listC.isEmpty()) {
                return listC;
            }
        }
        return AbstractC1154cN.d(wm, c1804p0, z7, z8);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x0040  */
    public static int s0(PM pm, C1804p0 c1804p0) {
        int i8;
        int iIntValue;
        int i9 = c1804p0.f20389s;
        if (i9 != -1 && (i8 = c1804p0.f20390t) != -1) {
            String str = c1804p0.f20383m;
            str.getClass();
            if ("video/dolby-vision".equals(str)) {
                Pair pairA = AbstractC1154cN.a(c1804p0);
                str = (pairA == null || !((iIntValue = ((Integer) pairA.first).intValue()) == 512 || iIntValue == 1 || iIntValue == 2)) ? "video/hevc" : "video/avc";
            }
            int i10 = 4;
            switch (str) {
                case "video/3gpp":
                case "video/av01":
                case "video/mp4v-es":
                case "video/x-vnd.on2.vp8":
                    return ((i9 * i8) * 3) / i10;
                case "video/hevc":
                    return Math.max(2097152, ((i9 * i8) * 3) / 4);
                case "video/avc":
                    String str2 = Et.f13237d;
                    if (!"BRAVIA 4K 2015".equals(str2) && (!"Amazon".equals(Et.f13236c) || (!"KFSOWI".equals(str2) && (!"AFTS".equals(str2) || !pm.f15380f)))) {
                        return ((((i8 + 15) / 16) * ((i9 + 15) / 16)) * 768) / 4;
                    }
                    break;
                case "video/x-vnd.on2.vp9":
                    i10 = 8;
                    return ((i9 * i8) * 3) / i10;
            }
        }
        return -1;
    }

    public static int t0(PM pm, C1804p0 c1804p0) {
        int i8 = c1804p0.f20384n;
        if (i8 == -1) {
            return s0(pm, c1804p0);
        }
        List list = c1804p0.f20386p;
        int size = list.size();
        int length = 0;
        for (int i9 = 0; i9 < size; i9++) {
            length += ((byte[]) list.get(i9)).length;
        }
        return i8 + length;
    }

    @Override // com.google.android.gms.internal.ads.VM, com.google.android.gms.internal.ads.AbstractC1048aK
    public final void A(long j8, boolean z7) {
        C1285f c1285f = this.f19551G0;
        if (c1285f != null) {
            c1285f.b(true);
            C1285f c1285f2 = this.f19551G0;
            UM um = this.f17051r0;
            c1285f2.f(um.f16840b, um.f16841c, -this.f19572b1, this.f17877l);
            this.f19574d1 = true;
        }
        super.A(j8, z7);
        C1285f c1285f3 = this.f19551G0;
        C1699n c1699n = this.f19546B0;
        if (c1285f3 == null) {
            U0.I i8 = c1699n.f20032b;
            i8.f6663j = 0L;
            i8.f6666m = -1L;
            i8.f6664k = -1L;
            c1699n.f20037g = -9223372036854775807L;
            c1699n.f20035e = -9223372036854775807L;
            c1699n.f(1);
            c1699n.f20038h = -9223372036854775807L;
        }
        if (z7) {
            C1285f c1285f4 = this.f19551G0;
            if (c1285f4 != null) {
                C1699n c1699n2 = c1285f4.f18643m.f18859b;
                c1699n2.f20039i = false;
                c1699n2.f20038h = -9223372036854775807L;
            } else {
                c1699n.f20039i = false;
                c1699n.f20038h = -9223372036854775807L;
            }
        }
        this.f19562R0 = 0;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final float B(float f8, C1804p0[] c1804p0Arr) {
        float fMax = -1.0f;
        for (C1804p0 c1804p0 : c1804p0Arr) {
            float f9 = c1804p0.f20391u;
            if (f9 != -1.0f) {
                fMax = Math.max(fMax, f9);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f8;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final OM C(IllegalStateException illegalStateException, PM pm) {
        Surface surface = this.f19554J0;
        C1389h c1389h = new C1389h(illegalStateException, pm);
        System.identityHashCode(surface);
        if (surface != null) {
            surface.isValid();
        }
        return c1389h;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void E(long j8) {
        super.E(j8);
        this.f19563S0--;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void F() {
        this.f19563S0++;
        int i8 = Et.f13234a;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void G(C1804p0 c1804p0) throws C1512jK {
        C1285f c1285f = this.f19551G0;
        if (c1285f == null) {
            return;
        }
        try {
            c1285f.c(c1804p0);
            throw null;
        } catch (C2322z e8) {
            throw s(7000, c1804p0, e8, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void I() {
        super.I();
        this.f19563S0 = 0;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final boolean L(PM pm) {
        return this.f19554J0 != null || (Et.f13234a >= 35 && pm.f15382h) || v0(pm);
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final boolean M(VJ vj) {
        if (vj.b(67108864) && !l() && !vj.b(536870912)) {
            long j8 = this.f19573c1;
            if (j8 != -9223372036854775807L && j8 - (vj.f16995g - this.f17051r0.f16841c) > 100000 && !vj.b(1073741824) && vj.f16995g < this.f17877l) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final int T(WM wm, C1804p0 c1804p0) {
        boolean z7;
        if (!AbstractC2140va.g(c1804p0.f20383m)) {
            return 128;
        }
        int i8 = 1;
        int i9 = 0;
        boolean z8 = c1804p0.f20387q != null;
        Context context = this.f19575x0;
        List listR0 = r0(context, wm, c1804p0, z8, false);
        if (z8 && listR0.isEmpty()) {
            listR0 = r0(context, wm, c1804p0, false, false);
        }
        if (!listR0.isEmpty()) {
            if (c1804p0.f20369H == 0) {
                PM pm = (PM) listR0.get(0);
                boolean zC = pm.c(c1804p0);
                if (!zC) {
                    int i10 = 1;
                    while (true) {
                        if (i10 >= listR0.size()) {
                            z7 = true;
                            break;
                        }
                        PM pm2 = (PM) listR0.get(i10);
                        if (pm2.c(c1804p0)) {
                            pm = pm2;
                            z7 = false;
                            zC = true;
                            break;
                        }
                        i10++;
                    }
                } else {
                    z7 = true;
                    break;
                }
                int i11 = true != zC ? 3 : 4;
                int i12 = true != pm.d(c1804p0) ? 8 : 16;
                int i13 = true != pm.f15381g ? 0 : 64;
                int i14 = true != z7 ? 0 : 128;
                if (Et.f13234a >= 26 && "video/dolby-vision".equals(c1804p0.f20383m) && !AbstractC1491j.a(context)) {
                    i14 = 256;
                }
                if (zC) {
                    List listR1 = r0(context, wm, c1804p0, z8, true);
                    if (!listR1.isEmpty()) {
                        Pattern pattern = AbstractC1154cN.f18220a;
                        ArrayList arrayList = new ArrayList(listR1);
                        Collections.sort(arrayList, new XM(new Xu(c1804p0, 28)));
                        PM pm3 = (PM) arrayList.get(0);
                        if (pm3.c(c1804p0) && pm3.d(c1804p0)) {
                            i9 = 32;
                        }
                    }
                }
                return i11 | i12 | i9 | i13 | i14;
            }
            i8 = 2;
        }
        return i8 | 128;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final C1203dK U(PM pm, C1804p0 c1804p0, C1804p0 c1804p1) {
        int i8;
        int i9;
        C1203dK c1203dKA = pm.a(c1804p0, c1804p1);
        A2.i iVar = this.f19548D0;
        iVar.getClass();
        int i10 = c1804p1.f20389s;
        int i11 = iVar.f630a;
        int i12 = c1203dKA.f18321e;
        if (i10 > i11 || c1804p1.f20390t > iVar.f631b) {
            i12 |= 256;
        }
        if (t0(pm, c1804p1) > iVar.f632c) {
            i12 |= 64;
        }
        if (i12 != 0) {
            i9 = i12;
            i8 = 0;
        } else {
            i8 = c1203dKA.f18320d;
            i9 = 0;
        }
        return new C1203dK(pm.f15375a, c1804p0, c1804p1, i8, i9);
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final C1203dK V(C0871Om c0871Om) {
        C1203dK c1203dKV = super.V(c0871Om);
        C1804p0 c1804p0 = (C1804p0) c0871Om.f15196H;
        c1804p0.getClass();
        C2218x c2218x = this.f19577z0;
        Handler handler = (Handler) c2218x.f21779H;
        if (handler != null) {
            handler.post(new K.a(c2218x, c1804p0, c1203dKV, 17, 0));
        }
        return c1203dKV;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final KM Y(PM pm, C1804p0 c1804p0, float f8) {
        int iMax;
        int iMax2;
        C1928rL c1928rL;
        int i8;
        int i9;
        Point point;
        int i10;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int i11;
        Pair pairA;
        int iS0;
        C1804p0[] c1804p0Arr = this.f17875j;
        c1804p0Arr.getClass();
        int length = c1804p0Arr.length;
        int iT0 = t0(pm, c1804p0);
        float f9 = c1804p0.f20391u;
        C1928rL c1928rL2 = c1804p0.f20396z;
        int i12 = c1804p0.f20390t;
        int i13 = c1804p0.f20389s;
        if (length == 1) {
            if (iT0 != -1 && (iS0 = s0(pm, c1804p0)) != -1) {
                iT0 = Math.min((int) (iT0 * 1.5f), iS0);
            }
            c1928rL = c1928rL2;
            iMax = i12;
            i8 = iMax;
            iMax2 = i13;
            i9 = iMax2;
        } else {
            iMax = i12;
            iMax2 = i13;
            int i14 = 0;
            boolean z7 = false;
            while (i14 < length) {
                C1804p0 c1804p1 = c1804p0Arr[i14];
                C1804p0[] c1804p0Arr2 = c1804p0Arr;
                if (c1928rL2 != null && c1804p1.f20396z == null) {
                    K k8 = new K(c1804p1);
                    k8.f14284y = c1928rL2;
                    c1804p1 = new C1804p0(k8);
                }
                if (pm.a(c1804p0, c1804p1).f18320d != 0) {
                    int i15 = c1804p1.f20390t;
                    int i16 = c1804p1.f20389s;
                    z7 |= i16 == -1 || i15 == -1;
                    iMax2 = Math.max(iMax2, i16);
                    iMax = Math.max(iMax, i15);
                    iT0 = Math.max(iT0, t0(pm, c1804p1));
                }
                i14++;
                c1804p0Arr = c1804p0Arr2;
                length = length;
            }
            if (z7) {
                Zo.f("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax2 + "x" + iMax);
                boolean z8 = i12 > i13;
                int i17 = z8 ? i12 : i13;
                int i18 = true == z8 ? i13 : i12;
                int[] iArr = f19542e1;
                c1928rL = c1928rL2;
                i8 = i12;
                int i19 = 0;
                while (true) {
                    Point pointF = null;
                    if (i19 < 9) {
                        float f10 = i18;
                        i9 = i13;
                        float f11 = i17;
                        int i20 = iArr[i19];
                        int[] iArr2 = iArr;
                        float f12 = i20;
                        if (i20 > i17 && (i10 = (int) ((f10 / f11) * f12)) > i18) {
                            int i21 = true != z8 ? i20 : i10;
                            if (true != z8) {
                                i20 = i10;
                            }
                            MediaCodecInfo.CodecCapabilities codecCapabilities = pm.f15378d;
                            if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
                                pointF = PM.f(videoCapabilities, i21, i20);
                            }
                            point = pointF;
                            if (point != null) {
                                if (pm.e(point.x, point.y, f9)) {
                                    break;
                                }
                            }
                            i19++;
                            i13 = i9;
                            iArr = iArr2;
                            z8 = z8;
                        }
                    } else {
                        i9 = i13;
                    }
                    point = null;
                    break;
                }
                if (point != null) {
                    iMax2 = Math.max(iMax2, point.x);
                    iMax = Math.max(iMax, point.y);
                    K k9 = new K(c1804p0);
                    k9.f14277r = iMax2;
                    k9.f14278s = iMax;
                    iT0 = Math.max(iT0, s0(pm, new C1804p0(k9)));
                    Zo.f("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax2 + "x" + iMax);
                }
            } else {
                c1928rL = c1928rL2;
                i8 = i12;
                i9 = i13;
            }
        }
        this.f19548D0 = new A2.i(iMax2, iMax, iT0);
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", pm.f15377c);
        mediaFormat.setInteger("width", i9);
        mediaFormat.setInteger("height", i8);
        p113o3.r.w(mediaFormat, c1804p0.f20386p);
        if (f9 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f9);
        }
        p113o3.r.r(mediaFormat, "rotation-degrees", c1804p0.f20392v);
        if (c1928rL != null) {
            C1928rL c1928rL3 = c1928rL;
            p113o3.r.r(mediaFormat, "color-transfer", c1928rL3.f20715c);
            p113o3.r.r(mediaFormat, "color-standard", c1928rL3.f20713a);
            p113o3.r.r(mediaFormat, "color-range", c1928rL3.f20714b);
            byte[] bArr = c1928rL3.f20716d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(c1804p0.f20383m) && (pairA = AbstractC1154cN.a(c1804p0)) != null) {
            p113o3.r.r(mediaFormat, "profile", ((Integer) pairA.first).intValue());
        }
        mediaFormat.setInteger("max-width", iMax2);
        mediaFormat.setInteger("max-height", iMax);
        p113o3.r.r(mediaFormat, "max-input-size", iT0);
        int i22 = Et.f13234a;
        if (i22 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f8 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f8);
            }
        }
        if (this.f19545A0) {
            mediaFormat.setInteger("no-post-process", 1);
            i11 = 0;
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            i11 = 0;
        }
        if (i22 >= 35) {
            mediaFormat.setInteger("importance", Math.max(i11, -this.f19569Y0));
        }
        Surface surfaceQ0 = q0(pm);
        C1285f c1285f = this.f19551G0;
        if (c1285f != null && !Et.d(c1285f.f18631a)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return new KM(pm, mediaFormat, c1804p0, surfaceQ0, null);
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final ArrayList Z(WM wm, C1804p0 c1804p0) {
        List listR0 = r0(this.f19575x0, wm, c1804p0, false, false);
        Pattern pattern = AbstractC1154cN.f18220a;
        ArrayList arrayList = new ArrayList(listR0);
        Collections.sort(arrayList, new XM(new Xu(c1804p0, 28)));
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.TK
    public final void b(int i8, Object obj) {
        Handler handler;
        C1699n c1699n = this.f19546B0;
        if (i8 == 1) {
            Surface surface = obj instanceof Surface ? (Surface) obj : null;
            Surface surface2 = this.f19554J0;
            C2218x c2218x = this.f19577z0;
            if (surface2 == surface) {
                if (surface != null) {
                    C2043th c2043th = this.f19568X0;
                    if (c2043th != null) {
                        c2218x.p(c2043th);
                    }
                    Surface surface3 = this.f19554J0;
                    if (surface3 == null || !this.f19557M0 || (handler = (Handler) c2218x.f21779H) == null) {
                        return;
                    }
                    handler.post(new RunnableC2114v(c2218x, surface3, SystemClock.elapsedRealtime()));
                    return;
                }
                return;
            }
            this.f19554J0 = surface;
            if (this.f19551G0 == null) {
                U0.I i9 = c1699n.f20032b;
                if (i9.f6655b != surface) {
                    i9.f();
                    i9.f6655b = surface;
                    i9.h(true);
                }
                c1699n.f(1);
            }
            this.f19557M0 = false;
            int i10 = this.f17873h;
            MM mm = this.f17013G;
            if (mm != null && this.f19551G0 == null) {
                PM pm = this.f17020N;
                pm.getClass();
                boolean z7 = this.f19554J0 != null || (Et.f13234a >= 35 && pm.f15382h) || v0(pm);
                int i11 = Et.f13234a;
                if (i11 < 23 || !z7 || this.f19549E0) {
                    H();
                    D();
                } else {
                    Surface surfaceQ0 = q0(pm);
                    if (i11 >= 23 && surfaceQ0 != null) {
                        mm.b(surfaceQ0);
                    } else {
                        if (i11 < 35) {
                            throw new IllegalStateException();
                        }
                        mm.zzi();
                    }
                }
            }
            if (surface == null) {
                this.f19568X0 = null;
                C1285f c1285f = this.f19551G0;
                if (c1285f != null) {
                    C1337g c1337g = c1285f.f18643m;
                    c1337g.getClass();
                    Br.f12504c.getClass();
                    c1337g.f18867j = null;
                    return;
                }
                return;
            }
            C2043th c2043th2 = this.f19568X0;
            if (c2043th2 != null) {
                c2218x.p(c2043th2);
            }
            if (i10 == 2) {
                C1285f c1285f2 = this.f19551G0;
                if (c1285f2 == null) {
                    c1699n.f20039i = true;
                    c1699n.f20038h = -9223372036854775807L;
                    return;
                } else {
                    C1699n c1699n2 = c1285f2.f18643m.f18859b;
                    c1699n2.f20039i = true;
                    c1699n2.f20038h = -9223372036854775807L;
                    return;
                }
            }
            return;
        }
        if (i8 == 7) {
            obj.getClass();
            C2031tK c2031tK = (C2031tK) obj;
            this.f19571a1 = c2031tK;
            C1285f c1285f3 = this.f19551G0;
            if (c1285f3 != null) {
                c1285f3.f18643m.f18865h = c2031tK;
                return;
            }
            return;
        }
        if (i8 == 10) {
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            if (this.f19570Z0 != iIntValue) {
                this.f19570Z0 = iIntValue;
                return;
            }
            return;
        }
        if (i8 == 16) {
            obj.getClass();
            this.f19569Y0 = ((Integer) obj).intValue();
            MM mm2 = this.f17013G;
            if (mm2 == null || Et.f13234a < 35) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.f19569Y0));
            mm2.i(bundle);
            return;
        }
        if (i8 == 4) {
            obj.getClass();
            int iIntValue2 = ((Integer) obj).intValue();
            this.f19558N0 = iIntValue2;
            MM mm3 = this.f17013G;
            if (mm3 != null) {
                mm3.e(iIntValue2);
                return;
            }
            return;
        }
        if (i8 == 5) {
            obj.getClass();
            int iIntValue3 = ((Integer) obj).intValue();
            this.f19559O0 = iIntValue3;
            C1285f c1285f4 = this.f19551G0;
            if (c1285f4 != null) {
                U0.I i12 = c1285f4.f18643m.f18859b.f20032b;
                if (i12.f6660g == iIntValue3) {
                    return;
                }
                i12.f6660g = iIntValue3;
                i12.h(true);
                return;
            }
            U0.I i13 = c1699n.f20032b;
            if (i13.f6660g == iIntValue3) {
                return;
            }
            i13.f6660g = iIntValue3;
            i13.h(true);
            return;
        }
        if (i8 == 13) {
            obj.getClass();
            List list = (List) obj;
            this.f19553I0 = list;
            C1285f c1285f5 = this.f19551G0;
            if (c1285f5 != null) {
                ArrayList arrayList = c1285f5.f18632b;
                if (arrayList.equals(list)) {
                    return;
                }
                arrayList.clear();
                arrayList.addAll(list);
                c1285f5.a();
                return;
            }
            return;
        }
        if (i8 != 14) {
            if (i8 == 11) {
                this.f17010D = (C2291yK) obj;
                return;
            }
            return;
        }
        obj.getClass();
        Br br = (Br) obj;
        if (br.f12505a == 0 || br.f12506b == 0) {
            return;
        }
        this.f19556L0 = br;
        C1285f c1285f6 = this.f19551G0;
        if (c1285f6 != null) {
            Surface surface4 = this.f19554J0;
            p113o3.r.x(surface4);
            c1285f6.e(surface4, br);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void c() {
        C1285f c1285f = this.f19551G0;
        if (c1285f == null || !this.f19576y0) {
            return;
        }
        C1337g c1337g = c1285f.f18643m;
        if (c1337g.f18869l == 2) {
            return;
        }
        C2054ts c2054ts = c1337g.f18866i;
        if (c2054ts != null) {
            c2054ts.f21154a.removeCallbacksAndMessages(null);
        }
        c1337g.f18867j = null;
        c1337g.f18869l = 2;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void c0(VJ vj) {
        if (this.f19550F0) {
            ByteBuffer byteBuffer = vj.f16996h;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b8 = byteBuffer.get();
                short s7 = byteBuffer.getShort();
                short s8 = byteBuffer.getShort();
                byte b9 = byteBuffer.get();
                byte b10 = byteBuffer.get();
                byteBuffer.position(0);
                if (b8 == -75 && s7 == 60 && s8 == 1 && b9 == 4) {
                    if (b10 == 0 || b10 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        MM mm = this.f17013G;
                        mm.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        mm.i(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void d() {
        try {
            try {
                W();
                H();
                this.f17059v0 = null;
                this.f19552H0 = false;
                this.f19572b1 = -9223372036854775807L;
                C1595l c1595l = this.f19555K0;
                if (c1595l != null) {
                    c1595l.release();
                    this.f19555K0 = null;
                }
            } catch (Throwable th) {
                this.f17059v0 = null;
                throw th;
            }
        } catch (Throwable th2) {
            this.f19552H0 = false;
            this.f19572b1 = -9223372036854775807L;
            C1595l c1595l2 = this.f19555K0;
            if (c1595l2 != null) {
                c1595l2.release();
                this.f19555K0 = null;
            }
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void d0(Exception exc) {
        Zo.d("MediaCodecVideoRenderer", "Video codec error", exc);
        C2218x c2218x = this.f19577z0;
        Handler handler = (Handler) c2218x.f21779H;
        if (handler != null) {
            handler.post(new RunnableC0755Ha(2, c2218x, exc));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void e() {
        this.f19561Q0 = 0;
        this.f17872g.getClass();
        this.f19560P0 = SystemClock.elapsedRealtime();
        this.f19564T0 = 0L;
        this.f19565U0 = 0;
        C1285f c1285f = this.f19551G0;
        if (c1285f != null) {
            c1285f.f18643m.f18859b.b();
        } else {
            this.f19546B0.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void e0(String str, long j8, long j9) {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        C2218x c2218x = this.f19577z0;
        Handler handler = (Handler) c2218x.f21779H;
        if (handler != null) {
            handler.post(new RunnableC2010t(c2218x, str, j8, j9, 0));
        }
        this.f19549E0 = p0(str);
        PM pm = this.f17020N;
        pm.getClass();
        boolean z7 = false;
        if (Et.f13234a >= 29 && "video/x-vnd.on2.vp9".equals(pm.f15376b)) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = pm.f15378d;
            if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
                if (codecProfileLevel.profile == 16384) {
                    z7 = true;
                    break;
                }
            }
        }
        this.f19550F0 = z7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void f() {
        int i8 = this.f19561Q0;
        C2218x c2218x = this.f19577z0;
        if (i8 > 0) {
            this.f17872g.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j8 = jElapsedRealtime - this.f19560P0;
            int i9 = this.f19561Q0;
            Handler handler = (Handler) c2218x.f21779H;
            if (handler != null) {
                handler.post(new RunnableC2062u(c2218x, i9, j8));
            }
            this.f19561Q0 = 0;
            this.f19560P0 = jElapsedRealtime;
        }
        int i10 = this.f19565U0;
        if (i10 != 0) {
            long j9 = this.f19564T0;
            Handler handler2 = (Handler) c2218x.f21779H;
            if (handler2 != null) {
                handler2.post(new RunnableC2062u(c2218x, j9, i10));
            }
            this.f19564T0 = 0L;
            this.f19565U0 = 0;
        }
        C1285f c1285f = this.f19551G0;
        if (c1285f != null) {
            c1285f.f18643m.f18859b.c();
        } else {
            this.f19546B0.c();
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void f0(String str) {
        C2218x c2218x = this.f19577z0;
        Handler handler = (Handler) c2218x.f21779H;
        if (handler != null) {
            handler.post(new RunnableC0755Ha(3, c2218x, str));
        }
    }

    @Override // com.google.android.gms.internal.ads.VM, com.google.android.gms.internal.ads.AbstractC1048aK
    public final void g(C1804p0[] c1804p0Arr, long j8, long j9, C2190wN c2190wN) {
        super.g(c1804p0Arr, j8, j9, c2190wN);
        if (this.f19572b1 == -9223372036854775807L) {
            this.f19572b1 = j8;
        }
        AbstractC0774Ie abstractC0774Ie = this.f17881p;
        if (abstractC0774Ie.o()) {
            this.f19573c1 = -9223372036854775807L;
        } else {
            this.f19573c1 = abstractC0774Ie.n(c2190wN.f21690a, new C1521je()).f19468d;
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void g0(C1804p0 c1804p0, MediaFormat mediaFormat) {
        MM mm = this.f17013G;
        if (mm != null) {
            mm.e(this.f19558N0);
        }
        mediaFormat.getClass();
        boolean z7 = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        int integer = z7 ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer2 = z7 ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        float f8 = c1804p0.f20393w;
        int i8 = c1804p0.f20392v;
        if (i8 == 90 || i8 == 270) {
            f8 = 1.0f / f8;
            int i9 = integer2;
            integer2 = integer;
            integer = i9;
        }
        this.f19567W0 = new C2043th(f8, integer, integer2);
        C1285f c1285f = this.f19551G0;
        if (c1285f == null || !this.f19574d1) {
            this.f19546B0.d(c1804p0.f20391u);
        } else {
            K kB = c1804p0.b();
            kB.f14277r = integer;
            kB.f14278s = integer2;
            kB.f14281v = f8;
            C1804p0 c1804p1 = new C1804p0(kB);
            p113o3.r.M(false);
            c1285f.f18643m.f18859b.d(c1804p1.f20391u);
            c1285f.f18634d = c1804p1;
            if (c1285f.f18639i) {
                p113o3.r.M(c1285f.f18638h != -9223372036854775807L);
                c1285f.f18640j = c1285f.f18638h;
            } else {
                c1285f.a();
                c1285f.f18639i = true;
                c1285f.f18640j = -9223372036854775807L;
            }
        }
        this.f19574d1 = false;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void h0() {
        C1285f c1285f = this.f19551G0;
        if (c1285f != null) {
            UM um = this.f17051r0;
            c1285f.f(um.f16840b, um.f16841c, -this.f19572b1, this.f17877l);
        } else {
            this.f19546B0.f(2);
        }
        this.f19574d1 = true;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final boolean j0(long j8, long j9, MM mm, ByteBuffer byteBuffer, int i8, int i9, int i10, long j10, boolean z7, boolean z8, C1804p0 c1804p0) throws C1512jK {
        boolean z9;
        mm.getClass();
        UM um = this.f17051r0;
        long j11 = j10 - um.f16841c;
        C1285f c1285f = this.f19551G0;
        if (c1285f == null) {
            int iA = this.f19546B0.a(j10, j8, j9, um.f16840b, z8, this.f19547C0);
            if (iA == 4) {
                return false;
            }
            if (z7 && !z8) {
                m0(mm, i8);
                return true;
            }
            Surface surface = this.f19554J0;
            U0.C c8 = this.f19547C0;
            if (surface == null) {
                if (c8.f6627a >= 30000) {
                    return false;
                }
                m0(mm, i8);
                o0(c8.f6627a);
                return true;
            }
            if (iA == 0) {
                this.f17872g.getClass();
                u0(mm, i8, System.nanoTime());
                o0(c8.f6627a);
                return true;
            }
            if (iA == 1) {
                long j12 = c8.f6628b;
                long j13 = c8.f6627a;
                if (j12 == this.f19566V0) {
                    m0(mm, i8);
                } else {
                    u0(mm, i8, j12);
                }
                o0(j13);
                this.f19566V0 = j12;
                return true;
            }
            if (iA == 2) {
                Trace.beginSection("dropVideoBuffer");
                mm.O(i8);
                Trace.endSection();
                n0(0, 1);
                o0(c8.f6627a);
                return true;
            }
            if (iA != 3) {
                if (iA == 5) {
                    return false;
                }
                throw new IllegalStateException(String.valueOf(iA));
            }
            m0(mm, i8);
            o0(c8.f6627a);
            return true;
        }
        try {
            z9 = false;
            try {
                return c1285f.g(j10 + (-this.f19572b1), z8, j8, j9, new C1441i(this, mm, i8, j11));
            } catch (C2322z e8) {
                e = e8;
                throw s(7001, e.f22101G, e, z9);
            }
        } catch (C2322z e9) {
            e = e9;
            z9 = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.VM, com.google.android.gms.internal.ads.AbstractC1048aK
    public final void k(float f8, float f9) {
        super.k(f8, f9);
        C1285f c1285f = this.f19551G0;
        if (c1285f == null) {
            C1699n c1699n = this.f19546B0;
            if (f8 == c1699n.f20040j) {
                return;
            }
            c1699n.f20040j = f8;
            U0.I i8 = c1699n.f20032b;
            i8.f6659f = f8;
            i8.f6663j = 0L;
            i8.f6666m = -1L;
            i8.f6664k = -1L;
            i8.h(false);
            return;
        }
        C1958s c1958s = c1285f.f18643m.f18860c;
        c1958s.getClass();
        p113o3.r.J(f8 > 0.0f);
        C1699n c1699n2 = c1958s.f20815a;
        if (f8 == c1699n2.f20040j) {
            return;
        }
        c1699n2.f20040j = f8;
        U0.I i9 = c1699n2.f20032b;
        i9.f6659f = f8;
        i9.f6663j = 0L;
        i9.f6666m = -1L;
        i9.f6664k = -1L;
        i9.h(false);
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void l0() {
        int i8 = Et.f13234a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final String m() {
        return "MediaCodecVideoRenderer";
    }

    public final void m0(MM mm, int i8) {
        Trace.beginSection("skipVideoBuffer");
        mm.O(i8);
        Trace.endSection();
        this.f17049q0.f18213f++;
    }

    @Override // com.google.android.gms.internal.ads.VM, com.google.android.gms.internal.ads.AbstractC1048aK
    public final void n(long j8, long j9) throws C1512jK {
        super.n(j8, j9);
        C1285f c1285f = this.f19551G0;
        if (c1285f != null) {
            try {
                c1285f.d(j8, j9);
            } catch (C2322z e8) {
                throw s(7001, e8.f22101G, e8, false);
            }
        }
    }

    public final void n0(int i8, int i9) {
        C1151cK c1151cK = this.f17049q0;
        c1151cK.f18215h += i8;
        int i10 = i8 + i9;
        c1151cK.f18214g += i10;
        this.f19561Q0 += i10;
        int i11 = this.f19562R0 + i10;
        this.f19562R0 = i11;
        c1151cK.f18216i = Math.max(i11, c1151cK.f18216i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final boolean o() {
        return this.f17047o0 && this.f19551G0 == null;
    }

    public final void o0(long j8) {
        C1151cK c1151cK = this.f17049q0;
        c1151cK.f18218k += j8;
        c1151cK.f18219l++;
        this.f19564T0 += j8;
        this.f19565U0++;
    }

    @Override // com.google.android.gms.internal.ads.VM, com.google.android.gms.internal.ads.AbstractC1048aK
    public final boolean p() {
        boolean zP = super.p();
        C1285f c1285f = this.f19551G0;
        if (c1285f != null) {
            return c1285f.f18643m.f18860c.f20815a.e(false);
        }
        if (zP && (this.f17013G == null || this.f19554J0 == null)) {
            return true;
        }
        return this.f19546B0.e(zP);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0050  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:47:0x008c  */
    /* JADX WARN: Code duplicated, block: B:50:0x0097  */
    /* JADX WARN: Code duplicated, block: B:52:0x009b  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:61:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final Surface q0(PM pm) {
        boolean z7;
        HandlerThreadC0346l handlerThreadC0346l;
        int i8;
        RuntimeException runtimeException;
        Error error;
        boolean z8 = false;
        if (this.f19551G0 != null) {
            p113o3.r.M(false);
            p113o3.r.x(null);
            throw null;
        }
        Surface surface = this.f19554J0;
        if (surface != null) {
            return surface;
        }
        if (Et.f13234a >= 35 && pm.f15382h) {
            return null;
        }
        p113o3.r.M(v0(pm));
        C1595l c1595l = this.f19555K0;
        if (c1595l != null) {
            if (c1595l.f19681G != pm.f15380f && c1595l != null) {
                c1595l.release();
                this.f19555K0 = null;
            }
        }
        if (this.f19555K0 == null) {
            Context context = this.f19575x0;
            boolean z9 = pm.f15380f;
            int i9 = 1;
            if (z9) {
                if (!C1595l.a(context)) {
                    z7 = false;
                }
                p113o3.r.M(z7);
                handlerThreadC0346l = new HandlerThreadC0346l(i9);
                if (z9) {
                    i8 = C1595l.f19679J;
                } else {
                    i8 = 0;
                }
                handlerThreadC0346l.start();
                Handler handler = new Handler(handlerThreadC0346l.getLooper(), handlerThreadC0346l);
                handlerThreadC0346l.f6814H = handler;
                handlerThreadC0346l.f6817K = new RunnableC0797Jm(handler);
                synchronized (handlerThreadC0346l) {
                    handlerThreadC0346l.f6814H.obtainMessage(1, i8, 0).sendToTarget();
                    while (((C1595l) handlerThreadC0346l.f6818L) == null && handlerThreadC0346l.f6816J == null && handlerThreadC0346l.f6815I == null) {
                        try {
                            handlerThreadC0346l.wait();
                        } catch (InterruptedException unused) {
                            z8 = true;
                        }
                    }
                }
                if (z8) {
                    Thread.currentThread().interrupt();
                }
                runtimeException = handlerThreadC0346l.f6816J;
                if (runtimeException == null) {
                    throw runtimeException;
                }
                error = handlerThreadC0346l.f6815I;
                if (error == null) {
                    throw error;
                }
                C1595l c1595l2 = (C1595l) handlerThreadC0346l.f6818L;
                c1595l2.getClass();
                this.f19555K0 = c1595l2;
            } else {
                int i10 = C1595l.f19679J;
            }
            z7 = true;
            p113o3.r.M(z7);
            handlerThreadC0346l = new HandlerThreadC0346l(i9);
            if (z9) {
                i8 = C1595l.f19679J;
            } else {
                i8 = 0;
            }
            handlerThreadC0346l.start();
            Handler handler2 = new Handler(handlerThreadC0346l.getLooper(), handlerThreadC0346l);
            handlerThreadC0346l.f6814H = handler2;
            handlerThreadC0346l.f6817K = new RunnableC0797Jm(handler2);
            synchronized (handlerThreadC0346l) {
                handlerThreadC0346l.f6814H.obtainMessage(1, i8, 0).sendToTarget();
                while (((C1595l) handlerThreadC0346l.f6818L) == null) {
                    handlerThreadC0346l.wait();
                }
                if (z8) {
                    Thread.currentThread().interrupt();
                }
                runtimeException = handlerThreadC0346l.f6816J;
                if (runtimeException == null) {
                    throw runtimeException;
                }
                error = handlerThreadC0346l.f6815I;
                if (error == null) {
                    throw error;
                }
                C1595l c1595l3 = (C1595l) handlerThreadC0346l.f6818L;
                c1595l3.getClass();
                this.f19555K0 = c1595l3;
            }
        }
        return this.f19555K0;
    }

    public final void u0(MM mm, int i8, long j8) {
        Surface surface;
        Trace.beginSection("releaseOutputBuffer");
        mm.d(i8, j8);
        Trace.endSection();
        this.f17049q0.f18212e++;
        this.f19562R0 = 0;
        if (this.f19551G0 == null) {
            C2043th c2043th = this.f19567W0;
            boolean zEquals = c2043th.equals(C2043th.f21089d);
            C2218x c2218x = this.f19577z0;
            if (!zEquals && !c2043th.equals(this.f19568X0)) {
                this.f19568X0 = c2043th;
                c2218x.p(c2043th);
            }
            C1699n c1699n = this.f19546B0;
            int i9 = c1699n.f20034d;
            c1699n.f20034d = 3;
            ((Nr) c1699n.f20041k).getClass();
            c1699n.f20036f = Et.t(SystemClock.elapsedRealtime());
            if (i9 == 3 || (surface = this.f19554J0) == null) {
                return;
            }
            Handler handler = (Handler) c2218x.f21779H;
            if (handler != null) {
                handler.post(new RunnableC2114v(c2218x, surface, SystemClock.elapsedRealtime()));
            }
            this.f19557M0 = true;
        }
    }

    public final boolean v0(PM pm) {
        if (Et.f13234a < 23 || p0(pm.f15375a)) {
            return false;
        }
        return !pm.f15380f || C1595l.a(this.f19575x0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void x() {
        C1285f c1285f = this.f19551G0;
        if (c1285f != null) {
            C1699n c1699n = c1285f.f18643m.f18859b;
            if (c1699n.f20034d == 0) {
                c1699n.f20034d = 1;
                return;
            }
            return;
        }
        C1699n c1699n2 = this.f19546B0;
        if (c1699n2.f20034d == 0) {
            c1699n2.f20034d = 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.VM, com.google.android.gms.internal.ads.AbstractC1048aK
    public final void y() {
        C2218x c2218x = this.f19577z0;
        this.f19568X0 = null;
        this.f19573c1 = -9223372036854775807L;
        C1285f c1285f = this.f19551G0;
        if (c1285f != null) {
            c1285f.f18643m.f18859b.f(0);
        } else {
            this.f19546B0.f(0);
        }
        this.f19557M0 = false;
        try {
            super.y();
            C1151cK c1151cK = this.f17049q0;
            c2218x.getClass();
            synchronized (c1151cK) {
            }
            Handler handler = (Handler) c2218x.f21779H;
            if (handler != null) {
                handler.post(new RunnableC2166w(c2218x, c1151cK, 1));
            }
        } finally {
            c2218x.i(this.f17049q0);
            c2218x.p(C2043th.f21089d);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void z(boolean z7, boolean z8) {
        this.f17049q0 = new C1151cK();
        u();
        C2218x c2218x = this.f19577z0;
        C1151cK c1151cK = this.f17049q0;
        Handler handler = (Handler) c2218x.f21779H;
        int i8 = 0;
        if (handler != null) {
            handler.post(new RunnableC2166w(c2218x, c1151cK, i8));
        }
        boolean z9 = this.f19552H0;
        boolean z10 = true;
        C1699n c1699n = this.f19546B0;
        if (!z9) {
            if (this.f19553I0 != null && this.f19551G0 == null) {
                p000a.x xVar = new p000a.x();
                xVar.f8620b = this.f19575x0.getApplicationContext();
                xVar.f8621c = c1699n;
                xVar.f8624f = InterfaceC1840pl.f20481a;
                InterfaceC1840pl interfaceC1840pl = this.f17872g;
                interfaceC1840pl.getClass();
                xVar.f8624f = interfaceC1840pl;
                p113o3.r.M(!xVar.f8619a);
                if (((C1182d) xVar.f8623e) == null) {
                    if (((InterfaceC0949Ug) xVar.f8622d) == null) {
                        xVar.f8622d = new C1130c();
                    }
                    xVar.f8623e = new C1182d((InterfaceC0949Ug) xVar.f8622d);
                }
                C1337g c1337g = new C1337g(xVar);
                xVar.f8619a = true;
                this.f19551G0 = c1337g.f18858a;
            }
            this.f19552H0 = true;
        }
        C1285f c1285f = this.f19551G0;
        if (c1285f == null) {
            InterfaceC1840pl interfaceC1840pl2 = this.f17872g;
            interfaceC1840pl2.getClass();
            c1699n.f20041k = interfaceC1840pl2;
            c1699n.f20034d = z8 ? 1 : 0;
            return;
        }
        K4 k8 = new K4((Object) this, (int) (z10 ? 1 : 0));
        XB xb = XB.f17385G;
        c1285f.f18641k = k8;
        c1285f.f18642l = xb;
        C2031tK c2031tK = this.f19571a1;
        if (c2031tK != null) {
            c1285f.f18643m.f18865h = c2031tK;
        }
        if (this.f19554J0 != null && !this.f19556L0.equals(Br.f12504c)) {
            this.f19551G0.e(this.f19554J0, this.f19556L0);
        }
        C1285f c1285f2 = this.f19551G0;
        int i9 = this.f19559O0;
        U0.I i10 = c1285f2.f18643m.f18859b.f20032b;
        if (i10.f6660g != i9) {
            i10.f6660g = i9;
            i10.h(true);
        }
        C1285f c1285f3 = this.f19551G0;
        float f8 = this.f17011E;
        C1958s c1958s = c1285f3.f18643m.f18860c;
        c1958s.getClass();
        p113o3.r.J(f8 > 0.0f);
        C1699n c1699n2 = c1958s.f20815a;
        if (f8 != c1699n2.f20040j) {
            c1699n2.f20040j = f8;
            U0.I i11 = c1699n2.f20032b;
            i11.f6659f = f8;
            i11.f6663j = 0L;
            i11.f6666m = -1L;
            i11.f6664k = -1L;
            i11.h(false);
        }
        List list = this.f19553I0;
        if (list != null) {
            C1285f c1285f4 = this.f19551G0;
            ArrayList arrayList = c1285f4.f18632b;
            if (!arrayList.equals(list)) {
                arrayList.clear();
                arrayList.addAll(list);
                c1285f4.a();
            }
        }
        this.f19551G0.f18643m.f18859b.f20034d = z8 ? 1 : 0;
    }
}
